; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_select.c_get_concatdec_select.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_select.c_get_concatdec_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"lavf.concatdec.start_time\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"lavf.concatdec.duration\00", align 1
@NAN = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_5__*, i64)* @get_concatdec_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_concatdec_select(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call %struct.TYPE_6__* @av_dict_get(i32* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call %struct.TYPE_6__* @av_dict_get(i32* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %8, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strtoll(i32 %23, i32* null, i32 10)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %20
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @strtoll(i32 %34, i32* null, i32 10)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = add nsw i64 %37, %38
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store double -1.000000e+00, double* %3, align 8
  br label %47

42:                                               ; preds = %31
  store double 0.000000e+00, double* %3, align 8
  br label %47

43:                                               ; preds = %28
  store double -1.000000e+00, double* %3, align 8
  br label %47

44:                                               ; preds = %20
  store double 0.000000e+00, double* %3, align 8
  br label %47

45:                                               ; preds = %2
  %46 = load double, double* @NAN, align 8
  store double %46, double* %3, align 8
  br label %47

47:                                               ; preds = %45, %44, %43, %42, %41
  %48 = load double, double* %3, align 8
  ret double %48
}

declare dso_local %struct.TYPE_6__* @av_dict_get(i32*, i8*, i32*, i32) #1

declare dso_local i64 @strtoll(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
