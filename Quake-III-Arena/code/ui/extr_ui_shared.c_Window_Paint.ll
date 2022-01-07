; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Window_Paint.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Window_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32, i32, i32, i32, i32)*, i32 (double*)*, i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, double*)*, i32 (i32, i32, i32, i32, i32)*, i32 (i32)*, i32 (i32, i32, i32, i32, double*)*, i32 (double**)*, i32 (i32, i32, i32, i32, i32)* }
%struct.TYPE_7__ = type { i64, i64, i32, i32, double*, double*, i32, double*, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@debugMode = common dso_local global i64 0, align 8
@DC = common dso_local global %struct.TYPE_8__* null, align 8
@WINDOW_STYLE_FILLED = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@WINDOW_STYLE_GRADIENT = common dso_local global i64 0, align 8
@WINDOW_STYLE_SHADER = common dso_local global i64 0, align 8
@WINDOW_FORECOLORSET = common dso_local global i32 0, align 4
@WINDOW_STYLE_TEAMCOLOR = common dso_local global i64 0, align 8
@WINDOW_STYLE_CINEMATIC = common dso_local global i64 0, align 8
@WINDOW_BORDER_FULL = common dso_local global i64 0, align 8
@WINDOW_BORDER_HORZ = common dso_local global i64 0, align 8
@WINDOW_BORDER_VERT = common dso_local global i64 0, align 8
@WINDOW_BORDER_KCGRADIENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Window_Paint(%struct.TYPE_7__* %0, float %1, float %2, float %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca double*, align 8
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca %struct.TYPE_6__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 8
  %14 = bitcast %struct.TYPE_6__* %10 to i8*
  %15 = bitcast %struct.TYPE_6__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 8 %15, i64 16, i1 false)
  %16 = load i64, i64* @debugMode, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %4
  %19 = load double*, double** %9, align 8
  %20 = getelementptr inbounds double, double* %19, i64 3
  store double 1.000000e+00, double* %20, align 8
  %21 = load double*, double** %9, align 8
  %22 = getelementptr inbounds double, double* %21, i64 2
  store double 1.000000e+00, double* %22, align 8
  %23 = load double*, double** %9, align 8
  %24 = getelementptr inbounds double, double* %23, i64 1
  store double 1.000000e+00, double* %24, align 8
  %25 = load double*, double** %9, align 8
  %26 = getelementptr inbounds double, double* %25, i64 0
  store double 1.000000e+00, double* %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  %29 = load i32 (i32, i32, i32, i32, i32, double*)*, i32 (i32, i32, i32, i32, i32, double*)** %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load double*, double** %9, align 8
  %47 = call i32 %29(i32 %33, i32 %37, i32 %41, i32 %45, i32 1, double* %46)
  br label %48

48:                                               ; preds = %18, %4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = icmp eq %struct.TYPE_7__* %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56, %48
  br label %519

62:                                               ; preds = %56, %51
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %62
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, %70
  store i32 %73, i32* %71, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %76
  store i32 %79, i32* %77, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, %83
  store i32 %86, i32* %84, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, %90
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %67, %62
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @WINDOW_STYLE_FILLED, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %162

100:                                              ; preds = %94
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %145

105:                                              ; preds = %100
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 4
  %110 = load double*, double** %109, align 8
  %111 = getelementptr inbounds double, double* %110, i64 3
  %112 = load float, float* %7, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 11
  %115 = load float, float* %8, align 4
  %116 = load i32, i32* @qtrue, align 4
  %117 = load float, float* %6, align 4
  %118 = call i32 @Fade(i32* %107, double* %111, float %112, i32* %114, float %115, i32 %116, float %117)
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32 (double*)*, i32 (double*)** %120, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 4
  %124 = load double*, double** %123, align 8
  %125 = call i32 %121(double* %124)
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 9
  %128 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 10
  %139 = load i32, i32* %138, align 4
  %140 = call i32 %128(i32 %130, i32 %132, i32 %134, i32 %136, i32 %139)
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32 (double*)*, i32 (double*)** %142, align 8
  %144 = call i32 %143(double* null)
  br label %161

145:                                              ; preds = %100
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 7
  %148 = load i32 (i32, i32, i32, i32, double*)*, i32 (i32, i32, i32, i32, double*)** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 4
  %159 = load double*, double** %158, align 8
  %160 = call i32 %148(i32 %150, i32 %152, i32 %154, i32 %156, double* %159)
  br label %161

161:                                              ; preds = %145, %105
  br label %314

162:                                              ; preds = %94
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @WINDOW_STYLE_GRADIENT, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %162
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 4
  %171 = load double*, double** %170, align 8
  %172 = call i32 @GradientBar_Paint(%struct.TYPE_6__* %10, double* %171)
  br label %313

173:                                              ; preds = %162
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @WINDOW_STYLE_SHADER, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %214

179:                                              ; preds = %173
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @WINDOW_FORECOLORSET, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %179
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  %189 = load i32 (double*)*, i32 (double*)** %188, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 5
  %192 = load double*, double** %191, align 8
  %193 = call i32 %189(double* %192)
  br label %194

194:                                              ; preds = %186, %179
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 9
  %197 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 10
  %208 = load i32, i32* %207, align 4
  %209 = call i32 %197(i32 %199, i32 %201, i32 %203, i32 %205, i32 %208)
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = load i32 (double*)*, i32 (double*)** %211, align 8
  %213 = call i32 %212(double* null)
  br label %312

214:                                              ; preds = %173
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @WINDOW_STYLE_TEAMCOLOR, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %244

220:                                              ; preds = %214
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 8
  %223 = load i32 (double**)*, i32 (double**)** %222, align 8
  %224 = icmp ne i32 (double**)* %223, null
  br i1 %224, label %225, label %243

225:                                              ; preds = %220
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 8
  %228 = load i32 (double**)*, i32 (double**)** %227, align 8
  %229 = call i32 %228(double** %9)
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 7
  %232 = load i32 (i32, i32, i32, i32, double*)*, i32 (i32, i32, i32, i32, double*)** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = load double*, double** %9, align 8
  %242 = call i32 %232(i32 %234, i32 %236, i32 %238, i32 %240, double* %241)
  br label %243

243:                                              ; preds = %225, %220
  br label %311

244:                                              ; preds = %214
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @WINDOW_STYLE_CINEMATIC, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %310

250:                                              ; preds = %244
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 8
  %254 = icmp eq i32 %253, -1
  br i1 %254, label %255, label %281

255:                                              ; preds = %250
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 0
  %258 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %257, align 8
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 9
  %261 = load i32, i32* %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = call i32 %258(i32 %261, i32 %263, i32 %265, i32 %267, i32 %269)
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 6
  store i32 %270, i32* %272, align 8
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 8
  %276 = icmp eq i32 %275, -1
  br i1 %276, label %277, label %280

277:                                              ; preds = %255
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 6
  store i32 -2, i32* %279, align 8
  br label %280

280:                                              ; preds = %277, %255
  br label %281

281:                                              ; preds = %280, %250
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 8
  %285 = icmp sge i32 %284, 0
  br i1 %285, label %286, label %309

286:                                              ; preds = %281
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 6
  %289 = load i32 (i32)*, i32 (i32)** %288, align 8
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 6
  %292 = load i32, i32* %291, align 8
  %293 = call i32 %289(i32 %292)
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 5
  %296 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %295, align 8
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = call i32 %296(i32 %299, i32 %301, i32 %303, i32 %305, i32 %307)
  br label %309

309:                                              ; preds = %286, %281
  br label %310

310:                                              ; preds = %309, %244
  br label %311

311:                                              ; preds = %310, %243
  br label %312

312:                                              ; preds = %311, %194
  br label %313

313:                                              ; preds = %312, %168
  br label %314

314:                                              ; preds = %313, %161
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @WINDOW_BORDER_FULL, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %400

320:                                              ; preds = %314
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @WINDOW_STYLE_TEAMCOLOR, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %372

326:                                              ; preds = %320
  %327 = load double*, double** %9, align 8
  %328 = getelementptr inbounds double, double* %327, i64 0
  %329 = load double, double* %328, align 8
  %330 = fcmp ogt double %329, 0.000000e+00
  br i1 %330, label %331, label %338

331:                                              ; preds = %326
  %332 = load double*, double** %9, align 8
  %333 = getelementptr inbounds double, double* %332, i64 0
  store double 1.000000e+00, double* %333, align 8
  %334 = load double*, double** %9, align 8
  %335 = getelementptr inbounds double, double* %334, i64 2
  store double 5.000000e-01, double* %335, align 8
  %336 = load double*, double** %9, align 8
  %337 = getelementptr inbounds double, double* %336, i64 1
  store double 5.000000e-01, double* %337, align 8
  br label %345

338:                                              ; preds = %326
  %339 = load double*, double** %9, align 8
  %340 = getelementptr inbounds double, double* %339, i64 2
  store double 1.000000e+00, double* %340, align 8
  %341 = load double*, double** %9, align 8
  %342 = getelementptr inbounds double, double* %341, i64 1
  store double 5.000000e-01, double* %342, align 8
  %343 = load double*, double** %9, align 8
  %344 = getelementptr inbounds double, double* %343, i64 0
  store double 5.000000e-01, double* %344, align 8
  br label %345

345:                                              ; preds = %338, %331
  %346 = load double*, double** %9, align 8
  %347 = getelementptr inbounds double, double* %346, i64 3
  store double 1.000000e+00, double* %347, align 8
  %348 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 4
  %350 = load i32 (i32, i32, i32, i32, i32, double*)*, i32 (i32, i32, i32, i32, i32, double*)** %349, align 8
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 8
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 8
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %359, i32 0, i32 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = load double*, double** %9, align 8
  %371 = call i32 %350(i32 %354, i32 %358, i32 %362, i32 %366, i32 %369, double* %370)
  br label %399

372:                                              ; preds = %320
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 4
  %375 = load i32 (i32, i32, i32, i32, i32, double*)*, i32 (i32, i32, i32, i32, i32, double*)** %374, align 8
  %376 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %380, i32 0, i32 8
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %388, i32 0, i32 8
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 8
  %395 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i32 0, i32 7
  %397 = load double*, double** %396, align 8
  %398 = call i32 %375(i32 %379, i32 %383, i32 %387, i32 %391, i32 %394, double* %397)
  br label %399

399:                                              ; preds = %372, %345
  br label %519

400:                                              ; preds = %314
  %401 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %401, i32 0, i32 1
  %403 = load i64, i64* %402, align 8
  %404 = load i64, i64* @WINDOW_BORDER_HORZ, align 8
  %405 = icmp eq i64 %403, %404
  br i1 %405, label %406, label %441

406:                                              ; preds = %400
  %407 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %407, i32 0, i32 1
  %409 = load i32 (double*)*, i32 (double*)** %408, align 8
  %410 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %410, i32 0, i32 7
  %412 = load double*, double** %411, align 8
  %413 = call i32 %409(double* %412)
  %414 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %415 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %414, i32 0, i32 3
  %416 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %415, align 8
  %417 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %417, i32 0, i32 8
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %421, i32 0, i32 8
  %423 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %425, i32 0, i32 8
  %427 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %426, i32 0, i32 3
  %428 = load i32, i32* %427, align 4
  %429 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %429, i32 0, i32 8
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 8
  %433 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 8
  %436 = call i32 %416(i32 %420, i32 %424, i32 %428, i32 %432, i32 %435)
  %437 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %438 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %437, i32 0, i32 1
  %439 = load i32 (double*)*, i32 (double*)** %438, align 8
  %440 = call i32 %439(double* null)
  br label %518

441:                                              ; preds = %400
  %442 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %442, i32 0, i32 1
  %444 = load i64, i64* %443, align 8
  %445 = load i64, i64* @WINDOW_BORDER_VERT, align 8
  %446 = icmp eq i64 %444, %445
  br i1 %446, label %447, label %482

447:                                              ; preds = %441
  %448 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %449 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %448, i32 0, i32 1
  %450 = load i32 (double*)*, i32 (double*)** %449, align 8
  %451 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %452 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %451, i32 0, i32 7
  %453 = load double*, double** %452, align 8
  %454 = call i32 %450(double* %453)
  %455 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %456 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %455, i32 0, i32 2
  %457 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %456, align 8
  %458 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %459 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %458, i32 0, i32 8
  %460 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %463 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %462, i32 0, i32 8
  %464 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %466, i32 0, i32 8
  %468 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %467, i32 0, i32 3
  %469 = load i32, i32* %468, align 4
  %470 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %471 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %470, i32 0, i32 8
  %472 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %471, i32 0, i32 2
  %473 = load i32, i32* %472, align 8
  %474 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i32 0, i32 2
  %476 = load i32, i32* %475, align 8
  %477 = call i32 %457(i32 %461, i32 %465, i32 %469, i32 %473, i32 %476)
  %478 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %479 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %478, i32 0, i32 1
  %480 = load i32 (double*)*, i32 (double*)** %479, align 8
  %481 = call i32 %480(double* null)
  br label %517

482:                                              ; preds = %441
  %483 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %483, i32 0, i32 1
  %485 = load i64, i64* %484, align 8
  %486 = load i64, i64* @WINDOW_BORDER_KCGRADIENT, align 8
  %487 = icmp eq i64 %485, %486
  br i1 %487, label %488, label %516

488:                                              ; preds = %482
  %489 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %490 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %489, i32 0, i32 8
  %491 = bitcast %struct.TYPE_6__* %11 to i8*
  %492 = bitcast %struct.TYPE_6__* %490 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %491, i8* align 8 %492, i64 16, i1 false)
  %493 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %494 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %493, i32 0, i32 2
  %495 = load i32, i32* %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store i32 %495, i32* %496, align 4
  %497 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %498 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %497, i32 0, i32 7
  %499 = load double*, double** %498, align 8
  %500 = call i32 @GradientBar_Paint(%struct.TYPE_6__* %11, double* %499)
  %501 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %502 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %501, i32 0, i32 8
  %503 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 4
  %505 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %506 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %505, i32 0, i32 8
  %507 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %506, i32 0, i32 2
  %508 = load i32, i32* %507, align 8
  %509 = add nsw i32 %504, %508
  %510 = sub nsw i32 %509, 1
  %511 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i32 %510, i32* %511, align 4
  %512 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %513 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %512, i32 0, i32 7
  %514 = load double*, double** %513, align 8
  %515 = call i32 @GradientBar_Paint(%struct.TYPE_6__* %11, double* %514)
  br label %516

516:                                              ; preds = %488, %482
  br label %517

517:                                              ; preds = %516, %447
  br label %518

518:                                              ; preds = %517, %406
  br label %519

519:                                              ; preds = %61, %518, %399
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Fade(i32*, double*, float, i32*, float, i32, float) #2

declare dso_local i32 @GradientBar_Paint(%struct.TYPE_6__*, double*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
