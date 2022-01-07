; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_metablock.c_ComputeDistanceCost.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_metablock.c_ComputeDistanceCost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64 }

@BROTLI_FALSE = common dso_local global i64 0, align 8
@BROTLI_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i64, %struct.TYPE_10__*, %struct.TYPE_10__*, double*)* @ComputeDistanceCost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ComputeDistanceCost(%struct.TYPE_9__* %0, i64 %1, %struct.TYPE_10__* %2, %struct.TYPE_10__* %3, double* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %10, align 8
  store double* %4, double** %11, align 8
  %20 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %20, i64* %13, align 8
  store double 0.000000e+00, double* %16, align 8
  %21 = call i32 @HistogramClearDistance(i32* %17)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %5
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i64, i64* @BROTLI_TRUE, align 8
  store i64 %38, i64* %13, align 8
  br label %39

39:                                               ; preds = %37, %29, %5
  store i64 0, i64* %12, align 8
  br label %40

40:                                               ; preds = %93, %39
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %96

44:                                               ; preds = %40
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %46
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %18, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %49 = call i64 @CommandCopyLen(%struct.TYPE_9__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %92

51:                                               ; preds = %44
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 128
  br i1 %55, label %56, label %92

56:                                               ; preds = %51
  %57 = load i64, i64* %13, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %14, align 4
  br label %83

63:                                               ; preds = %56
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = call i64 @CommandRestoreDistanceCode(%struct.TYPE_9__* %64, %struct.TYPE_10__* %65)
  store i64 %66, i64* %19, align 8
  %67 = load i64, i64* %19, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %73, i64* %6, align 8
  br label %102

74:                                               ; preds = %63
  %75 = load i64, i64* %19, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @PrefixEncodeCopyDistance(i64 %75, i64 %78, i64 %81, i32* %14, i64* %15)
  br label %83

83:                                               ; preds = %74, %59
  %84 = load i32, i32* %14, align 4
  %85 = and i32 %84, 1023
  %86 = call i32 @HistogramAddDistance(i32* %17, i32 %85)
  %87 = load i32, i32* %14, align 4
  %88 = ashr i32 %87, 10
  %89 = sitofp i32 %88 to double
  %90 = load double, double* %16, align 8
  %91 = fadd double %90, %89
  store double %91, double* %16, align 8
  br label %92

92:                                               ; preds = %83, %51, %44
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %12, align 8
  br label %40

96:                                               ; preds = %40
  %97 = call double @BrotliPopulationCostDistance(i32* %17)
  %98 = load double, double* %16, align 8
  %99 = fadd double %97, %98
  %100 = load double*, double** %11, align 8
  store double %99, double* %100, align 8
  %101 = load i64, i64* @BROTLI_TRUE, align 8
  store i64 %101, i64* %6, align 8
  br label %102

102:                                              ; preds = %96, %72
  %103 = load i64, i64* %6, align 8
  ret i64 %103
}

declare dso_local i32 @HistogramClearDistance(i32*) #1

declare dso_local i64 @CommandCopyLen(%struct.TYPE_9__*) #1

declare dso_local i64 @CommandRestoreDistanceCode(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @PrefixEncodeCopyDistance(i64, i64, i64, i32*, i64*) #1

declare dso_local i32 @HistogramAddDistance(i32*, i32) #1

declare dso_local double @BrotliPopulationCostDistance(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
