; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaadpcm.c_find_best_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaadpcm.c_find_best_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@DCA_ADPCM_COEFFS = common dso_local global i32 0, align 4
@DCA_ADPCM_VQCODEBOOK_SZ = common dso_local global i32 0, align 4
@ff_dca_adpcm_vb = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i32*, i32)* @find_best_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_best_filter(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [15 x i64], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i64 4611686018427387904, i64* %13, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %43, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @DCA_ADPCM_COEFFS, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %39, %22
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @DCA_ADPCM_COEFFS, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @calc_corr(i32* %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds [15 x i64], [15 x i64]* %14, i64 0, i64 %37
  store i64 %34, i64* %38, align 8
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %24

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %18

46:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %70, %46
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @DCA_ADPCM_VQCODEBOOK_SZ, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load i32*, i32** @ff_dca_adpcm_vb, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [15 x i64], [15 x i64]* %14, i64 0, i64 0
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @apply_filter(i32 %56, i64* %57, i32 %59)
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %13, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load i64, i64* %12, align 8
  store i64 %65, i64* %13, align 8
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %64, %51
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %7, align 8
  br label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %47

73:                                               ; preds = %47
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  ret i64 %75
}

declare dso_local i64 @calc_corr(i32*, i32, i32, i32) #1

declare dso_local i64 @apply_filter(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
