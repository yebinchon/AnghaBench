; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_cdc.c_cdc_reg_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_cdc.c_cdc_reg_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_11__ = type { i8, i8**, i64*, i8*, i32, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8, i8 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8, i8 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8, i8 }

@scd = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@cdc = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@BIT_SHDREN = common dso_local global i64 0, align 8
@BIT_VALST = common dso_local global i8 0, align 1
@BIT_DECI = common dso_local global i8 0, align 1
@BIT_DTEI = common dso_local global i32 0, align 4
@BIT_DTEIEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @cdc_reg_r() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @scd, i32 0, i32 1), align 8
  %4 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %3, i64 2
  %5 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 15
  switch i32 %8, label %150 [
    i32 1, label %9
    i32 2, label %15
    i32 3, label %21
    i32 4, label %27
    i32 5, label %42
    i32 6, label %57
    i32 7, label %72
    i32 8, label %87
    i32 9, label %93
    i32 10, label %99
    i32 11, label %105
    i32 12, label %111
    i32 13, label %119
    i32 14, label %124
    i32 15, label %132
  ]

9:                                                ; preds = %0
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @scd, i32 0, i32 1), align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i64 2
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  store i32 2, i32* %13, align 4
  %14 = load i8, i8* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 0), align 8
  store i8 %14, i8* %1, align 1
  br label %151

15:                                               ; preds = %0
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @scd, i32 0, i32 1), align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i64 2
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  store i32 3, i32* %19, align 4
  %20 = load i8, i8* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 7, i32 0, i32 0), align 8
  store i8 %20, i8* %1, align 1
  br label %151

21:                                               ; preds = %0
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @scd, i32 0, i32 1), align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i64 2
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  store i32 4, i32* %25, align 4
  %26 = load i8, i8* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 7, i32 0, i32 1), align 1
  store i8 %26, i8* %1, align 1
  br label %151

27:                                               ; preds = %0
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @scd, i32 0, i32 1), align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i64 2
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  store i32 5, i32* %31, align 4
  %32 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 1), align 8
  %33 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 2), align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BIT_SHDREN, align 8
  %37 = and i64 %35, %36
  %38 = getelementptr inbounds i8*, i8** %32, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %1, align 1
  br label %151

42:                                               ; preds = %0
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @scd, i32 0, i32 1), align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i64 2
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  store i32 6, i32* %46, align 4
  %47 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 1), align 8
  %48 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 2), align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BIT_SHDREN, align 8
  %52 = and i64 %50, %51
  %53 = getelementptr inbounds i8*, i8** %47, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  store i8 %56, i8* %1, align 1
  br label %151

57:                                               ; preds = %0
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @scd, i32 0, i32 1), align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i64 2
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  store i32 7, i32* %61, align 4
  %62 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 1), align 8
  %63 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 2), align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BIT_SHDREN, align 8
  %67 = and i64 %65, %66
  %68 = getelementptr inbounds i8*, i8** %62, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = load i8, i8* %70, align 1
  store i8 %71, i8* %1, align 1
  br label %151

72:                                               ; preds = %0
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @scd, i32 0, i32 1), align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i64 2
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  store i32 8, i32* %76, align 4
  %77 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 1), align 8
  %78 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 2), align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @BIT_SHDREN, align 8
  %82 = and i64 %80, %81
  %83 = getelementptr inbounds i8*, i8** %77, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 3
  %86 = load i8, i8* %85, align 1
  store i8 %86, i8* %1, align 1
  br label %151

87:                                               ; preds = %0
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @scd, i32 0, i32 1), align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i64 2
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  store i32 9, i32* %91, align 4
  %92 = load i8, i8* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 6, i32 0, i32 0), align 2
  store i8 %92, i8* %1, align 1
  br label %151

93:                                               ; preds = %0
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @scd, i32 0, i32 1), align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i64 2
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  store i32 10, i32* %97, align 4
  %98 = load i8, i8* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 6, i32 0, i32 1), align 1
  store i8 %98, i8* %1, align 1
  br label %151

99:                                               ; preds = %0
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @scd, i32 0, i32 1), align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i64 2
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  store i32 11, i32* %103, align 4
  %104 = load i8, i8* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 5, i32 0, i32 0), align 4
  store i8 %104, i8* %1, align 1
  br label %151

105:                                              ; preds = %0
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @scd, i32 0, i32 1), align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i64 2
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  store i32 12, i32* %109, align 4
  %110 = load i8, i8* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 5, i32 0, i32 1), align 1
  store i8 %110, i8* %1, align 1
  br label %151

111:                                              ; preds = %0
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @scd, i32 0, i32 1), align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i64 2
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  store i32 13, i32* %115, align 4
  %116 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 3), align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = load i8, i8* %117, align 1
  store i8 %118, i8* %1, align 1
  br label %151

119:                                              ; preds = %0
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @scd, i32 0, i32 1), align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i64 2
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  store i32 14, i32* %123, align 4
  store i8 0, i8* %1, align 1
  br label %151

124:                                              ; preds = %0
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @scd, i32 0, i32 1), align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i64 2
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  store i32 15, i32* %128, align 4
  %129 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 3), align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 2
  %131 = load i8, i8* %130, align 1
  store i8 %131, i8* %1, align 1
  br label %151

132:                                              ; preds = %0
  %133 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 3), align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 3
  %135 = load i8, i8* %134, align 1
  store i8 %135, i8* %2, align 1
  %136 = load i8, i8* @BIT_VALST, align 1
  %137 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 3), align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 3
  store i8 %136, i8* %138, align 1
  %139 = load i8, i8* @BIT_DECI, align 1
  %140 = zext i8 %139 to i32
  %141 = load i8, i8* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 0), align 8
  %142 = zext i8 %141 to i32
  %143 = or i32 %142, %140
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cdc, i32 0, i32 0), align 8
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @scd, i32 0, i32 1), align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i64 2
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  store i32 0, i32* %148, align 4
  %149 = load i8, i8* %2, align 1
  store i8 %149, i8* %1, align 1
  br label %151

150:                                              ; preds = %0
  store i8 -1, i8* %1, align 1
  br label %151

151:                                              ; preds = %150, %132, %124, %119, %111, %105, %99, %93, %87, %72, %57, %42, %27, %21, %15, %9
  %152 = load i8, i8* %1, align 1
  ret i8 %152
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
