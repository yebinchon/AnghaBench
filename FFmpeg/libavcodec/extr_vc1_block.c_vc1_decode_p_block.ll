; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_block.c_vc1_decode_p_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_block.c_vc1_decode_p_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32**, i32*, %struct.TYPE_11__, i32, i32*, i32, i32, i32*, i32, i64, %struct.TYPE_14__ }
%struct.TYPE_11__ = type { i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)*, i32 (i32*)*, i32 (i32*, i32, i32*)* }
%struct.TYPE_14__ = type { %struct.TYPE_10__, %struct.TYPE_12__, i32 }
%struct.TYPE_10__ = type { i32 (i32*, i32*, i32)* }
%struct.TYPE_12__ = type { i32 (i32*)* }

@ff_vc1_ttblk_to_tt = common dso_local global i32** null, align 8
@ff_vc1_ttblk_vlc = common dso_local global %struct.TYPE_15__* null, align 8
@VC1_TTBLK_VLC_BITS = common dso_local global i32 0, align 4
@ff_vc1_subblkpat_vlc = common dso_local global %struct.TYPE_16__* null, align 8
@VC1_SUBBLKPAT_VLC_BITS = common dso_local global i32 0, align 4
@TT_8X4_TOP = common dso_local global i32 0, align 4
@TT_8X4_BOTTOM = common dso_local global i32 0, align 4
@TT_4X8_RIGHT = common dso_local global i32 0, align 4
@TT_4X8_LEFT = common dso_local global i32 0, align 4
@ff_vc1_simple_progressive_4x4_zz = common dso_local global i32* null, align 8
@ff_vc1_adv_interlaced_4x4_zz = common dso_local global i32* null, align 8
@ff_vc1_adv_interlaced_8x4_zz = common dso_local global i32* null, align 8
@ff_vc1_adv_interlaced_4x8_zz = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i32, i32, i32, i32, i32*, i32, i32, i32*)* @vc1_decode_p_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc1_decode_p_block(%struct.TYPE_13__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_14__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 12
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %22, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  store i32* %43, i32** %23, align 8
  store i32 0, i32* %26, align 4
  %44 = load i32, i32* %16, align 4
  %45 = and i32 %44, 7
  store i32 %45, i32* %33, align 4
  store i32 0, i32* %34, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @FFABS(i32 %46)
  store i32 %47, i32* %35, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32 (i32*)*, i32 (i32*)** %50, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = call i32 %51(i32* %52)
  %54 = load i32, i32* %16, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %76

56:                                               ; preds = %10
  %57 = load i32**, i32*** @ff_vc1_ttblk_to_tt, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32*, i32** %57, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load i32*, i32** %23, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ff_vc1_ttblk_vlc, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @VC1_TTBLK_VLC_BITS, align 4
  %72 = call i32 @get_vlc2(i32* %63, i32 %70, i32 %71, i32 1)
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %62, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %33, align 4
  br label %76

76:                                               ; preds = %56, %10
  %77 = load i32, i32* %33, align 4
  %78 = icmp eq i32 %77, 131
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load i32*, i32** %23, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ff_vc1_subblkpat_vlc, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @VC1_SUBBLKPAT_VLC_BITS, align 4
  %89 = call i32 @get_vlc2(i32* %80, i32 %87, i32 %88, i32 1)
  %90 = add nsw i32 %89, 1
  %91 = xor i32 %90, -1
  store i32 %91, i32* %26, align 4
  br label %92

92:                                               ; preds = %79, %76
  %93 = load i32, i32* %33, align 4
  %94 = icmp ne i32 %93, 128
  br i1 %94, label %95, label %148

95:                                               ; preds = %92
  %96 = load i32, i32* %33, align 4
  %97 = icmp ne i32 %96, 131
  br i1 %97, label %98, label %148

98:                                               ; preds = %95
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 11
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %121, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %104, -1
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i32, i32* %16, align 4
  %108 = and i32 %107, 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %110, %106, %103
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %148, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %17, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %148, label %121

121:                                              ; preds = %118, %110, %98
  %122 = load i32*, i32** %23, align 8
  %123 = call i32 @decode012(i32* %122)
  store i32 %123, i32* %26, align 4
  %124 = load i32, i32* %26, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* %26, align 4
  %128 = xor i32 %127, 3
  store i32 %128, i32* %26, align 4
  br label %129

129:                                              ; preds = %126, %121
  %130 = load i32, i32* %33, align 4
  %131 = load i32, i32* @TT_8X4_TOP, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %33, align 4
  %135 = load i32, i32* @TT_8X4_BOTTOM, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %129
  store i32 129, i32* %33, align 4
  br label %138

138:                                              ; preds = %137, %133
  %139 = load i32, i32* %33, align 4
  %140 = load i32, i32* @TT_4X8_RIGHT, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* %33, align 4
  %144 = load i32, i32* @TT_4X8_LEFT, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %142, %138
  store i32 130, i32* %33, align 4
  br label %147

147:                                              ; preds = %146, %142
  br label %148

148:                                              ; preds = %147, %118, %113, %95, %92
  %149 = load i32, i32* %35, align 4
  %150 = mul nsw i32 %149, 2
  %151 = load i32, i32* %15, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %158

154:                                              ; preds = %148
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  br label %158

158:                                              ; preds = %154, %153
  %159 = phi i32 [ 0, %153 ], [ %157, %154 ]
  %160 = add nsw i32 %150, %159
  store i32 %160, i32* %27, align 4
  %161 = load i32, i32* %33, align 4
  %162 = load i32, i32* @TT_8X4_TOP, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %168, label %164

164:                                              ; preds = %158
  %165 = load i32, i32* %33, align 4
  %166 = load i32, i32* @TT_8X4_BOTTOM, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %164, %158
  %169 = load i32, i32* %33, align 4
  %170 = load i32, i32* @TT_8X4_TOP, align 4
  %171 = icmp eq i32 %169, %170
  %172 = zext i1 %171 to i32
  %173 = sub nsw i32 2, %172
  store i32 %173, i32* %26, align 4
  store i32 129, i32* %33, align 4
  br label %174

174:                                              ; preds = %168, %164
  %175 = load i32, i32* %33, align 4
  %176 = load i32, i32* @TT_4X8_RIGHT, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = load i32, i32* %33, align 4
  %180 = load i32, i32* @TT_4X8_LEFT, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %178, %174
  %183 = load i32, i32* %33, align 4
  %184 = load i32, i32* @TT_4X8_LEFT, align 4
  %185 = icmp eq i32 %183, %184
  %186 = zext i1 %185 to i32
  %187 = sub nsw i32 2, %186
  store i32 %187, i32* %26, align 4
  store i32 130, i32* %33, align 4
  br label %188

188:                                              ; preds = %182, %178
  %189 = load i32, i32* %33, align 4
  switch i32 %189, label %769 [
    i32 128, label %190
    i32 131, label %302
    i32 129, label %468
    i32 130, label %623
  ]

190:                                              ; preds = %188
  store i32 15, i32* %34, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %30, align 4
  br label %191

191:                                              ; preds = %269, %190
  %192 = load i32, i32* %30, align 4
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  br i1 %194, label %195, label %270

195:                                              ; preds = %191
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @vc1_decode_ac_coeff(%struct.TYPE_13__* %196, i32* %30, i32* %31, i32* %32, i32 %199)
  store i32 %200, i32* %36, align 4
  %201 = load i32, i32* %36, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %195
  %204 = load i32, i32* %36, align 4
  store i32 %204, i32* %11, align 4
  br label %782

205:                                              ; preds = %195
  %206 = load i32, i32* %31, align 4
  %207 = load i32, i32* %24, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %24, align 4
  %209 = load i32, i32* %24, align 4
  %210 = icmp sgt i32 %209, 63
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  br label %270

212:                                              ; preds = %205
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 7
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %228, label %217

217:                                              ; preds = %212
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 2
  %220 = load i32**, i32*** %219, align 8
  %221 = getelementptr inbounds i32*, i32** %220, i64 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %24, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %24, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* %29, align 4
  br label %237

228:                                              ; preds = %212
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %24, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %24, align 4
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %29, align 4
  br label %237

237:                                              ; preds = %228, %217
  %238 = load i32, i32* %32, align 4
  %239 = load i32, i32* %27, align 4
  %240 = mul nsw i32 %238, %239
  %241 = load i32*, i32** %13, align 8
  %242 = load i32, i32* %29, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  store i32 %240, i32* %244, align 4
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %269, label %249

249:                                              ; preds = %237
  %250 = load i32*, i32** %13, align 8
  %251 = load i32, i32* %29, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %249
  %257 = load i32, i32* %35, align 4
  %258 = sub nsw i32 0, %257
  br label %261

259:                                              ; preds = %249
  %260 = load i32, i32* %35, align 4
  br label %261

261:                                              ; preds = %259, %256
  %262 = phi i32 [ %258, %256 ], [ %260, %259 ]
  %263 = load i32*, i32** %13, align 8
  %264 = load i32, i32* %29, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, %262
  store i32 %268, i32* %266, align 4
  br label %269

269:                                              ; preds = %261, %237
  br label %191

270:                                              ; preds = %211, %191
  %271 = load i32, i32* %20, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %301, label %273

273:                                              ; preds = %270
  %274 = load i32, i32* %24, align 4
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %276, label %285

276:                                              ; preds = %273
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 4
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 7
  %280 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %279, align 8
  %281 = load i32*, i32** %18, align 8
  %282 = load i32, i32* %19, align 4
  %283 = load i32*, i32** %13, align 8
  %284 = call i32 %280(i32* %281, i32 %282, i32* %283)
  br label %300

285:                                              ; preds = %273
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 6
  %289 = load i32 (i32*)*, i32 (i32*)** %288, align 8
  %290 = load i32*, i32** %13, align 8
  %291 = call i32 %289(i32* %290)
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 0
  %295 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %294, align 8
  %296 = load i32*, i32** %13, align 8
  %297 = load i32*, i32** %18, align 8
  %298 = load i32, i32* %19, align 4
  %299 = call i32 %295(i32* %296, i32* %297, i32 %298)
  br label %300

300:                                              ; preds = %285, %276
  br label %301

301:                                              ; preds = %300, %270
  br label %769

302:                                              ; preds = %188
  %303 = load i32, i32* %26, align 4
  %304 = xor i32 %303, -1
  %305 = and i32 %304, 15
  store i32 %305, i32* %34, align 4
  store i32 0, i32* %25, align 4
  br label %306

306:                                              ; preds = %464, %302
  %307 = load i32, i32* %25, align 4
  %308 = icmp slt i32 %307, 4
  br i1 %308, label %309, label %467

309:                                              ; preds = %306
  %310 = load i32, i32* %26, align 4
  %311 = load i32, i32* %25, align 4
  %312 = sub nsw i32 3, %311
  %313 = shl i32 1, %312
  %314 = and i32 %310, %313
  store i32 %314, i32* %30, align 4
  store i32 0, i32* %24, align 4
  %315 = load i32, i32* %25, align 4
  %316 = and i32 %315, 1
  %317 = mul nsw i32 %316, 4
  %318 = load i32, i32* %25, align 4
  %319 = and i32 %318, 2
  %320 = mul nsw i32 %319, 16
  %321 = add nsw i32 %317, %320
  store i32 %321, i32* %28, align 4
  br label %322

322:                                              ; preds = %400, %309
  %323 = load i32, i32* %30, align 4
  %324 = icmp ne i32 %323, 0
  %325 = xor i1 %324, true
  br i1 %325, label %326, label %401

326:                                              ; preds = %322
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 8
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @vc1_decode_ac_coeff(%struct.TYPE_13__* %327, i32* %30, i32* %31, i32* %32, i32 %330)
  store i32 %331, i32* %37, align 4
  %332 = load i32, i32* %37, align 4
  %333 = icmp slt i32 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %326
  %335 = load i32, i32* %37, align 4
  store i32 %335, i32* %11, align 4
  br label %782

336:                                              ; preds = %326
  %337 = load i32, i32* %31, align 4
  %338 = load i32, i32* %24, align 4
  %339 = add nsw i32 %338, %337
  store i32 %339, i32* %24, align 4
  %340 = load i32, i32* %24, align 4
  %341 = icmp sgt i32 %340, 15
  br i1 %341, label %342, label %343

342:                                              ; preds = %336
  br label %401

343:                                              ; preds = %336
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 7
  %346 = load i32, i32* %345, align 8
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %355, label %348

348:                                              ; preds = %343
  %349 = load i32*, i32** @ff_vc1_simple_progressive_4x4_zz, align 8
  %350 = load i32, i32* %24, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %24, align 4
  %352 = sext i32 %350 to i64
  %353 = getelementptr inbounds i32, i32* %349, i64 %352
  %354 = load i32, i32* %353, align 4
  store i32 %354, i32* %29, align 4
  br label %362

355:                                              ; preds = %343
  %356 = load i32*, i32** @ff_vc1_adv_interlaced_4x4_zz, align 8
  %357 = load i32, i32* %24, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %24, align 4
  %359 = sext i32 %357 to i64
  %360 = getelementptr inbounds i32, i32* %356, i64 %359
  %361 = load i32, i32* %360, align 4
  store i32 %361, i32* %29, align 4
  br label %362

362:                                              ; preds = %355, %348
  %363 = load i32, i32* %32, align 4
  %364 = load i32, i32* %27, align 4
  %365 = mul nsw i32 %363, %364
  %366 = load i32*, i32** %13, align 8
  %367 = load i32, i32* %29, align 4
  %368 = load i32, i32* %28, align 4
  %369 = add nsw i32 %367, %368
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %366, i64 %370
  store i32 %365, i32* %371, align 4
  %372 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 5
  %374 = load i32, i32* %373, align 8
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %400, label %376

376:                                              ; preds = %362
  %377 = load i32*, i32** %13, align 8
  %378 = load i32, i32* %29, align 4
  %379 = load i32, i32* %28, align 4
  %380 = add nsw i32 %378, %379
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %377, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = icmp slt i32 %383, 0
  br i1 %384, label %385, label %388

385:                                              ; preds = %376
  %386 = load i32, i32* %35, align 4
  %387 = sub nsw i32 0, %386
  br label %390

388:                                              ; preds = %376
  %389 = load i32, i32* %35, align 4
  br label %390

390:                                              ; preds = %388, %385
  %391 = phi i32 [ %387, %385 ], [ %389, %388 ]
  %392 = load i32*, i32** %13, align 8
  %393 = load i32, i32* %29, align 4
  %394 = load i32, i32* %28, align 4
  %395 = add nsw i32 %393, %394
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %392, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = add nsw i32 %398, %391
  store i32 %399, i32* %397, align 4
  br label %400

400:                                              ; preds = %390, %362
  br label %322

401:                                              ; preds = %342, %322
  %402 = load i32, i32* %26, align 4
  %403 = load i32, i32* %25, align 4
  %404 = sub nsw i32 3, %403
  %405 = shl i32 1, %404
  %406 = and i32 %402, %405
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %463, label %408

408:                                              ; preds = %401
  %409 = load i32, i32* %20, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %463, label %411

411:                                              ; preds = %408
  %412 = load i32, i32* %24, align 4
  %413 = icmp eq i32 %412, 1
  br i1 %413, label %414, label %438

414:                                              ; preds = %411
  %415 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %416 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %415, i32 0, i32 4
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i32 0, i32 5
  %418 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %417, align 8
  %419 = load i32*, i32** %18, align 8
  %420 = load i32, i32* %25, align 4
  %421 = and i32 %420, 1
  %422 = mul nsw i32 %421, 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %419, i64 %423
  %425 = load i32, i32* %25, align 4
  %426 = and i32 %425, 2
  %427 = mul nsw i32 %426, 2
  %428 = load i32, i32* %19, align 4
  %429 = mul nsw i32 %427, %428
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %424, i64 %430
  %432 = load i32, i32* %19, align 4
  %433 = load i32*, i32** %13, align 8
  %434 = load i32, i32* %28, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %433, i64 %435
  %437 = call i32 %418(i32* %431, i32 %432, i32* %436)
  br label %462

438:                                              ; preds = %411
  %439 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %440 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %439, i32 0, i32 4
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i32 0, i32 4
  %442 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %441, align 8
  %443 = load i32*, i32** %18, align 8
  %444 = load i32, i32* %25, align 4
  %445 = and i32 %444, 1
  %446 = mul nsw i32 %445, 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %443, i64 %447
  %449 = load i32, i32* %25, align 4
  %450 = and i32 %449, 2
  %451 = mul nsw i32 %450, 2
  %452 = load i32, i32* %19, align 4
  %453 = mul nsw i32 %451, %452
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i32, i32* %448, i64 %454
  %456 = load i32, i32* %19, align 4
  %457 = load i32*, i32** %13, align 8
  %458 = load i32, i32* %28, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %457, i64 %459
  %461 = call i32 %442(i32* %455, i32 %456, i32* %460)
  br label %462

462:                                              ; preds = %438, %414
  br label %463

463:                                              ; preds = %462, %408, %401
  br label %464

464:                                              ; preds = %463
  %465 = load i32, i32* %25, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %25, align 4
  br label %306

467:                                              ; preds = %306
  br label %769

468:                                              ; preds = %188
  %469 = load i32, i32* %26, align 4
  %470 = and i32 %469, 2
  %471 = mul nsw i32 %470, 6
  %472 = load i32, i32* %26, align 4
  %473 = and i32 %472, 1
  %474 = mul nsw i32 %473, 3
  %475 = add nsw i32 %471, %474
  %476 = xor i32 %475, -1
  %477 = and i32 %476, 15
  store i32 %477, i32* %34, align 4
  store i32 0, i32* %25, align 4
  br label %478

478:                                              ; preds = %619, %468
  %479 = load i32, i32* %25, align 4
  %480 = icmp slt i32 %479, 2
  br i1 %480, label %481, label %622

481:                                              ; preds = %478
  %482 = load i32, i32* %26, align 4
  %483 = load i32, i32* %25, align 4
  %484 = sub nsw i32 1, %483
  %485 = shl i32 1, %484
  %486 = and i32 %482, %485
  store i32 %486, i32* %30, align 4
  store i32 0, i32* %24, align 4
  %487 = load i32, i32* %25, align 4
  %488 = mul nsw i32 %487, 32
  store i32 %488, i32* %28, align 4
  br label %489

489:                                              ; preds = %567, %481
  %490 = load i32, i32* %30, align 4
  %491 = icmp ne i32 %490, 0
  %492 = xor i1 %491, true
  br i1 %492, label %493, label %568

493:                                              ; preds = %489
  %494 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %495 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %496 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %495, i32 0, i32 8
  %497 = load i32, i32* %496, align 4
  %498 = call i32 @vc1_decode_ac_coeff(%struct.TYPE_13__* %494, i32* %30, i32* %31, i32* %32, i32 %497)
  store i32 %498, i32* %38, align 4
  %499 = load i32, i32* %38, align 4
  %500 = icmp slt i32 %499, 0
  br i1 %500, label %501, label %503

501:                                              ; preds = %493
  %502 = load i32, i32* %38, align 4
  store i32 %502, i32* %11, align 4
  br label %782

503:                                              ; preds = %493
  %504 = load i32, i32* %31, align 4
  %505 = load i32, i32* %24, align 4
  %506 = add nsw i32 %505, %504
  store i32 %506, i32* %24, align 4
  %507 = load i32, i32* %24, align 4
  %508 = icmp sgt i32 %507, 31
  br i1 %508, label %509, label %510

509:                                              ; preds = %503
  br label %568

510:                                              ; preds = %503
  %511 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %512 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %511, i32 0, i32 7
  %513 = load i32, i32* %512, align 8
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %526, label %515

515:                                              ; preds = %510
  %516 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %517 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %516, i32 0, i32 9
  %518 = load i32*, i32** %517, align 8
  %519 = load i32, i32* %24, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %24, align 4
  %521 = sext i32 %519 to i64
  %522 = getelementptr inbounds i32, i32* %518, i64 %521
  %523 = load i32, i32* %522, align 4
  %524 = load i32, i32* %28, align 4
  %525 = add nsw i32 %523, %524
  store i32 %525, i32* %29, align 4
  br label %535

526:                                              ; preds = %510
  %527 = load i32*, i32** @ff_vc1_adv_interlaced_8x4_zz, align 8
  %528 = load i32, i32* %24, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %24, align 4
  %530 = sext i32 %528 to i64
  %531 = getelementptr inbounds i32, i32* %527, i64 %530
  %532 = load i32, i32* %531, align 4
  %533 = load i32, i32* %28, align 4
  %534 = add nsw i32 %532, %533
  store i32 %534, i32* %29, align 4
  br label %535

535:                                              ; preds = %526, %515
  %536 = load i32, i32* %32, align 4
  %537 = load i32, i32* %27, align 4
  %538 = mul nsw i32 %536, %537
  %539 = load i32*, i32** %13, align 8
  %540 = load i32, i32* %29, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i32, i32* %539, i64 %541
  store i32 %538, i32* %542, align 4
  %543 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %544 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %543, i32 0, i32 5
  %545 = load i32, i32* %544, align 8
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %567, label %547

547:                                              ; preds = %535
  %548 = load i32*, i32** %13, align 8
  %549 = load i32, i32* %29, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %548, i64 %550
  %552 = load i32, i32* %551, align 4
  %553 = icmp slt i32 %552, 0
  br i1 %553, label %554, label %557

554:                                              ; preds = %547
  %555 = load i32, i32* %35, align 4
  %556 = sub nsw i32 0, %555
  br label %559

557:                                              ; preds = %547
  %558 = load i32, i32* %35, align 4
  br label %559

559:                                              ; preds = %557, %554
  %560 = phi i32 [ %556, %554 ], [ %558, %557 ]
  %561 = load i32*, i32** %13, align 8
  %562 = load i32, i32* %29, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i32, i32* %561, i64 %563
  %565 = load i32, i32* %564, align 4
  %566 = add nsw i32 %565, %560
  store i32 %566, i32* %564, align 4
  br label %567

567:                                              ; preds = %559, %535
  br label %489

568:                                              ; preds = %509, %489
  %569 = load i32, i32* %26, align 4
  %570 = load i32, i32* %25, align 4
  %571 = sub nsw i32 1, %570
  %572 = shl i32 1, %571
  %573 = and i32 %569, %572
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %618, label %575

575:                                              ; preds = %568
  %576 = load i32, i32* %20, align 4
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %618, label %578

578:                                              ; preds = %575
  %579 = load i32, i32* %24, align 4
  %580 = icmp eq i32 %579, 1
  br i1 %580, label %581, label %599

581:                                              ; preds = %578
  %582 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %583 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %582, i32 0, i32 4
  %584 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %583, i32 0, i32 3
  %585 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %584, align 8
  %586 = load i32*, i32** %18, align 8
  %587 = load i32, i32* %25, align 4
  %588 = mul nsw i32 %587, 4
  %589 = load i32, i32* %19, align 4
  %590 = mul nsw i32 %588, %589
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i32, i32* %586, i64 %591
  %593 = load i32, i32* %19, align 4
  %594 = load i32*, i32** %13, align 8
  %595 = load i32, i32* %28, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i32, i32* %594, i64 %596
  %598 = call i32 %585(i32* %592, i32 %593, i32* %597)
  br label %617

599:                                              ; preds = %578
  %600 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %601 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %600, i32 0, i32 4
  %602 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %601, i32 0, i32 2
  %603 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %602, align 8
  %604 = load i32*, i32** %18, align 8
  %605 = load i32, i32* %25, align 4
  %606 = mul nsw i32 %605, 4
  %607 = load i32, i32* %19, align 4
  %608 = mul nsw i32 %606, %607
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds i32, i32* %604, i64 %609
  %611 = load i32, i32* %19, align 4
  %612 = load i32*, i32** %13, align 8
  %613 = load i32, i32* %28, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i32, i32* %612, i64 %614
  %616 = call i32 %603(i32* %610, i32 %611, i32* %615)
  br label %617

617:                                              ; preds = %599, %581
  br label %618

618:                                              ; preds = %617, %575, %568
  br label %619

619:                                              ; preds = %618
  %620 = load i32, i32* %25, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %25, align 4
  br label %478

622:                                              ; preds = %478
  br label %769

623:                                              ; preds = %188
  %624 = load i32, i32* %26, align 4
  %625 = mul nsw i32 %624, 5
  %626 = xor i32 %625, -1
  %627 = and i32 %626, 15
  store i32 %627, i32* %34, align 4
  store i32 0, i32* %25, align 4
  br label %628

628:                                              ; preds = %765, %623
  %629 = load i32, i32* %25, align 4
  %630 = icmp slt i32 %629, 2
  br i1 %630, label %631, label %768

631:                                              ; preds = %628
  %632 = load i32, i32* %26, align 4
  %633 = load i32, i32* %25, align 4
  %634 = sub nsw i32 1, %633
  %635 = shl i32 1, %634
  %636 = and i32 %632, %635
  store i32 %636, i32* %30, align 4
  store i32 0, i32* %24, align 4
  %637 = load i32, i32* %25, align 4
  %638 = mul nsw i32 %637, 4
  store i32 %638, i32* %28, align 4
  br label %639

639:                                              ; preds = %717, %631
  %640 = load i32, i32* %30, align 4
  %641 = icmp ne i32 %640, 0
  %642 = xor i1 %641, true
  br i1 %642, label %643, label %718

643:                                              ; preds = %639
  %644 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %645 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %646 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %645, i32 0, i32 8
  %647 = load i32, i32* %646, align 4
  %648 = call i32 @vc1_decode_ac_coeff(%struct.TYPE_13__* %644, i32* %30, i32* %31, i32* %32, i32 %647)
  store i32 %648, i32* %39, align 4
  %649 = load i32, i32* %39, align 4
  %650 = icmp slt i32 %649, 0
  br i1 %650, label %651, label %653

651:                                              ; preds = %643
  %652 = load i32, i32* %39, align 4
  store i32 %652, i32* %11, align 4
  br label %782

653:                                              ; preds = %643
  %654 = load i32, i32* %31, align 4
  %655 = load i32, i32* %24, align 4
  %656 = add nsw i32 %655, %654
  store i32 %656, i32* %24, align 4
  %657 = load i32, i32* %24, align 4
  %658 = icmp sgt i32 %657, 31
  br i1 %658, label %659, label %660

659:                                              ; preds = %653
  br label %718

660:                                              ; preds = %653
  %661 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %662 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %661, i32 0, i32 7
  %663 = load i32, i32* %662, align 8
  %664 = icmp ne i32 %663, 0
  br i1 %664, label %676, label %665

665:                                              ; preds = %660
  %666 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %667 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %666, i32 0, i32 6
  %668 = load i32*, i32** %667, align 8
  %669 = load i32, i32* %24, align 4
  %670 = add nsw i32 %669, 1
  store i32 %670, i32* %24, align 4
  %671 = sext i32 %669 to i64
  %672 = getelementptr inbounds i32, i32* %668, i64 %671
  %673 = load i32, i32* %672, align 4
  %674 = load i32, i32* %28, align 4
  %675 = add nsw i32 %673, %674
  store i32 %675, i32* %29, align 4
  br label %685

676:                                              ; preds = %660
  %677 = load i32*, i32** @ff_vc1_adv_interlaced_4x8_zz, align 8
  %678 = load i32, i32* %24, align 4
  %679 = add nsw i32 %678, 1
  store i32 %679, i32* %24, align 4
  %680 = sext i32 %678 to i64
  %681 = getelementptr inbounds i32, i32* %677, i64 %680
  %682 = load i32, i32* %681, align 4
  %683 = load i32, i32* %28, align 4
  %684 = add nsw i32 %682, %683
  store i32 %684, i32* %29, align 4
  br label %685

685:                                              ; preds = %676, %665
  %686 = load i32, i32* %32, align 4
  %687 = load i32, i32* %27, align 4
  %688 = mul nsw i32 %686, %687
  %689 = load i32*, i32** %13, align 8
  %690 = load i32, i32* %29, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds i32, i32* %689, i64 %691
  store i32 %688, i32* %692, align 4
  %693 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %694 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %693, i32 0, i32 5
  %695 = load i32, i32* %694, align 8
  %696 = icmp ne i32 %695, 0
  br i1 %696, label %717, label %697

697:                                              ; preds = %685
  %698 = load i32*, i32** %13, align 8
  %699 = load i32, i32* %29, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i32, i32* %698, i64 %700
  %702 = load i32, i32* %701, align 4
  %703 = icmp slt i32 %702, 0
  br i1 %703, label %704, label %707

704:                                              ; preds = %697
  %705 = load i32, i32* %35, align 4
  %706 = sub nsw i32 0, %705
  br label %709

707:                                              ; preds = %697
  %708 = load i32, i32* %35, align 4
  br label %709

709:                                              ; preds = %707, %704
  %710 = phi i32 [ %706, %704 ], [ %708, %707 ]
  %711 = load i32*, i32** %13, align 8
  %712 = load i32, i32* %29, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds i32, i32* %711, i64 %713
  %715 = load i32, i32* %714, align 4
  %716 = add nsw i32 %715, %710
  store i32 %716, i32* %714, align 4
  br label %717

717:                                              ; preds = %709, %685
  br label %639

718:                                              ; preds = %659, %639
  %719 = load i32, i32* %26, align 4
  %720 = load i32, i32* %25, align 4
  %721 = sub nsw i32 1, %720
  %722 = shl i32 1, %721
  %723 = and i32 %719, %722
  %724 = icmp ne i32 %723, 0
  br i1 %724, label %764, label %725

725:                                              ; preds = %718
  %726 = load i32, i32* %20, align 4
  %727 = icmp ne i32 %726, 0
  br i1 %727, label %764, label %728

728:                                              ; preds = %725
  %729 = load i32, i32* %24, align 4
  %730 = icmp eq i32 %729, 1
  br i1 %730, label %731, label %747

731:                                              ; preds = %728
  %732 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %733 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %732, i32 0, i32 4
  %734 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %733, i32 0, i32 1
  %735 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %734, align 8
  %736 = load i32*, i32** %18, align 8
  %737 = load i32, i32* %25, align 4
  %738 = mul nsw i32 %737, 4
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds i32, i32* %736, i64 %739
  %741 = load i32, i32* %19, align 4
  %742 = load i32*, i32** %13, align 8
  %743 = load i32, i32* %28, align 4
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds i32, i32* %742, i64 %744
  %746 = call i32 %735(i32* %740, i32 %741, i32* %745)
  br label %763

747:                                              ; preds = %728
  %748 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %749 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %748, i32 0, i32 4
  %750 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %749, i32 0, i32 0
  %751 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %750, align 8
  %752 = load i32*, i32** %18, align 8
  %753 = load i32, i32* %25, align 4
  %754 = mul nsw i32 %753, 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds i32, i32* %752, i64 %755
  %757 = load i32, i32* %19, align 4
  %758 = load i32*, i32** %13, align 8
  %759 = load i32, i32* %28, align 4
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds i32, i32* %758, i64 %760
  %762 = call i32 %751(i32* %756, i32 %757, i32* %761)
  br label %763

763:                                              ; preds = %747, %731
  br label %764

764:                                              ; preds = %763, %725, %718
  br label %765

765:                                              ; preds = %764
  %766 = load i32, i32* %25, align 4
  %767 = add nsw i32 %766, 1
  store i32 %767, i32* %25, align 4
  br label %628

768:                                              ; preds = %628
  br label %769

769:                                              ; preds = %188, %768, %622, %467, %301
  %770 = load i32*, i32** %21, align 8
  %771 = icmp ne i32* %770, null
  br i1 %771, label %772, label %780

772:                                              ; preds = %769
  %773 = load i32, i32* %33, align 4
  %774 = load i32, i32* %14, align 4
  %775 = mul nsw i32 %774, 4
  %776 = shl i32 %773, %775
  %777 = load i32*, i32** %21, align 8
  %778 = load i32, i32* %777, align 4
  %779 = or i32 %778, %776
  store i32 %779, i32* %777, align 4
  br label %780

780:                                              ; preds = %772, %769
  %781 = load i32, i32* %34, align 4
  store i32 %781, i32* %11, align 4
  br label %782

782:                                              ; preds = %780, %651, %501, %334, %203
  %783 = load i32, i32* %11, align 4
  ret i32 %783
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @decode012(i32*) #1

declare dso_local i32 @vc1_decode_ac_coeff(%struct.TYPE_13__*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
