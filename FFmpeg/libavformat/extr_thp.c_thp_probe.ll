; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_thp.c_thp_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_thp.c_thp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @thp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thp_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @AV_RL32(i64 %7)
  %9 = call i64 @MKTAG(i8 signext 84, i8 signext 72, i8 signext 80, i8 signext 0)
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 16
  %17 = call i32 @AV_RB32(i64 %16)
  %18 = call double @av_int2float(i32 %17)
  store double %18, double* %4, align 8
  %19 = load double, double* %4, align 8
  %20 = fcmp olt double %19, 1.000000e-01
  br i1 %20, label %28, label %21

21:                                               ; preds = %12
  %22 = load double, double* %4, align 8
  %23 = fcmp ogt double %22, 1.000000e+03
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load double, double* %4, align 8
  %26 = call i64 @isnan(double %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %21, %12
  %29 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %30 = sdiv i32 %29, 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %28, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @AV_RL32(i64) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local double @av_int2float(i32) #1

declare dso_local i32 @AV_RB32(i64) #1

declare dso_local i64 @isnan(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
