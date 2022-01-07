; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_players.c_CG_RunLerpFrame.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_players.c_CG_RunLerpFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { double, double, double, i32, i64, i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, i64 }

@cg_animSpeed = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@cg = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@cg_debugAnim = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [21 x i8] c"Clamp lf->frameTime\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i32, float)* @CG_RunLerpFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_RunLerpFrame(i32* %0, %struct.TYPE_8__* %1, i32 %2, float %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  store float %3, float* %8, align 4
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg_animSpeed, i32 0, i32 0), align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  store double 0.000000e+00, double* %16, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store double 0.000000e+00, double* %18, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store double 0.000000e+00, double* %20, align 8
  br label %274

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 7
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = icmp ne %struct.TYPE_9__* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27, %21
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @CG_SetLerpFrameAnimation(i32* %33, %struct.TYPE_8__* %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %222

43:                                               ; preds = %37
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load double, double* %45, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store double %46, double* %48, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 5
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 7
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %11, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %43
  br label %274

62:                                               ; preds = %43
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  store i64 %71, i64* %73, align 8
  br label %85

74:                                               ; preds = %62
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %77, %81
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 4
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %74, %68
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %88, %91
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = sdiv i64 %92, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %9, align 4
  %99 = load float, float* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = sitofp i32 %100 to float
  %102 = fmul float %101, %99
  %103 = fptosi float %102 to i32
  store i32 %103, i32* %9, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %10, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %85
  %112 = load i32, i32* %10, align 4
  %113 = mul nsw i32 %112, 2
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %111, %85
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %118, label %148

118:                                              ; preds = %114
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %9, align 4
  %121 = sub nsw i32 %120, %119
  store i32 %121, i32* %9, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %118
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = srem i32 %130, %129
  store i32 %131, i32* %9, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %134, %137
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %9, align 4
  br label %147

141:                                              ; preds = %118
  %142 = load i32, i32* %10, align 4
  %143 = sub nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  %144 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 4
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %141, %126
  br label %148

148:                                              ; preds = %147, %114
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %148
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %156, %159
  %161 = sub nsw i32 %160, 1
  %162 = load i32, i32* %9, align 4
  %163 = sub nsw i32 %161, %162
  %164 = sitofp i32 %163 to double
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  store double %164, double* %166, align 8
  br label %206

167:                                              ; preds = %148
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %196

172:                                              ; preds = %167
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp sge i32 %173, %176
  br i1 %177, label %178, label %196

178:                                              ; preds = %172
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %181, %184
  %186 = sub nsw i32 %185, 1
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = srem i32 %187, %190
  %192 = sub nsw i32 %186, %191
  %193 = sitofp i32 %192 to double
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  store double %193, double* %195, align 8
  br label %205

196:                                              ; preds = %172, %167
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %199, %200
  %202 = sitofp i32 %201 to double
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  store double %202, double* %204, align 8
  br label %205

205:                                              ; preds = %196, %178
  br label %206

206:                                              ; preds = %205, %153
  %207 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = icmp sgt i64 %207, %210
  br i1 %211, label %212, label %221

212:                                              ; preds = %206
  %213 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 4
  store i64 %213, i64* %215, align 8
  %216 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg_debugAnim, i32 0, i32 0), align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %212
  %219 = call i32 @CG_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %220

220:                                              ; preds = %218, %212
  br label %221

221:                                              ; preds = %220, %206
  br label %222

222:                                              ; preds = %221, %37
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %227 = add nsw i64 %226, 200
  %228 = icmp sgt i64 %225, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %222
  %230 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 4
  store i64 %230, i64* %232, align 8
  br label %233

233:                                              ; preds = %229, %222
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 5
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %238 = icmp sgt i64 %236, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %233
  %240 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 5
  store i64 %240, i64* %242, align 8
  br label %243

243:                                              ; preds = %239, %233
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 5
  %249 = load i64, i64* %248, align 8
  %250 = icmp eq i64 %246, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %243
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 2
  store double 0.000000e+00, double* %253, align 8
  br label %274

254:                                              ; preds = %243
  %255 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0), align 8
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 5
  %258 = load i64, i64* %257, align 8
  %259 = sub nsw i64 %255, %258
  %260 = sitofp i64 %259 to float
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 4
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 5
  %266 = load i64, i64* %265, align 8
  %267 = sub nsw i64 %263, %266
  %268 = sitofp i64 %267 to float
  %269 = fdiv float %260, %268
  %270 = fpext float %269 to double
  %271 = fsub double 1.000000e+00, %270
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 2
  store double %271, double* %273, align 8
  br label %274

274:                                              ; preds = %14, %61, %254, %251
  ret void
}

declare dso_local i32 @CG_SetLerpFrameAnimation(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @CG_Printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
