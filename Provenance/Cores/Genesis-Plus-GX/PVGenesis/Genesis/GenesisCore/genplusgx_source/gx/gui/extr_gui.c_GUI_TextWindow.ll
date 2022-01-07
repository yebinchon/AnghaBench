; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_gui.c_GUI_TextWindow.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_gui.c_GUI_TextWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i32* }

@Frame_s1_png = common dso_local global i32 0, align 4
@Frame_s1_title_png = common dso_local global i32 0, align 4
@WHITE = common dso_local global i64 0, align 8
@m_input = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@SYS_POWEROFF = common dso_local global i32 0, align 4
@Shutdown = common dso_local global i64 0, align 8
@w_pointer = common dso_local global %struct.TYPE_16__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GUI_TextWindow(%struct.TYPE_17__* %0, i8* %1, [64 x i8]* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [64 x i8]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store [64 x i8]* %2, [64 x i8]** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* @Frame_s1_png, align 4
  %21 = call %struct.TYPE_16__* @gxTextureOpenPNG(i32 %20, i32 0)
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %13, align 8
  %22 = load i32, i32* @Frame_s1_title_png, align 4
  %23 = call %struct.TYPE_16__* @gxTextureOpenPNG(i32 %22, i32 0)
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %14, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 640, %26
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %15, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 480, %31
  %33 = sdiv i32 %32, 2
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sub nsw i32 %45, %48
  %50 = sdiv i32 %49, 2
  %51 = add nsw i32 %38, %50
  %52 = load i32, i32* %10, align 4
  %53 = sdiv i32 %52, 2
  %54 = add nsw i32 %51, %53
  store i32 %54, i32* %17, align 4
  store i32* null, i32** %18, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %57, i64 1
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = icmp ne %struct.TYPE_14__* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %5
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %64, i64 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %18, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %71, i64 1
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %61, %5
  %76 = load i32, i32* %16, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %76, %79
  store i32 %80, i32* %19, align 4
  br label %81

81:                                               ; preds = %161, %75
  %82 = load i32, i32* %19, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %165

84:                                               ; preds = %81
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %86 = call i32 @GUI_DrawMenu(%struct.TYPE_17__* %85)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %19, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @gxDrawTexture(%struct.TYPE_16__* %87, i32 %88, i32 %91, i32 %94, i32 %97, i32 230)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %19, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @gxDrawTexture(%struct.TYPE_16__* %99, i32 %100, i32 %103, i32 %106, i32 %109, i32 255)
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  %118 = load i32, i32* %16, align 4
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %121, 20
  %123 = sdiv i32 %122, 2
  %124 = add nsw i32 %118, %123
  %125 = add nsw i32 %124, 20
  %126 = load i32, i32* %19, align 4
  %127 = sub nsw i32 %125, %126
  %128 = load i64, i64* @WHITE, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i32 @FONT_writeCenter(i8* %111, i32 20, i32 %112, i32 %117, i32 %127, i32 %129)
  store i32 0, i32* %11, align 4
  br label %131

131:                                              ; preds = %158, %84
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %161

135:                                              ; preds = %131
  %136 = load [64 x i8]*, [64 x i8]** %8, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [64 x i8], [64 x i8]* %136, i64 %138
  %140 = getelementptr inbounds [64 x i8], [64 x i8]* %139, i64 0, i64 0
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %15, align 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %143, %146
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %10, align 4
  %151 = mul nsw i32 %149, %150
  %152 = add nsw i32 %148, %151
  %153 = load i32, i32* %19, align 4
  %154 = sub nsw i32 %152, %153
  %155 = load i64, i64* @WHITE, align 8
  %156 = trunc i64 %155 to i32
  %157 = call i32 @FONT_writeCenter(i8* %140, i32 %141, i32 %142, i32 %147, i32 %154, i32 %156)
  br label %158

158:                                              ; preds = %135
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %131

161:                                              ; preds = %131
  %162 = call i32 (...) @gxSetScreen()
  %163 = load i32, i32* %19, align 4
  %164 = sub nsw i32 %163, 60
  store i32 %164, i32* %19, align 4
  br label %81

165:                                              ; preds = %81
  br label %166

166:                                              ; preds = %243, %165
  %167 = load i32, i32* %12, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %244

169:                                              ; preds = %166
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %171 = call i32 @GUI_DrawMenu(%struct.TYPE_17__* %170)
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %16, align 4
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @gxDrawTexture(%struct.TYPE_16__* %172, i32 %173, i32 %174, i32 %177, i32 %180, i32 230)
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %16, align 4
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @gxDrawTexture(%struct.TYPE_16__* %182, i32 %183, i32 %184, i32 %187, i32 %190, i32 255)
  %192 = load i8*, i8** %7, align 8
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %15, align 4
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %194, %197
  %199 = load i32, i32* %16, align 4
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = sub nsw i32 %202, 20
  %204 = sdiv i32 %203, 2
  %205 = add nsw i32 %199, %204
  %206 = add nsw i32 %205, 20
  %207 = load i64, i64* @WHITE, align 8
  %208 = trunc i64 %207 to i32
  %209 = call i32 @FONT_writeCenter(i8* %192, i32 20, i32 %193, i32 %198, i32 %206, i32 %208)
  store i32 0, i32* %11, align 4
  br label %210

210:                                              ; preds = %235, %169
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* %9, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %238

214:                                              ; preds = %210
  %215 = load [64 x i8]*, [64 x i8]** %8, align 8
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [64 x i8], [64 x i8]* %215, i64 %217
  %219 = getelementptr inbounds [64 x i8], [64 x i8]* %218, i64 0, i64 0
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* %15, align 4
  %222 = load i32, i32* %15, align 4
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %222, %225
  %227 = load i32, i32* %17, align 4
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* %10, align 4
  %230 = mul nsw i32 %228, %229
  %231 = add nsw i32 %227, %230
  %232 = load i64, i64* @WHITE, align 8
  %233 = trunc i64 %232 to i32
  %234 = call i32 @FONT_writeCenter(i8* %219, i32 %220, i32 %221, i32 %226, i32 %231, i32 %233)
  br label %235

235:                                              ; preds = %214
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %11, align 4
  br label %210

238:                                              ; preds = %210
  %239 = call i32 (...) @gxSetScreen()
  %240 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @m_input, i32 0, i32 0), align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  store i32 1, i32* %12, align 4
  br label %243

243:                                              ; preds = %242, %238
  br label %166

244:                                              ; preds = %166
  store i32 0, i32* %19, align 4
  br label %245

245:                                              ; preds = %330, %244
  %246 = load i32, i32* %19, align 4
  %247 = load i32, i32* %16, align 4
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %247, %250
  %252 = icmp slt i32 %246, %251
  br i1 %252, label %253, label %334

253:                                              ; preds = %245
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %255 = call i32 @GUI_DrawMenu(%struct.TYPE_17__* %254)
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %257 = load i32, i32* %15, align 4
  %258 = load i32, i32* %16, align 4
  %259 = load i32, i32* %19, align 4
  %260 = sub nsw i32 %258, %259
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @gxDrawTexture(%struct.TYPE_16__* %256, i32 %257, i32 %260, i32 %263, i32 %266, i32 230)
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %269 = load i32, i32* %15, align 4
  %270 = load i32, i32* %16, align 4
  %271 = load i32, i32* %19, align 4
  %272 = sub nsw i32 %270, %271
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @gxDrawTexture(%struct.TYPE_16__* %268, i32 %269, i32 %272, i32 %275, i32 %278, i32 255)
  %280 = load i8*, i8** %7, align 8
  %281 = load i32, i32* %15, align 4
  %282 = load i32, i32* %15, align 4
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %282, %285
  %287 = load i32, i32* %16, align 4
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = sub nsw i32 %290, 20
  %292 = sdiv i32 %291, 2
  %293 = add nsw i32 %287, %292
  %294 = add nsw i32 %293, 20
  %295 = load i32, i32* %19, align 4
  %296 = sub nsw i32 %294, %295
  %297 = load i64, i64* @WHITE, align 8
  %298 = trunc i64 %297 to i32
  %299 = call i32 @FONT_writeCenter(i8* %280, i32 20, i32 %281, i32 %286, i32 %296, i32 %298)
  store i32 0, i32* %11, align 4
  br label %300

300:                                              ; preds = %327, %253
  %301 = load i32, i32* %11, align 4
  %302 = load i32, i32* %9, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %330

304:                                              ; preds = %300
  %305 = load [64 x i8]*, [64 x i8]** %8, align 8
  %306 = load i32, i32* %11, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [64 x i8], [64 x i8]* %305, i64 %307
  %309 = getelementptr inbounds [64 x i8], [64 x i8]* %308, i64 0, i64 0
  %310 = load i32, i32* %10, align 4
  %311 = load i32, i32* %15, align 4
  %312 = load i32, i32* %15, align 4
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = add nsw i32 %312, %315
  %317 = load i32, i32* %17, align 4
  %318 = load i32, i32* %11, align 4
  %319 = load i32, i32* %10, align 4
  %320 = mul nsw i32 %318, %319
  %321 = add nsw i32 %317, %320
  %322 = load i32, i32* %19, align 4
  %323 = sub nsw i32 %321, %322
  %324 = load i64, i64* @WHITE, align 8
  %325 = trunc i64 %324 to i32
  %326 = call i32 @FONT_writeCenter(i8* %309, i32 %310, i32 %311, i32 %316, i32 %323, i32 %325)
  br label %327

327:                                              ; preds = %304
  %328 = load i32, i32* %11, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %11, align 4
  br label %300

330:                                              ; preds = %300
  %331 = call i32 (...) @gxSetScreen()
  %332 = load i32, i32* %19, align 4
  %333 = add nsw i32 %332, 60
  store i32 %333, i32* %19, align 4
  br label %245

334:                                              ; preds = %245
  %335 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 0
  %337 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %337, i64 1
  %339 = load %struct.TYPE_14__*, %struct.TYPE_14__** %338, align 8
  %340 = icmp ne %struct.TYPE_14__* %339, null
  br i1 %340, label %341, label %349

341:                                              ; preds = %334
  %342 = load i32*, i32** %18, align 8
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %345, i64 1
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 0
  store i32* %342, i32** %348, align 8
  br label %349

349:                                              ; preds = %341, %334
  %350 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %351 = call i32 @GUI_DrawMenu(%struct.TYPE_17__* %350)
  %352 = call i32 (...) @gxSetScreen()
  %353 = call i32 @gxTextureClose(%struct.TYPE_16__** %13)
  %354 = call i32 @gxTextureClose(%struct.TYPE_16__** %14)
  ret void
}

declare dso_local %struct.TYPE_16__* @gxTextureOpenPNG(i32, i32) #1

declare dso_local i32 @GUI_DrawMenu(%struct.TYPE_17__*) #1

declare dso_local i32 @gxDrawTexture(%struct.TYPE_16__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FONT_writeCenter(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gxSetScreen(...) #1

declare dso_local i32 @gxTextureClose(%struct.TYPE_16__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
