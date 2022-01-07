; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_query_ranges.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_av_opt_query_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_6__**, i8*, i8*, i32)* }

@AV_OPT_MULTI_COMPONENT_RANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_opt_query_ranges(%struct.TYPE_6__** %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32 (%struct.TYPE_6__**, i8*, i8*, i32)*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_7__**
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %10, align 8
  store i32 (%struct.TYPE_6__**, i8*, i8*, i32)* null, i32 (%struct.TYPE_6__**, i8*, i8*, i32)** %11, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 3410688
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32 (%struct.TYPE_6__**, i8*, i8*, i32)*, i32 (%struct.TYPE_6__**, i8*, i8*, i32)** %21, align 8
  store i32 (%struct.TYPE_6__**, i8*, i8*, i32)* %22, i32 (%struct.TYPE_6__**, i8*, i8*, i32)** %11, align 8
  br label %23

23:                                               ; preds = %19, %4
  %24 = load i32 (%struct.TYPE_6__**, i8*, i8*, i32)*, i32 (%struct.TYPE_6__**, i8*, i8*, i32)** %11, align 8
  %25 = icmp ne i32 (%struct.TYPE_6__**, i8*, i8*, i32)* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 (%struct.TYPE_6__**, i8*, i8*, i32)* @av_opt_query_ranges_default, i32 (%struct.TYPE_6__**, i8*, i8*, i32)** %11, align 8
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32 (%struct.TYPE_6__**, i8*, i8*, i32)*, i32 (%struct.TYPE_6__**, i8*, i8*, i32)** %11, align 8
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 %28(%struct.TYPE_6__** %29, i8* %30, i8* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @AV_OPT_MULTI_COMPONENT_RANGE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 1, i32* %9, align 4
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %27
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @av_opt_query_ranges_default(%struct.TYPE_6__**, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
