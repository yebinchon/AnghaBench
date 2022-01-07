; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_setup.c_P_LoadSegs.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_setup.c_P_LoadSegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i64, %struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }

@numsegs = common dso_local global i32 0, align 4
@PU_LEVEL = common dso_local global i32 0, align 4
@segs = common dso_local global %struct.TYPE_9__* null, align 8
@PU_STATIC = common dso_local global i32 0, align 4
@vertexes = common dso_local global i32* null, align 8
@lines = common dso_local global %struct.TYPE_11__* null, align 8
@sides = common dso_local global %struct.TYPE_12__* null, align 8
@ML_TWOSIDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_LoadSegs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @W_LumpLength(i32 %10)
  %12 = sext i32 %11 to i64
  %13 = udiv i64 %12, 24
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* @numsegs, align 4
  %15 = load i32, i32* @numsegs, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 56
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @PU_LEVEL, align 4
  %20 = call %struct.TYPE_9__* @Z_Malloc(i32 %18, i32 %19, i32 0)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** @segs, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @segs, align 8
  %22 = load i32, i32* @numsegs, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 56
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memset(%struct.TYPE_9__* %21, i32 0, i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @PU_STATIC, align 4
  %29 = call i32* @W_CacheLumpNum(i32 %27, i32 %28)
  store i32* %29, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = bitcast i32* %30 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %5, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @segs, align 8
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %6, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %134, %1
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @numsegs, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %141

37:                                               ; preds = %33
  %38 = load i32*, i32** @vertexes, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @SHORT(i32 %41)
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 7
  store i32* %44, i32** %46, align 8
  %47 = load i32*, i32** @vertexes, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @SHORT(i32 %50)
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 6
  store i32* %53, i32** %55, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @SHORT(i32 %58)
  %60 = shl i32 %59, 16
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @SHORT(i32 %65)
  %67 = shl i32 %66, 16
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @SHORT(i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** @lines, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 %76
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %7, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 5
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %80, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @SHORT(i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sides, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i64 %92
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  store %struct.TYPE_12__* %93, %struct.TYPE_12__** %95, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sides, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @ML_TWOSIDED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %37
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sides, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = xor i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %119, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  store i64 %127, i64* %129, align 8
  br label %133

130:                                              ; preds = %37
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %130, %115
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 1
  store %struct.TYPE_9__* %138, %struct.TYPE_9__** %6, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 1
  store %struct.TYPE_10__* %140, %struct.TYPE_10__** %5, align 8
  br label %33

141:                                              ; preds = %33
  %142 = load i32*, i32** %3, align 8
  %143 = call i32 @Z_Free(i32* %142)
  ret void
}

declare dso_local i32 @W_LumpLength(i32) #1

declare dso_local %struct.TYPE_9__* @Z_Malloc(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32* @W_CacheLumpNum(i32, i32) #1

declare dso_local i32 @SHORT(i32) #1

declare dso_local i32 @Z_Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
