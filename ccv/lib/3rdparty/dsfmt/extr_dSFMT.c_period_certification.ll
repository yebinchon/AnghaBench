; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/dsfmt/extr_dSFMT.c_period_certification.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/dsfmt/extr_dSFMT.c_period_certification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@DSFMT_PCV1 = common dso_local global i32 0, align 4
@DSFMT_PCV2 = common dso_local global i32 0, align 4
@DSFMT_N = common dso_local global i64 0, align 8
@DSFMT_FIX1 = common dso_local global i32 0, align 4
@DSFMT_FIX2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @period_certification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @period_certification(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %10 = load i32, i32* @DSFMT_PCV1, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* @DSFMT_PCV2, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i64, i64* @DSFMT_N, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DSFMT_FIX1, align 4
  %23 = xor i32 %21, %22
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i64, i64* @DSFMT_N, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DSFMT_FIX2, align 4
  %35 = xor i32 %33, %34
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %38, %40
  store i32 %41, i32* %5, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %43, %45
  %47 = load i32, i32* %5, align 4
  %48 = xor i32 %47, %46
  store i32 %48, i32* %5, align 4
  store i32 32, i32* %6, align 4
  br label %49

49:                                               ; preds = %58, %1
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = ashr i32 %53, %54
  %56 = load i32, i32* %5, align 4
  %57 = xor i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  %60 = ashr i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %49

61:                                               ; preds = %49
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 1
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %108

67:                                               ; preds = %61
  store i32 1, i32* %6, align 4
  br label %68

68:                                               ; preds = %104, %67
  %69 = load i32, i32* %6, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %107

71:                                               ; preds = %68
  store i32 1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %100, %71
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 64
  br i1 %74, label %75, label %103

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %76, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %75
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i64, i64* @DSFMT_N, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = xor i32 %95, %84
  store i32 %96, i32* %94, align 4
  br label %108

97:                                               ; preds = %75
  %98 = load i32, i32* %8, align 4
  %99 = shl i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %72

103:                                              ; preds = %72
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %6, align 4
  br label %68

107:                                              ; preds = %68
  br label %108

108:                                              ; preds = %107, %83, %66
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
