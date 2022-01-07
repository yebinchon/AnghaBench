; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawScores.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawScores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32*, i32*, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@cgs = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@BIGCHAR_HEIGHT = common dso_local global i32 0, align 4
@GT_TEAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%2i\00", align 1
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@PERS_TEAM = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i32 0, align 4
@GT_CTF = common dso_local global i64 0, align 8
@PW_BLUEFLAG = common dso_local global i32 0, align 4
@TEAM_RED = common dso_local global i32 0, align 4
@PW_REDFLAG = common dso_local global i32 0, align 4
@PERS_SCORE = common dso_local global i64 0, align 8
@TEAM_SPECTATOR = common dso_local global i32 0, align 4
@SCORE_NOT_PRESENT = common dso_local global i32 0, align 4
@GT_1FCTF = common dso_local global i64 0, align 8
@PW_NEUTRALFLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @CG_DrawScores to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @CG_DrawScores(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store float %0, float* %2, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0), align 8
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 1), align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %17 = add nsw i32 %16, 8
  %18 = sitofp i32 %17 to float
  %19 = load float, float* %2, align 4
  %20 = fsub float %19, %18
  store float %20, float* %2, align 4
  %21 = load float, float* %2, align 4
  store float %21, float* %11, align 4
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 2), align 8
  %23 = load i64, i64* @GT_TEAM, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %223

25:                                               ; preds = %1
  store i32 640, i32* %7, align 4
  %26 = load float*, float** %10, align 8
  %27 = getelementptr inbounds float, float* %26, i64 0
  store float 0.000000e+00, float* %27, align 4
  %28 = load float*, float** %10, align 8
  %29 = getelementptr inbounds float, float* %28, i64 1
  store float 0.000000e+00, float* %29, align 4
  %30 = load float*, float** %10, align 8
  %31 = getelementptr inbounds float, float* %30, i64 2
  store float 1.000000e+00, float* %31, align 4
  %32 = load float*, float** %10, align 8
  %33 = getelementptr inbounds float, float* %32, i64 3
  store float 0x3FD51EB860000000, float* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i8* @va(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i8* %35, i8** %3, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @CG_DrawStrlen(i8* %36)
  %38 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %39, 8
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load float, float* %2, align 4
  %46 = fsub float %45, 4.000000e+00
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %49 = add nsw i32 %48, 8
  %50 = load float*, float** %10, align 8
  %51 = call i32 @CG_FillRect(i32 %44, float %46, i32 %47, i32 %49, float* %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @PERS_TEAM, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @TEAM_BLUE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %25
  %62 = load i32, i32* %7, align 4
  %63 = load float, float* %2, align 4
  %64 = fsub float %63, 4.000000e+00
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %67 = add nsw i32 %66, 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 8, i32 0), align 8
  %69 = call i32 @CG_DrawPic(i32 %62, float %64, i32 %65, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %61, %25
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 4
  %73 = load float, float* %2, align 4
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 @CG_DrawBigString(i32 %72, float %73, i8* %74, float 1.000000e+00)
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 2), align 8
  %77 = load i64, i64* @GT_CTF, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %110

79:                                               ; preds = %70
  %80 = load i32, i32* @PW_BLUEFLAG, align 4
  %81 = call i32* @BG_FindItemForPowerup(i32 %80)
  store i32* %81, i32** %12, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %109

84:                                               ; preds = %79
  %85 = load float, float* %2, align 4
  %86 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %87 = sitofp i32 %86 to float
  %88 = fsub float %85, %87
  %89 = fsub float %88, 8.000000e+00
  store float %89, float* %11, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 3), align 8
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %84
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 3), align 8
  %94 = icmp sle i32 %93, 2
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = load float, float* %11, align 4
  %98 = fsub float %97, 4.000000e+00
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %101 = add nsw i32 %100, 8
  %102 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 8, i32 3), align 8
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 3), align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @CG_DrawPic(i32 %96, float %98, i32 %99, i32 %101, i32 %106)
  br label %108

108:                                              ; preds = %95, %92, %84
  br label %109

109:                                              ; preds = %108, %79
  br label %110

110:                                              ; preds = %109, %70
  %111 = load float*, float** %10, align 8
  %112 = getelementptr inbounds float, float* %111, i64 0
  store float 1.000000e+00, float* %112, align 4
  %113 = load float*, float** %10, align 8
  %114 = getelementptr inbounds float, float* %113, i64 1
  store float 0.000000e+00, float* %114, align 4
  %115 = load float*, float** %10, align 8
  %116 = getelementptr inbounds float, float* %115, i64 2
  store float 0.000000e+00, float* %116, align 4
  %117 = load float*, float** %10, align 8
  %118 = getelementptr inbounds float, float* %117, i64 3
  store float 0x3FD51EB860000000, float* %118, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i8* @va(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %119)
  store i8* %120, i8** %3, align 8
  %121 = load i8*, i8** %3, align 8
  %122 = call i32 @CG_DrawStrlen(i8* %121)
  %123 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %124 = mul nsw i32 %122, %123
  %125 = add nsw i32 %124, 8
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %7, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load float, float* %2, align 4
  %131 = fsub float %130, 4.000000e+00
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %134 = add nsw i32 %133, 8
  %135 = load float*, float** %10, align 8
  %136 = call i32 @CG_FillRect(i32 %129, float %131, i32 %132, i32 %134, float* %135)
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* @PERS_TEAM, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @TEAM_RED, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %110
  %147 = load i32, i32* %7, align 4
  %148 = load float, float* %2, align 4
  %149 = fsub float %148, 4.000000e+00
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %152 = add nsw i32 %151, 8
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 8, i32 0), align 8
  %154 = call i32 @CG_DrawPic(i32 %147, float %149, i32 %150, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %146, %110
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 4
  %158 = load float, float* %2, align 4
  %159 = load i8*, i8** %3, align 8
  %160 = call i32 @CG_DrawBigString(i32 %157, float %158, i8* %159, float 1.000000e+00)
  %161 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 2), align 8
  %162 = load i64, i64* @GT_CTF, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %195

164:                                              ; preds = %155
  %165 = load i32, i32* @PW_REDFLAG, align 4
  %166 = call i32* @BG_FindItemForPowerup(i32 %165)
  store i32* %166, i32** %12, align 8
  %167 = load i32*, i32** %12, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %194

169:                                              ; preds = %164
  %170 = load float, float* %2, align 4
  %171 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %172 = sitofp i32 %171 to float
  %173 = fsub float %170, %172
  %174 = fsub float %173, 8.000000e+00
  store float %174, float* %11, align 4
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 4), align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %193

177:                                              ; preds = %169
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 4), align 4
  %179 = icmp sle i32 %178, 2
  br i1 %179, label %180, label %193

180:                                              ; preds = %177
  %181 = load i32, i32* %7, align 4
  %182 = load float, float* %11, align 4
  %183 = fsub float %182, 4.000000e+00
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %186 = add nsw i32 %185, 8
  %187 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 8, i32 2), align 8
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 4), align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @CG_DrawPic(i32 %181, float %183, i32 %184, i32 %186, i32 %191)
  br label %193

193:                                              ; preds = %180, %177, %169
  br label %194

194:                                              ; preds = %193, %164
  br label %195

195:                                              ; preds = %194, %155
  %196 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 2), align 8
  %197 = load i64, i64* @GT_CTF, align 8
  %198 = icmp sge i64 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 6), align 4
  store i32 %200, i32* %9, align 4
  br label %203

201:                                              ; preds = %195
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 7), align 8
  store i32 %202, i32* %9, align 4
  br label %203

203:                                              ; preds = %201, %199
  %204 = load i32, i32* %9, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %222

206:                                              ; preds = %203
  %207 = load i32, i32* %9, align 4
  %208 = call i8* @va(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %207)
  store i8* %208, i8** %3, align 8
  %209 = load i8*, i8** %3, align 8
  %210 = call i32 @CG_DrawStrlen(i8* %209)
  %211 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %212 = mul nsw i32 %210, %211
  %213 = add nsw i32 %212, 8
  store i32 %213, i32* %8, align 4
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* %7, align 4
  %216 = sub nsw i32 %215, %214
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %7, align 4
  %218 = add nsw i32 %217, 4
  %219 = load float, float* %2, align 4
  %220 = load i8*, i8** %3, align 8
  %221 = call i32 @CG_DrawBigString(i32 %218, float %219, i8* %220, float 1.000000e+00)
  br label %222

222:                                              ; preds = %206, %203
  br label %408

223:                                              ; preds = %1
  store i32 640, i32* %7, align 4
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = load i64, i64* @PERS_SCORE, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %6, align 4
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* @PERS_TEAM, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @TEAM_SPECTATOR, align 4
  %239 = icmp eq i32 %237, %238
  %240 = zext i1 %239 to i32
  store i32 %240, i32* %13, align 4
  %241 = load i32, i32* %4, align 4
  %242 = load i32, i32* %6, align 4
  %243 = icmp ne i32 %241, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %223
  %245 = load i32, i32* %6, align 4
  store i32 %245, i32* %5, align 4
  br label %246

246:                                              ; preds = %244, %223
  %247 = load i32, i32* %5, align 4
  %248 = load i32, i32* @SCORE_NOT_PRESENT, align 4
  %249 = icmp ne i32 %247, %248
  br i1 %249, label %250, label %319

250:                                              ; preds = %246
  %251 = load i32, i32* %5, align 4
  %252 = call i8* @va(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %251)
  store i8* %252, i8** %3, align 8
  %253 = load i8*, i8** %3, align 8
  %254 = call i32 @CG_DrawStrlen(i8* %253)
  %255 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %256 = mul nsw i32 %254, %255
  %257 = add nsw i32 %256, 8
  store i32 %257, i32* %8, align 4
  %258 = load i32, i32* %8, align 4
  %259 = load i32, i32* %7, align 4
  %260 = sub nsw i32 %259, %258
  store i32 %260, i32* %7, align 4
  %261 = load i32, i32* %13, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %296, label %263

263:                                              ; preds = %250
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* %5, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %296

267:                                              ; preds = %263
  %268 = load i32, i32* %6, align 4
  %269 = load i32, i32* %4, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %296

271:                                              ; preds = %267
  %272 = load float*, float** %10, align 8
  %273 = getelementptr inbounds float, float* %272, i64 0
  store float 1.000000e+00, float* %273, align 4
  %274 = load float*, float** %10, align 8
  %275 = getelementptr inbounds float, float* %274, i64 1
  store float 0.000000e+00, float* %275, align 4
  %276 = load float*, float** %10, align 8
  %277 = getelementptr inbounds float, float* %276, i64 2
  store float 0.000000e+00, float* %277, align 4
  %278 = load float*, float** %10, align 8
  %279 = getelementptr inbounds float, float* %278, i64 3
  store float 0x3FD51EB860000000, float* %279, align 4
  %280 = load i32, i32* %7, align 4
  %281 = load float, float* %2, align 4
  %282 = fsub float %281, 4.000000e+00
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %285 = add nsw i32 %284, 8
  %286 = load float*, float** %10, align 8
  %287 = call i32 @CG_FillRect(i32 %280, float %282, i32 %283, i32 %285, float* %286)
  %288 = load i32, i32* %7, align 4
  %289 = load float, float* %2, align 4
  %290 = fsub float %289, 4.000000e+00
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %293 = add nsw i32 %292, 8
  %294 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 8, i32 0), align 8
  %295 = call i32 @CG_DrawPic(i32 %288, float %290, i32 %291, i32 %293, i32 %294)
  br label %313

296:                                              ; preds = %267, %263, %250
  %297 = load float*, float** %10, align 8
  %298 = getelementptr inbounds float, float* %297, i64 0
  store float 5.000000e-01, float* %298, align 4
  %299 = load float*, float** %10, align 8
  %300 = getelementptr inbounds float, float* %299, i64 1
  store float 5.000000e-01, float* %300, align 4
  %301 = load float*, float** %10, align 8
  %302 = getelementptr inbounds float, float* %301, i64 2
  store float 5.000000e-01, float* %302, align 4
  %303 = load float*, float** %10, align 8
  %304 = getelementptr inbounds float, float* %303, i64 3
  store float 0x3FD51EB860000000, float* %304, align 4
  %305 = load i32, i32* %7, align 4
  %306 = load float, float* %2, align 4
  %307 = fsub float %306, 4.000000e+00
  %308 = load i32, i32* %8, align 4
  %309 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %310 = add nsw i32 %309, 8
  %311 = load float*, float** %10, align 8
  %312 = call i32 @CG_FillRect(i32 %305, float %307, i32 %308, i32 %310, float* %311)
  br label %313

313:                                              ; preds = %296, %271
  %314 = load i32, i32* %7, align 4
  %315 = add nsw i32 %314, 4
  %316 = load float, float* %2, align 4
  %317 = load i8*, i8** %3, align 8
  %318 = call i32 @CG_DrawBigString(i32 %315, float %316, i8* %317, float 1.000000e+00)
  br label %319

319:                                              ; preds = %313, %246
  %320 = load i32, i32* %4, align 4
  %321 = load i32, i32* @SCORE_NOT_PRESENT, align 4
  %322 = icmp ne i32 %320, %321
  br i1 %322, label %323, label %388

323:                                              ; preds = %319
  %324 = load i32, i32* %4, align 4
  %325 = call i8* @va(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %324)
  store i8* %325, i8** %3, align 8
  %326 = load i8*, i8** %3, align 8
  %327 = call i32 @CG_DrawStrlen(i8* %326)
  %328 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %329 = mul nsw i32 %327, %328
  %330 = add nsw i32 %329, 8
  store i32 %330, i32* %8, align 4
  %331 = load i32, i32* %8, align 4
  %332 = load i32, i32* %7, align 4
  %333 = sub nsw i32 %332, %331
  store i32 %333, i32* %7, align 4
  %334 = load i32, i32* %13, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %365, label %336

336:                                              ; preds = %323
  %337 = load i32, i32* %6, align 4
  %338 = load i32, i32* %4, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %365

340:                                              ; preds = %336
  %341 = load float*, float** %10, align 8
  %342 = getelementptr inbounds float, float* %341, i64 0
  store float 0.000000e+00, float* %342, align 4
  %343 = load float*, float** %10, align 8
  %344 = getelementptr inbounds float, float* %343, i64 1
  store float 0.000000e+00, float* %344, align 4
  %345 = load float*, float** %10, align 8
  %346 = getelementptr inbounds float, float* %345, i64 2
  store float 1.000000e+00, float* %346, align 4
  %347 = load float*, float** %10, align 8
  %348 = getelementptr inbounds float, float* %347, i64 3
  store float 0x3FD51EB860000000, float* %348, align 4
  %349 = load i32, i32* %7, align 4
  %350 = load float, float* %2, align 4
  %351 = fsub float %350, 4.000000e+00
  %352 = load i32, i32* %8, align 4
  %353 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %354 = add nsw i32 %353, 8
  %355 = load float*, float** %10, align 8
  %356 = call i32 @CG_FillRect(i32 %349, float %351, i32 %352, i32 %354, float* %355)
  %357 = load i32, i32* %7, align 4
  %358 = load float, float* %2, align 4
  %359 = fsub float %358, 4.000000e+00
  %360 = load i32, i32* %8, align 4
  %361 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %362 = add nsw i32 %361, 8
  %363 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 8, i32 0), align 8
  %364 = call i32 @CG_DrawPic(i32 %357, float %359, i32 %360, i32 %362, i32 %363)
  br label %382

365:                                              ; preds = %336, %323
  %366 = load float*, float** %10, align 8
  %367 = getelementptr inbounds float, float* %366, i64 0
  store float 5.000000e-01, float* %367, align 4
  %368 = load float*, float** %10, align 8
  %369 = getelementptr inbounds float, float* %368, i64 1
  store float 5.000000e-01, float* %369, align 4
  %370 = load float*, float** %10, align 8
  %371 = getelementptr inbounds float, float* %370, i64 2
  store float 5.000000e-01, float* %371, align 4
  %372 = load float*, float** %10, align 8
  %373 = getelementptr inbounds float, float* %372, i64 3
  store float 0x3FD51EB860000000, float* %373, align 4
  %374 = load i32, i32* %7, align 4
  %375 = load float, float* %2, align 4
  %376 = fsub float %375, 4.000000e+00
  %377 = load i32, i32* %8, align 4
  %378 = load i32, i32* @BIGCHAR_HEIGHT, align 4
  %379 = add nsw i32 %378, 8
  %380 = load float*, float** %10, align 8
  %381 = call i32 @CG_FillRect(i32 %374, float %376, i32 %377, i32 %379, float* %380)
  br label %382

382:                                              ; preds = %365, %340
  %383 = load i32, i32* %7, align 4
  %384 = add nsw i32 %383, 4
  %385 = load float, float* %2, align 4
  %386 = load i8*, i8** %3, align 8
  %387 = call i32 @CG_DrawBigString(i32 %384, float %385, i8* %386, float 1.000000e+00)
  br label %388

388:                                              ; preds = %382, %319
  %389 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 7), align 8
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %407

391:                                              ; preds = %388
  %392 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 7), align 8
  %393 = call i8* @va(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %392)
  store i8* %393, i8** %3, align 8
  %394 = load i8*, i8** %3, align 8
  %395 = call i32 @CG_DrawStrlen(i8* %394)
  %396 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %397 = mul nsw i32 %395, %396
  %398 = add nsw i32 %397, 8
  store i32 %398, i32* %8, align 4
  %399 = load i32, i32* %8, align 4
  %400 = load i32, i32* %7, align 4
  %401 = sub nsw i32 %400, %399
  store i32 %401, i32* %7, align 4
  %402 = load i32, i32* %7, align 4
  %403 = add nsw i32 %402, 4
  %404 = load float, float* %2, align 4
  %405 = load i8*, i8** %3, align 8
  %406 = call i32 @CG_DrawBigString(i32 %403, float %404, i8* %405, float 1.000000e+00)
  br label %407

407:                                              ; preds = %391, %388
  br label %408

408:                                              ; preds = %407, %222
  %409 = load float, float* %11, align 4
  %410 = fsub float %409, 8.000000e+00
  ret float %410
}

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @CG_DrawStrlen(i8*) #1

declare dso_local i32 @CG_FillRect(i32, float, i32, i32, float*) #1

declare dso_local i32 @CG_DrawPic(i32, float, i32, i32, i32) #1

declare dso_local i32 @CG_DrawBigString(i32, float, i8*, float) #1

declare dso_local i32* @BG_FindItemForPowerup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
