; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightmaps.c_AllocateLightmaps.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightmaps.c_AllocateLightmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__*, i32*, %struct.TYPE_10__*, i32, i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"--- AllocateLightmaps ---\0A\00", align 1
@numSortShaders = common dso_local global i32 0, align 4
@numMapDrawSurfs = common dso_local global i32 0, align 4
@mapDrawSurfs = common dso_local global %struct.TYPE_12__* null, align 8
@mapplanes = common dso_local global %struct.TYPE_14__* null, align 8
@surfsOnShader = common dso_local global %struct.TYPE_12__** null, align 8
@MAX_MAP_SHADERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"MAX_MAP_SHADERS\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%5i unique shaders\0A\00", align 1
@SURF_NOLIGHTMAP = common dso_local global i32 0, align 4
@SURF_POINTLIGHT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"%7i exact lightmap texels\0A\00", align 1
@c_exactLightmap = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"%7i block lightmap texels\0A\00", align 1
@numLightmaps = common dso_local global i32 0, align 4
@LIGHTMAP_WIDTH = common dso_local global i32 0, align 4
@LIGHTMAP_HEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AllocateLightmaps(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %7 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* @numSortShaders, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %105, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @numMapDrawSurfs, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %108

15:                                               ; preds = %11
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @mapDrawSurfs, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i64 %18
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %5, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %105

25:                                               ; preds = %15
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %105

31:                                               ; preds = %25
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mapplanes, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @VectorCopy(i32 %45, i32 %50)
  br label %52

52:                                               ; preds = %36, %31
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %83, %52
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @numSortShaders, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %53
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @surfsOnShader, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %61, i64 %63
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = icmp eq %struct.TYPE_11__* %60, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %57
  %70 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @surfsOnShader, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %70, i64 %72
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %76, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @surfsOnShader, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %78, i64 %80
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %81, align 8
  br label %86

82:                                               ; preds = %57
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %53

86:                                               ; preds = %69, %53
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @numSortShaders, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = load i32, i32* @numSortShaders, align 4
  %92 = load i32, i32* @MAX_MAP_SHADERS, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 @Error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %90
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @surfsOnShader, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %98, i64 %100
  store %struct.TYPE_12__* %97, %struct.TYPE_12__** %101, align 8
  %102 = load i32, i32* @numSortShaders, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @numSortShaders, align 4
  br label %104

104:                                              ; preds = %96, %86
  br label %105

105:                                              ; preds = %104, %30, %24
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %11

108:                                              ; preds = %11
  %109 = load i32, i32* @numSortShaders, align 4
  %110 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %161, %108
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @numSortShaders, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %164

115:                                              ; preds = %111
  %116 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @surfsOnShader, align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %116, i64 %118
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  store %struct.TYPE_11__* %122, %struct.TYPE_11__** %6, align 8
  %123 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @surfsOnShader, align 8
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %123, i64 %125
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  store %struct.TYPE_12__* %127, %struct.TYPE_12__** %5, align 8
  br label %128

128:                                              ; preds = %156, %115
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %130 = icmp ne %struct.TYPE_12__* %129, null
  br i1 %130, label %131, label %160

131:                                              ; preds = %128
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @SURF_NOLIGHTMAP, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  store i32 -1, i32* %140, align 8
  br label %155

141:                                              ; preds = %131
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @SURF_POINTLIGHT, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  store i32 -3, i32* %150, align 8
  br label %154

151:                                              ; preds = %141
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %153 = call i32 @AllocateLightmapForSurface(%struct.TYPE_12__* %152)
  br label %154

154:                                              ; preds = %151, %148
  br label %155

155:                                              ; preds = %154, %138
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  store %struct.TYPE_12__* %159, %struct.TYPE_12__** %5, align 8
  br label %128

160:                                              ; preds = %128
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %3, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %3, align 4
  br label %111

164:                                              ; preds = %111
  %165 = load i32, i32* @c_exactLightmap, align 4
  %166 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* @numLightmaps, align 4
  %168 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %169 = mul nsw i32 %167, %168
  %170 = load i32, i32* @LIGHTMAP_HEIGHT, align 4
  %171 = mul nsw i32 %169, %170
  %172 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %171)
  ret void
}

declare dso_local i32 @qprintf(i8*, ...) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @AllocateLightmapForSurface(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
