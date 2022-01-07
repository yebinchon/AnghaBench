; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_LightMain.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_LightMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"----- Lighting ----\0A\00", align 1
@qfalse = common dso_local global i8* null, align 8
@verbose = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"-tempname\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@qtrue = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"-threads\00", align 1
@numthreads = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"-area\00", align 1
@areaScale = common dso_local global double 0.000000e+00, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"area light scaling at %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"-point\00", align 1
@pointScale = common dso_local global double 0.000000e+00, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"point light scaling at %f\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"-notrace\00", align 1
@notrace = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"No occlusion tracing\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"-patchshadows\00", align 1
@patchshadows = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [30 x i8] c"Patch shadow casting enabled\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"-extra\00", align 1
@extra = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [22 x i8] c"Extra detail tracing\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"-extrawide\00", align 1
@extraWide = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [27 x i8] c"Extra wide detail tracing\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"-samplesize\00", align 1
@samplesize = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [37 x i8] c"lightmap sample size is %dx%d units\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"-novertex\00", align 1
@novertexlighting = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [27 x i8] c"no vertex lighting = true\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"-nogrid\00", align 1
@nogridlighting = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [25 x i8] c"no grid lighting = true\0A\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"-border\00", align 1
@lightmapBorder = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [34 x i8] c"Adding debug border to lightmaps\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"-nosurf\00", align 1
@noSurfaces = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [30 x i8] c"Not tracing against surfaces\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"-dump\00", align 1
@dump = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [24 x i8] c"Dumping occlusion maps\0A\00", align 1
@.str.28 = private unnamed_addr constant [595 x i8] c"usage: q3map -light [-<switch> [-<switch> ...]] <mapname>\0A\0ASwitches:\0A   v              = verbose output\0A   threads <X>    = set number of threads to X\0A   area <V>       = set the area light scale to V\0A   point <W>      = set the point light scale to W\0A   notrace        = don't cast any shadows\0A   extra          = enable super sampling for anti-aliasing\0A   extrawide      = same as extra but smoothen more\0A   nogrid         = don't calculate light grid for dynamic model lighting\0A   novertex       = don't calculate vertex lighting\0A   samplesize <N> = set the lightmap pixel size to NxN units\0A\00", align 1
@source = common dso_local global double 0.000000e+00, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c".bsp\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"reading %s\0A\00", align 1
@entities = common dso_local global i32* null, align 8
@.str.31 = private unnamed_addr constant [9 x i8] c"gridsize\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"%f %f %f\00", align 1
@gridSize = common dso_local global i32* null, align 8
@.str.33 = private unnamed_addr constant [35 x i8] c"grid size = {%1.1f, %1.1f, %1.1f}\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"writing %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"%5.0f seconds elapsed\0A\00", align 1
@gamedir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LightMain(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load i8*, i8** @qfalse, align 8
  store i8* %10, i8** @verbose, align 8
  store i32 1, i32* %5, align 4
  br label %11

11:                                               ; preds = %240, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %243

15:                                               ; preds = %11
  %16 = load i8**, i8*** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %239

26:                                               ; preds = %15
  %27 = load i8**, i8*** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = load i8*, i8** @qtrue, align 8
  store i8* %35, i8** @verbose, align 8
  br label %238

36:                                               ; preds = %26
  %37 = load i8**, i8*** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %36
  %45 = load i8**, i8*** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %45, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @atoi(i8* %50)
  store i8* %51, i8** @numthreads, align 8
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %237

54:                                               ; preds = %36
  %55 = load i8**, i8*** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %54
  %63 = load i8**, i8*** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call double @atof(i8* %68)
  %70 = load double, double* @areaScale, align 8
  %71 = fmul double %70, %69
  store double %71, double* @areaScale, align 8
  %72 = load double, double* @areaScale, align 8
  %73 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), double %72)
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %236

76:                                               ; preds = %54
  %77 = load i8**, i8*** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %76
  %85 = load i8**, i8*** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %85, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call double @atof(i8* %90)
  %92 = load double, double* @pointScale, align 8
  %93 = fmul double %92, %91
  store double %93, double* @pointScale, align 8
  %94 = load double, double* @pointScale, align 8
  %95 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), double %94)
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %235

98:                                               ; preds = %76
  %99 = load i8**, i8*** %4, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %98
  %107 = load i8*, i8** @qtrue, align 8
  store i8* %107, i8** @notrace, align 8
  %108 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %234

109:                                              ; preds = %98
  %110 = load i8**, i8*** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %109
  %118 = load i8*, i8** @qtrue, align 8
  store i8* %118, i8** @patchshadows, align 8
  %119 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  br label %233

120:                                              ; preds = %109
  %121 = load i8**, i8*** %4, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %120
  %129 = load i8*, i8** @qtrue, align 8
  store i8* %129, i8** @extra, align 8
  %130 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  br label %232

131:                                              ; preds = %120
  %132 = load i8**, i8*** %4, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @strcmp(i8* %136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %131
  %140 = load i8*, i8** @qtrue, align 8
  store i8* %140, i8** @extra, align 8
  %141 = load i8*, i8** @qtrue, align 8
  store i8* %141, i8** @extraWide, align 8
  %142 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  br label %231

143:                                              ; preds = %131
  %144 = load i8**, i8*** %4, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @strcmp(i8* %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %169, label %151

151:                                              ; preds = %143
  %152 = load i8**, i8*** %4, align 8
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %152, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = call i8* @atoi(i8* %157)
  %159 = ptrtoint i8* %158 to i32
  store i32 %159, i32* @samplesize, align 4
  %160 = load i32, i32* @samplesize, align 4
  %161 = icmp slt i32 %160, 1
  br i1 %161, label %162, label %163

162:                                              ; preds = %151
  store i32 1, i32* @samplesize, align 4
  br label %163

163:                                              ; preds = %162, %151
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* @samplesize, align 4
  %167 = load i32, i32* @samplesize, align 4
  %168 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i32 %166, i32 %167)
  br label %230

169:                                              ; preds = %143
  %170 = load i8**, i8*** %4, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8*, i8** %170, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @strcmp(i8* %174, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %169
  %178 = load i8*, i8** @qtrue, align 8
  store i8* %178, i8** @novertexlighting, align 8
  %179 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  br label %229

180:                                              ; preds = %169
  %181 = load i8**, i8*** %4, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %180
  %189 = load i8*, i8** @qtrue, align 8
  store i8* %189, i8** @nogridlighting, align 8
  %190 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0))
  br label %228

191:                                              ; preds = %180
  %192 = load i8**, i8*** %4, align 8
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @strcmp(i8* %196, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %191
  %200 = load i8*, i8** @qtrue, align 8
  store i8* %200, i8** @lightmapBorder, align 8
  %201 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0))
  br label %227

202:                                              ; preds = %191
  %203 = load i8**, i8*** %4, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %203, i64 %205
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @strcmp(i8* %207, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %202
  %211 = load i8*, i8** @qtrue, align 8
  store i8* %211, i8** @noSurfaces, align 8
  %212 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0))
  br label %226

213:                                              ; preds = %202
  %214 = load i8**, i8*** %4, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8*, i8** %214, i64 %216
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @strcmp(i8* %218, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %213
  %222 = load i8*, i8** @qtrue, align 8
  store i8* %222, i8** @dump, align 8
  %223 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0))
  br label %225

224:                                              ; preds = %213
  br label %243

225:                                              ; preds = %221
  br label %226

226:                                              ; preds = %225, %210
  br label %227

227:                                              ; preds = %226, %199
  br label %228

228:                                              ; preds = %227, %188
  br label %229

229:                                              ; preds = %228, %177
  br label %230

230:                                              ; preds = %229, %163
  br label %231

231:                                              ; preds = %230, %139
  br label %232

232:                                              ; preds = %231, %128
  br label %233

233:                                              ; preds = %232, %117
  br label %234

234:                                              ; preds = %233, %106
  br label %235

235:                                              ; preds = %234, %84
  br label %236

236:                                              ; preds = %235, %62
  br label %237

237:                                              ; preds = %236, %44
  br label %238

238:                                              ; preds = %237, %34
  br label %239

239:                                              ; preds = %238, %23
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %5, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %5, align 4
  br label %11

243:                                              ; preds = %224, %11
  %244 = call i32 (...) @ThreadSetDefault()
  %245 = load i32, i32* %5, align 4
  %246 = load i32, i32* %3, align 4
  %247 = sub nsw i32 %246, 1
  %248 = icmp ne i32 %245, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %243
  %250 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([595 x i8], [595 x i8]* @.str.28, i64 0, i64 0))
  %251 = call i32 @exit(i32 0) #3
  unreachable

252:                                              ; preds = %243
  %253 = call double (...) @I_FloatTime()
  store double %253, double* %6, align 8
  %254 = load i8**, i8*** %4, align 8
  %255 = load i32, i32* %5, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8*, i8** %254, i64 %256
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @SetQdirFromPath(i8* %258)
  %260 = load double, double* @source, align 8
  %261 = load i8**, i8*** %4, align 8
  %262 = load i32, i32* %5, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %261, i64 %263
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @ExpandArg(i8* %265)
  %267 = call i32 @strcpy(double %260, i32 %266)
  %268 = load double, double* @source, align 8
  %269 = call i32 @StripExtension(double %268)
  %270 = load double, double* @source, align 8
  %271 = call i32 @DefaultExtension(double %270, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  %272 = call i32 (...) @LoadShaderInfo()
  %273 = load double, double* @source, align 8
  %274 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), double %273)
  %275 = load double, double* @source, align 8
  %276 = call i32 @LoadBSPFile(double %275)
  %277 = call i32 (...) @FindSkyBrushes()
  %278 = call i32 (...) @ParseEntities()
  %279 = load i32*, i32** @entities, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  %281 = call i8* @ValueForKey(i32* %280, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0))
  store i8* %281, i8** %8, align 8
  %282 = load i8*, i8** %8, align 8
  %283 = call i64 @strlen(i8* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %304

285:                                              ; preds = %252
  %286 = load i8*, i8** %8, align 8
  %287 = load i32*, i32** @gridSize, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 0
  %289 = load i32*, i32** @gridSize, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 1
  %291 = load i32*, i32** @gridSize, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 2
  %293 = call i32 @sscanf(i8* %286, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i32* %288, i32* %290, i32* %292)
  %294 = load i32*, i32** @gridSize, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  %296 = load i32, i32* %295, align 4
  %297 = load i32*, i32** @gridSize, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 1
  %299 = load i32, i32* %298, align 4
  %300 = load i32*, i32** @gridSize, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 2
  %302 = load i32, i32* %301, align 4
  %303 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0), i32 %296, i32 %299, i32 %302)
  br label %304

304:                                              ; preds = %285, %252
  %305 = call i32 (...) @CreateFilters()
  %306 = call i32 (...) @InitTrace()
  %307 = call i32 (...) @SetEntityOrigins()
  %308 = call i32 (...) @CountLightmaps()
  %309 = call i32 (...) @CreateSurfaceLights()
  %310 = call i32 (...) @LightWorld()
  %311 = load double, double* @source, align 8
  %312 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), double %311)
  %313 = load double, double* @source, align 8
  %314 = call i32 @WriteBSPFile(double %313)
  %315 = call double (...) @I_FloatTime()
  store double %315, double* %7, align 8
  %316 = load double, double* %7, align 8
  %317 = load double, double* %6, align 8
  %318 = fsub double %316, %317
  %319 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), double %318)
  ret i32 0
}

declare dso_local i32 @_printf(i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local double @atof(i8*) #1

declare dso_local i32 @ThreadSetDefault(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local double @I_FloatTime(...) #1

declare dso_local i32 @SetQdirFromPath(i8*) #1

declare dso_local i32 @strcpy(double, i32) #1

declare dso_local i32 @ExpandArg(i8*) #1

declare dso_local i32 @StripExtension(double) #1

declare dso_local i32 @DefaultExtension(double, i8*) #1

declare dso_local i32 @LoadShaderInfo(...) #1

declare dso_local i32 @LoadBSPFile(double) #1

declare dso_local i32 @FindSkyBrushes(...) #1

declare dso_local i32 @ParseEntities(...) #1

declare dso_local i8* @ValueForKey(i32*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @CreateFilters(...) #1

declare dso_local i32 @InitTrace(...) #1

declare dso_local i32 @SetEntityOrigins(...) #1

declare dso_local i32 @CountLightmaps(...) #1

declare dso_local i32 @CreateSurfaceLights(...) #1

declare dso_local i32 @LightWorld(...) #1

declare dso_local i32 @WriteBSPFile(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
