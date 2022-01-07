; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_q3.c_Q3_FindVisibleBrushSides.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_q3.c_Q3_FindVisibleBrushSides.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@q3_dbrushsidetextured = common dso_local global i32* null, align 8
@Q3_MAX_MAP_BRUSHSIDES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"searching visible brush sides...\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%6d brush sides\00", align 1
@q3_numbrushes = common dso_local global i32 0, align 4
@q3_dbrushes = common dso_local global %struct.TYPE_16__* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"\0D%6d\00", align 1
@q3_dbrushsides = common dso_local global %struct.TYPE_15__* null, align 8
@WE_NOTENOUGHPOINTS = common dso_local global i32 0, align 4
@WE_SMALLAREA = common dso_local global i32 0, align 4
@WE_POINTBOGUSRANGE = common dso_local global i32 0, align 4
@q3_numDrawSurfaces = common dso_local global i32 0, align 4
@q3_drawSurfaces = common dso_local global %struct.TYPE_13__* null, align 8
@MST_PLANAR = common dso_local global i64 0, align 8
@q3_surfaceplanes = common dso_local global %struct.TYPE_14__* null, align 8
@q3_dplanes = common dso_local global %struct.TYPE_17__* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"\0D%6d brush sides\0A\00", align 1
@q3_numbrushsides = common dso_local global i32 0, align 4
@forcesidesvisible = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"%d brush sides textured out of %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q3_FindVisibleBrushSides() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32*, align 8
  %13 = load i32*, i32** @q3_dbrushsidetextured, align 8
  %14 = load i32, i32* @Q3_MAX_MAP_BRUSHSIDES, align 4
  %15 = call i32 @memset(i32* %13, i32 0, i32 %14)
  store i32 0, i32* %6, align 4
  %16 = call i32 (...) @Q3_CreatePlanarSurfacePlanes()
  %17 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %198, %0
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @q3_numbrushes, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %201

24:                                               ; preds = %20
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** @q3_dbrushes, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i64 %27
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %10, align 8
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %194, %24
  %30 = load i32, i32* %2, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %197

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = call i32 @qprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** @q3_dbrushsides, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i64 %45
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %9, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %49 = call i32* @Q3_BrushSideWinding(%struct.TYPE_16__* %47, %struct.TYPE_15__* %48)
  store i32* %49, i32** %12, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %35
  %53 = load i32*, i32** @q3_dbrushsidetextured, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %2, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %53, i64 %59
  store i32 1, i32* %60, align 4
  br label %194

61:                                               ; preds = %35
  %62 = load i32*, i32** %12, align 8
  %63 = call i64 @WindingIsTiny(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @FreeWinding(i32* %66)
  %68 = load i32*, i32** @q3_dbrushsidetextured, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %2, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %68, i64 %74
  store i32 1, i32* %75, align 4
  br label %194

76:                                               ; preds = %61
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @WindingError(i32* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @WE_NOTENOUGHPOINTS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %90, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @WE_SMALLAREA, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @WE_POINTBOGUSRANGE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %86, %82, %76
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @FreeWinding(i32* %91)
  %93 = load i32*, i32** @q3_dbrushsidetextured, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %2, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %93, i64 %99
  store i32 1, i32* %100, align 4
  br label %194

101:                                              ; preds = %86
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @WindingArea(i32* %104)
  %106 = icmp slt i32 %105, 20
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load i32*, i32** @q3_dbrushsidetextured, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %2, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %108, i64 %114
  store i32 1, i32* %115, align 4
  br label %194

116:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %188, %116
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* @q3_numDrawSurfaces, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %191

121:                                              ; preds = %117
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** @q3_drawSurfaces, align 8
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i64 %124
  store %struct.TYPE_13__* %125, %struct.TYPE_13__** %11, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @MST_PLANAR, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  br label %188

132:                                              ; preds = %121
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** @q3_surfaceplanes, align 8
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i64 %135
  store %struct.TYPE_14__* %136, %struct.TYPE_14__** %8, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @fabs(i32 %139)
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** @q3_dplanes, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @fabs(i32 %147)
  %149 = sub nsw i32 %140, %148
  %150 = call i32 @fabs(i32 %149)
  %151 = icmp sgt i32 %150, 5
  br i1 %151, label %152, label %153

152:                                              ; preds = %132
  br label %188

153:                                              ; preds = %132
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** @q3_dplanes, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call float @DotProduct(i32 %156, i32 %163)
  store float %164, float* %7, align 4
  %165 = load float, float* %7, align 4
  %166 = fpext float %165 to double
  %167 = fcmp ogt double %166, -9.000000e-01
  br i1 %167, label %168, label %173

168:                                              ; preds = %153
  %169 = load float, float* %7, align 4
  %170 = fpext float %169 to double
  %171 = fcmp olt double %170, 9.000000e-01
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  br label %188

173:                                              ; preds = %168, %153
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %175 = load i32*, i32** %12, align 8
  %176 = call i64 @Q3_FaceOnWinding(%struct.TYPE_13__* %174, i32* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %173
  %179 = load i32*, i32** @q3_dbrushsidetextured, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %2, align 4
  %184 = add nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %179, i64 %185
  store i32 1, i32* %186, align 4
  br label %191

187:                                              ; preds = %173
  br label %188

188:                                              ; preds = %187, %172, %152, %131
  %189 = load i32, i32* %3, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %3, align 4
  br label %117

191:                                              ; preds = %178, %117
  %192 = load i32*, i32** %12, align 8
  %193 = call i32 @FreeWinding(i32* %192)
  br label %194

194:                                              ; preds = %191, %107, %90, %65, %52
  %195 = load i32, i32* %2, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %2, align 4
  br label %29

197:                                              ; preds = %29
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %1, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %1, align 4
  br label %20

201:                                              ; preds = %20
  %202 = load i32, i32* %6, align 4
  %203 = call i32 @qprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %202)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %1, align 4
  br label %204

204:                                              ; preds = %227, %201
  %205 = load i32, i32* %1, align 4
  %206 = load i32, i32* @q3_numbrushsides, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %230

208:                                              ; preds = %204
  %209 = load i64, i64* @forcesidesvisible, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  %212 = load i32*, i32** @q3_dbrushsidetextured, align 8
  %213 = load i32, i32* %1, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 1, i32* %215, align 4
  br label %216

216:                                              ; preds = %211, %208
  %217 = load i32*, i32** @q3_dbrushsidetextured, align 8
  %218 = load i32, i32* %1, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %216
  %224 = load i32, i32* %5, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %5, align 4
  br label %226

226:                                              ; preds = %223, %216
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %1, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %1, align 4
  br label %204

230:                                              ; preds = %204
  %231 = load i32, i32* %5, align 4
  %232 = load i32, i32* @q3_numbrushsides, align 4
  %233 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %231, i32 %232)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @Q3_CreatePlanarSurfacePlanes(...) #1

declare dso_local i32 @Log_Print(i8*, ...) #1

declare dso_local i32 @qprintf(i8*, i32) #1

declare dso_local i32* @Q3_BrushSideWinding(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i64 @WindingIsTiny(i32*) #1

declare dso_local i32 @FreeWinding(i32*) #1

declare dso_local i32 @WindingError(i32*) #1

declare dso_local i32 @WindingArea(i32*) #1

declare dso_local i32 @fabs(i32) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i64 @Q3_FaceOnWinding(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
