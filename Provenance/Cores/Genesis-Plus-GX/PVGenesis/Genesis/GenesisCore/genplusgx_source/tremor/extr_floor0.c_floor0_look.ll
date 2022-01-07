; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_floor0.c_floor0_look.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_floor0.c_floor0_look.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32*, i32*, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_15__*, %struct.TYPE_12__*, i32*)* @floor0_look to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @floor0_look(%struct.TYPE_15__* %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %8, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %9, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %10, align 8
  %22 = call i64 @_ogg_calloc(i32 1, i32 40)
  %23 = inttoptr i64 %22 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %11, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 2
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %47, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i64 @_ogg_malloc(i32 %54)
  %56 = inttoptr i64 %55 to i32*
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  store i32* %56, i32** %58, align 8
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %107, %3
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %110

65:                                               ; preds = %59
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %71, 2
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sdiv i32 %74, %77
  %79 = call i32 @toBARK(i32 %78)
  %80 = shl i32 %79, 11
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %83, 2
  %85 = call i32 @toBARK(i32 %84)
  %86 = sdiv i32 %80, %85
  %87 = mul nsw i32 %68, %86
  %88 = ashr i32 %87, 11
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %89, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %65
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %94, %65
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %100, i32* %106, align 4
  br label %107

107:                                              ; preds = %99
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %59

110:                                              ; preds = %59
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 -1, i32* %116, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 4
  %122 = trunc i64 %121 to i32
  %123 = call i64 @_ogg_malloc(i32 %122)
  %124 = inttoptr i64 %123 to i32*
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 3
  store i32* %124, i32** %126, align 8
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %147, %110
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %150

133:                                              ; preds = %127
  %134 = load i32, i32* %7, align 4
  %135 = mul nsw i32 65536, %134
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sdiv i32 %135, %138
  %140 = call i32 @vorbis_coslook2_i(i32 %139)
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %140, i32* %146, align 4
  br label %147

147:                                              ; preds = %133
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %127

150:                                              ; preds = %127
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  ret %struct.TYPE_11__* %151
}

declare dso_local i64 @_ogg_calloc(i32, i32) #1

declare dso_local i64 @_ogg_malloc(i32) #1

declare dso_local i32 @toBARK(i32) #1

declare dso_local i32 @vorbis_coslook2_i(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
