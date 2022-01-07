; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_InitSurfacesForTesting.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_InitSurfacesForTesting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, %struct.TYPE_19__*, i8*, i8*, i64, i32 }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_17__ = type { i32, i32, i64, i64 }

@numDrawSurfaces = common dso_local global i32 0, align 4
@entitySurface = common dso_local global i64* null, align 8
@drawSurfaces = common dso_local global %struct.TYPE_20__* null, align 8
@dshaders = common dso_local global %struct.TYPE_21__* null, align 8
@CONTENTS_TRANSLUCENT = common dso_local global i32 0, align 4
@SURF_ALPHASHADOW = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@lsurfaceTest = common dso_local global %struct.TYPE_18__** null, align 8
@MST_TRIANGLE_SOUP = common dso_local global i64 0, align 8
@MST_PLANAR = common dso_local global i64 0, align 8
@MST_PATCH = common dso_local global i64 0, align 8
@numfacets = common dso_local global i64 0, align 8
@MAX_FACETS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"numfacets >= MAX_FACETS (%d)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%6d facets\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"linking surfaces...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VL_InitSurfacesForTesting() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %195, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @numDrawSurfaces, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %198

12:                                               ; preds = %8
  %13 = load i64*, i64** @entitySurface, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %195

20:                                               ; preds = %12
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** @drawSurfaces, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i64 %23
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %4, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %195

35:                                               ; preds = %29, %20
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** @dshaders, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.TYPE_17__* @ShaderInfoForShader(i32 %42)
  store %struct.TYPE_17__* %43, %struct.TYPE_17__** %6, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CONTENTS_TRANSLUCENT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %35
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SURF_ALPHASHADOW, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %195

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %50, %35
  %65 = call %struct.TYPE_18__* @malloc(i32 64)
  store %struct.TYPE_18__* %65, %struct.TYPE_18__** %5, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %67 = call i32 @memset(%struct.TYPE_18__* %66, i32 0, i32 64)
  %68 = call i32 (...) @MutexAlloc()
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 8
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %64
  %78 = load i8*, i8** @qtrue, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 7
  store i8* %78, i8** %80, align 8
  br label %91

81:                                               ; preds = %64
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i8*, i8** @qtrue, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 6
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %86, %81
  br label %91

91:                                               ; preds = %90, %77
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %93 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @lsurfaceTest, align 8
  %94 = load i32, i32* %1, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %93, i64 %95
  store %struct.TYPE_18__* %92, %struct.TYPE_18__** %96, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MST_TRIANGLE_SOUP, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %91
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @MST_PLANAR, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %102, %91
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %112 = call i32 @VL_FacetsForTriangleSurface(%struct.TYPE_20__* %109, %struct.TYPE_17__* %110, %struct.TYPE_18__* %111)
  br label %126

113:                                              ; preds = %102
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @MST_PATCH, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %121 = load i32, i32* %1, align 4
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %124 = call i32 @VL_FacetsForPatch(%struct.TYPE_20__* %120, i32 %121, %struct.TYPE_17__* %122, %struct.TYPE_18__* %123)
  br label %125

125:                                              ; preds = %119, %113
  br label %126

126:                                              ; preds = %125, %108
  %127 = load i64, i64* @numfacets, align 8
  %128 = load i64, i64* @MAX_FACETS, align 8
  %129 = icmp sge i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i64, i64* @MAX_FACETS, align 8
  %132 = call i32 @Error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %131)
  br label %133

133:                                              ; preds = %130, %126
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ClearBounds(i32 %136, i32 %139)
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %179, %133
  %142 = load i32, i32* %2, align 4
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %182

147:                                              ; preds = %141
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 5
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %149, align 8
  %151 = load i32, i32* %2, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i64 %152
  store %struct.TYPE_19__* %153, %struct.TYPE_19__** %7, align 8
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %175, %147
  %155 = load i32, i32* %3, align 4
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %178

160:                                              ; preds = %154
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @AddPointToBounds(i32 %167, i32 %170, i32 %173)
  br label %175

175:                                              ; preds = %160
  %176 = load i32, i32* %3, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %3, align 4
  br label %154

178:                                              ; preds = %154
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %2, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %2, align 4
  br label %141

182:                                              ; preds = %141
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 1
  %194 = call i32 @VL_SphereFromBounds(i32 %185, i32 %188, i32 %191, i32* %193)
  br label %195

195:                                              ; preds = %182, %62, %34, %19
  %196 = load i32, i32* %1, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %1, align 4
  br label %8

198:                                              ; preds = %8
  %199 = load i64, i64* @numfacets, align 8
  %200 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %199)
  %201 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %202 = call i32 (...) @VL_LinkSurfaces()
  ret void
}

declare dso_local %struct.TYPE_17__* @ShaderInfoForShader(i32) #1

declare dso_local %struct.TYPE_18__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @MutexAlloc(...) #1

declare dso_local i32 @VL_FacetsForTriangleSurface(%struct.TYPE_20__*, %struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @VL_FacetsForPatch(%struct.TYPE_20__*, i32, %struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @Error(i8*, i64) #1

declare dso_local i32 @ClearBounds(i32, i32) #1

declare dso_local i32 @AddPointToBounds(i32, i32, i32) #1

declare dso_local i32 @VL_SphereFromBounds(i32, i32, i32, i32*) #1

declare dso_local i32 @_printf(i8*, ...) #1

declare dso_local i32 @VL_LinkSurfaces(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
