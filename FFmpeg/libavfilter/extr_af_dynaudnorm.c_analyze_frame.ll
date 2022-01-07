; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_dynaudnorm.c_analyze_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_dynaudnorm.c_analyze_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i64, i64 }

@DBL_EPSILON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*)* @analyze_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_frame(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @perform_dc_correction(%struct.TYPE_7__* %13, i32* %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DBL_EPSILON, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @perform_compression(%struct.TYPE_7__* %23, i32* %24)
  br label %26

26:                                               ; preds = %22, %16
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %26
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call double @get_max_local_gain(%struct.TYPE_7__* %32, i32* %33, i32 -1)
  store double %34, double* %5, align 8
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %46, %31
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load double, double* %5, align 8
  %45 = call i32 @update_gain_history(%struct.TYPE_7__* %42, i32 %43, double %44)
  br label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %35

49:                                               ; preds = %35
  br label %69

50:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %65, %50
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call double @get_max_local_gain(%struct.TYPE_7__* %60, i32* %61, i32 %62)
  %64 = call i32 @update_gain_history(%struct.TYPE_7__* %58, i32 %59, double %63)
  br label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %51

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68, %49
  ret void
}

declare dso_local i32 @perform_dc_correction(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @perform_compression(%struct.TYPE_7__*, i32*) #1

declare dso_local double @get_max_local_gain(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @update_gain_history(%struct.TYPE_7__*, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
