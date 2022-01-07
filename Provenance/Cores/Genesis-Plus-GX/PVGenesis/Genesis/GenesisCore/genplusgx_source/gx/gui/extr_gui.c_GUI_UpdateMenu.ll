; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_gui.c_GUI_UpdateMenu.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_gui.c_GUI_UpdateMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_12__**, %struct.TYPE_15__*, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i64* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i8* }

@m_input = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@PAD_BUTTON_UP = common dso_local global i32 0, align 4
@PAD_BUTTON_DOWN = common dso_local global i32 0, align 4
@PAD_BUTTON_LEFT = common dso_local global i32 0, align 4
@PAD_BUTTON_RIGHT = common dso_local global i32 0, align 4
@PAD_BUTTON_A = common dso_local global i32 0, align 4
@PAD_BUTTON_B = common dso_local global i32 0, align 4
@PAD_TRIGGER_Z = common dso_local global i32 0, align 4
@BUTTON_OVER_SFX = common dso_local global i32 0, align 4
@VOICE_MONO_16BIT = common dso_local global i32 0, align 4
@button_over_pcm = common dso_local global i64 0, align 8
@button_over_pcm_size = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BUTTON_SELECT_SFX = common dso_local global i32 0, align 4
@button_select_pcm = common dso_local global i64 0, align 8
@button_select_pcm_size = common dso_local global i32 0, align 4
@BUTTON_ACTIVE = common dso_local global i32 0, align 4
@BUTTON_VISIBLE = common dso_local global i32 0, align 4
@SYS_POWEROFF = common dso_local global i32 0, align 4
@Shutdown = common dso_local global i64 0, align 8
@w_pointer = common dso_local global %struct.TYPE_17__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GUI_UpdateMenu(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = call i32 (...) @gxSetScreen()
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @m_input, i32 0, i32 0), align 8
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %164

24:                                               ; preds = %1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i64 %29
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %8, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @PAD_BUTTON_UP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %24
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 5
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %47
  br label %58

58:                                               ; preds = %57, %35
  br label %163

59:                                               ; preds = %24
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @PAD_BUTTON_DOWN, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %59
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 5
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %64
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 1
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %88, %77
  br label %94

94:                                               ; preds = %93, %64
  br label %162

95:                                               ; preds = %59
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @PAD_BUTTON_LEFT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %95
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 5
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 2
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %117, %112
  br label %123

123:                                              ; preds = %122, %100
  br label %161

124:                                              ; preds = %95
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* @PAD_BUTTON_RIGHT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %160

129:                                              ; preds = %124
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 5
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 3
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %129
  %143 = load i32, i32* %7, align 4
  %144 = sub nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i32, i32* %6, align 4
  %151 = sub nsw i32 %150, 1
  %152 = icmp slt i32 %149, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %142
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %153, %142
  br label %159

159:                                              ; preds = %158, %129
  br label %160

160:                                              ; preds = %159, %124
  br label %161

161:                                              ; preds = %160, %123
  br label %162

162:                                              ; preds = %161, %94
  br label %163

163:                                              ; preds = %162, %58
  br label %164

164:                                              ; preds = %163, %1
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* @PAD_BUTTON_A, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %196

169:                                              ; preds = %164
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  store i32 1, i32* %4, align 4
  br label %195

174:                                              ; preds = %169
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %174
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %180, align 4
  br label %194

183:                                              ; preds = %174
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, 1
  %187 = icmp eq i32 %184, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %188, %183
  br label %194

194:                                              ; preds = %193, %178
  br label %195

195:                                              ; preds = %194, %173
  br label %208

196:                                              ; preds = %164
  %197 = load i32, i32* %3, align 4
  %198 = load i32, i32* @PAD_BUTTON_B, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %196
  %202 = load i32, i32* %3, align 4
  %203 = load i32, i32* @PAD_TRIGGER_Z, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201, %196
  store i32 -1, i32* %4, align 4
  br label %207

207:                                              ; preds = %206, %201
  br label %208

208:                                              ; preds = %207, %195
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %5, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %289

214:                                              ; preds = %208
  %215 = load i32, i32* %5, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %247

218:                                              ; preds = %214
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 4
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i64 %223
  store %struct.TYPE_16__* %224, %struct.TYPE_16__** %8, align 8
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @BUTTON_OVER_SFX, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %246

231:                                              ; preds = %218
  %232 = call i32 (...) @ASND_GetFirstUnusedVoice()
  %233 = load i32, i32* @VOICE_MONO_16BIT, align 4
  %234 = load i64, i64* @button_over_pcm, align 8
  %235 = inttoptr i64 %234 to i32*
  %236 = load i32, i32* @button_over_pcm_size, align 4
  %237 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @config, i32 0, i32 0), align 8
  %238 = trunc i64 %237 to i32
  %239 = mul nsw i32 %238, 255
  %240 = sdiv i32 %239, 100
  %241 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @config, i32 0, i32 0), align 8
  %242 = trunc i64 %241 to i32
  %243 = mul nsw i32 %242, 255
  %244 = sdiv i32 %243, 100
  %245 = call i32 @ASND_SetVoice(i32 %232, i32 %233, i32 22050, i32 0, i32* %235, i32 %236, i32 %240, i32 %244, i32* null)
  br label %246

246:                                              ; preds = %231, %218
  br label %285

247:                                              ; preds = %214
  %248 = load i32, i32* %5, align 4
  %249 = load i32, i32* %7, align 4
  %250 = add nsw i32 %249, 2
  %251 = icmp slt i32 %248, %250
  br i1 %251, label %252, label %284

252:                                              ; preds = %247
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 7
  %255 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %254, align 8
  %256 = load i32, i32* %5, align 4
  %257 = load i32, i32* %7, align 4
  %258 = sub nsw i32 %256, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %255, i64 %259
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %260, align 8
  store %struct.TYPE_16__* %261, %struct.TYPE_16__** %8, align 8
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @BUTTON_OVER_SFX, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %283

268:                                              ; preds = %252
  %269 = call i32 (...) @ASND_GetFirstUnusedVoice()
  %270 = load i32, i32* @VOICE_MONO_16BIT, align 4
  %271 = load i64, i64* @button_over_pcm, align 8
  %272 = inttoptr i64 %271 to i32*
  %273 = load i32, i32* @button_over_pcm_size, align 4
  %274 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @config, i32 0, i32 0), align 8
  %275 = trunc i64 %274 to i32
  %276 = mul nsw i32 %275, 255
  %277 = sdiv i32 %276, 100
  %278 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @config, i32 0, i32 0), align 8
  %279 = trunc i64 %278 to i32
  %280 = mul nsw i32 %279, 255
  %281 = sdiv i32 %280, 100
  %282 = call i32 @ASND_SetVoice(i32 %269, i32 %270, i32 22050, i32 0, i32* %272, i32 %273, i32 %277, i32 %281, i32* null)
  br label %283

283:                                              ; preds = %268, %252
  br label %284

284:                                              ; preds = %283, %247
  br label %285

285:                                              ; preds = %284, %246
  %286 = load i32, i32* %5, align 4
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 0
  store i32 %286, i32* %288, align 8
  br label %289

289:                                              ; preds = %285, %208
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 5
  %292 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %292, i64 1
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %293, align 8
  %295 = icmp ne %struct.TYPE_12__* %294, null
  br i1 %295, label %296, label %336

296:                                              ; preds = %289
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %5, align 4
  %301 = add nsw i32 %299, %300
  %302 = load i32, i32* %6, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %326

304:                                              ; preds = %296
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 6
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %306, align 8
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* %5, align 4
  %312 = add nsw i32 %310, %311
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i64 %313
  store %struct.TYPE_15__* %314, %struct.TYPE_15__** %9, align 8
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 5
  %317 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %317, i64 1
  %319 = load %struct.TYPE_12__*, %struct.TYPE_12__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 0
  %324 = load i8*, i8** %323, align 8
  %325 = call i32 @strcpy(i32 %321, i8* %324)
  br label %335

326:                                              ; preds = %296
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 5
  %329 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %329, i64 1
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @strcpy(i32 %333, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %335

335:                                              ; preds = %326, %304
  br label %336

336:                                              ; preds = %335, %289
  %337 = load i32, i32* %4, align 4
  %338 = icmp sgt i32 %337, 0
  br i1 %338, label %339, label %373

339:                                              ; preds = %336
  %340 = load i32, i32* %5, align 4
  %341 = load i32, i32* %7, align 4
  %342 = icmp slt i32 %340, %341
  br i1 %342, label %343, label %372

343:                                              ; preds = %339
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 4
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %345, align 8
  %347 = load i32, i32* %5, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i64 %348
  store %struct.TYPE_16__* %349, %struct.TYPE_16__** %8, align 8
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @BUTTON_SELECT_SFX, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %371

356:                                              ; preds = %343
  %357 = call i32 (...) @ASND_GetFirstUnusedVoice()
  %358 = load i32, i32* @VOICE_MONO_16BIT, align 4
  %359 = load i64, i64* @button_select_pcm, align 8
  %360 = inttoptr i64 %359 to i32*
  %361 = load i32, i32* @button_select_pcm_size, align 4
  %362 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @config, i32 0, i32 0), align 8
  %363 = trunc i64 %362 to i32
  %364 = mul nsw i32 %363, 255
  %365 = sdiv i32 %364, 100
  %366 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @config, i32 0, i32 0), align 8
  %367 = trunc i64 %366 to i32
  %368 = mul nsw i32 %367, 255
  %369 = sdiv i32 %368, 100
  %370 = call i32 @ASND_SetVoice(i32 %357, i32 %358, i32 22050, i32 0, i32* %360, i32 %361, i32 %365, i32 %369, i32* null)
  br label %371

371:                                              ; preds = %356, %343
  br label %372

372:                                              ; preds = %371, %339
  br label %373

373:                                              ; preds = %372, %336
  %374 = load i32, i32* %4, align 4
  ret i32 %374
}

declare dso_local i32 @gxSetScreen(...) #1

declare dso_local i32 @ASND_SetVoice(i32, i32, i32, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @ASND_GetFirstUnusedVoice(...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
