; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_ff_dca_core_parse_exss.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_ff_dca_core_parse_exss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i64, i32, i32, i32, i64, i32, i64, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32 }

@DCA_EXSS_XXCH = common dso_local global i32 0, align 4
@DCA_CSS_XXCH = common dso_local global i32 0, align 4
@DCA_CSS_XCH = common dso_local global i32 0, align 4
@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@ff_dca_channels = common dso_local global i32* null, align 8
@audio_mode_ch_mask = common dso_local global i32* null, align 8
@DCA_SPEAKER_MASK_LFE1 = common dso_local global i32 0, align 4
@DCA_EXSS_XBR = common dso_local global i32 0, align 4
@DCA_PACKET_XLL = common dso_local global i32 0, align 4
@DCA_EXSS_X96 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DCA_CSS_X96 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_dca_core_parse_exss(%struct.TYPE_13__* %0, i32* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 10
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %8, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %9, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ %24, %21 ], [ 0, %25 ]
  store i32 %27, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %146, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @DCA_EXSS_XXCH, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @init_get_bits8(i32* %39, i32* %45, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %4, align 4
  br label %287

53:                                               ; preds = %37
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = call i32 @parse_xxch_frame(%struct.TYPE_13__* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* @DCA_EXSS_XXCH, align 4
  store i32 %56, i32* %12, align 4
  br label %99

57:                                               ; preds = %32
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 9
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 9
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @skip_bits_long(i32* %69, i64 %72)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = call i32 @parse_xxch_frame(%struct.TYPE_13__* %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* @DCA_CSS_XXCH, align 4
  store i32 %76, i32* %12, align 4
  br label %98

77:                                               ; preds = %57
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 8
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 8
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @skip_bits_long(i32* %89, i64 %92)
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = call i32 @parse_xch_frame(%struct.TYPE_13__* %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* @DCA_CSS_XCH, align 4
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %82, %77
  br label %98

98:                                               ; preds = %97, %62
  br label %99

99:                                               ; preds = %98, %53
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %139

102:                                              ; preds = %99
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @AV_EF_EXPLODE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %4, align 4
  br label %287

111:                                              ; preds = %102
  %112 = load i32*, i32** @ff_dca_channels, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 7
  store i32 %117, i32* %119, align 8
  %120 = load i32*, i32** @audio_mode_ch_mask, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %111
  %133 = load i32, i32* @DCA_SPEAKER_MASK_LFE1, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %132, %111
  br label %145

139:                                              ; preds = %99
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %139, %138
  br label %146

146:                                              ; preds = %145, %26
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @DCA_EXSS_XBR, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %188

151:                                              ; preds = %146
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 3
  %154 = load i32*, i32** %6, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %154, i64 %158
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @init_get_bits8(i32* %153, i32* %159, i32 %162)
  store i32 %163, i32* %11, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %151
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %4, align 4
  br label %287

167:                                              ; preds = %151
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %169 = call i32 @parse_xbr_frame(%struct.TYPE_13__* %168)
  store i32 %169, i32* %11, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %167
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @AV_EF_EXPLODE, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = load i32, i32* %11, align 4
  store i32 %179, i32* %4, align 4
  br label %287

180:                                              ; preds = %171
  br label %187

181:                                              ; preds = %167
  %182 = load i32, i32* @DCA_EXSS_XBR, align 4
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 8
  br label %187

187:                                              ; preds = %181, %180
  br label %188

188:                                              ; preds = %187, %146
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @DCA_PACKET_XLL, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %286, label %195

195:                                              ; preds = %188
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* @DCA_EXSS_X96, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %242

200:                                              ; preds = %195
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 3
  %203 = load i32*, i32** %6, align 8
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %203, i64 %207
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @init_get_bits8(i32* %202, i32* %208, i32 %211)
  store i32 %212, i32* %11, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %200
  %215 = load i32, i32* %11, align 4
  store i32 %215, i32* %4, align 4
  br label %287

216:                                              ; preds = %200
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %218 = call i32 @parse_x96_frame_exss(%struct.TYPE_13__* %217)
  store i32 %218, i32* %11, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %235

220:                                              ; preds = %216
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* @ENOMEM, align 4
  %223 = call i32 @AVERROR(i32 %222)
  %224 = icmp eq i32 %221, %223
  br i1 %224, label %232, label %225

225:                                              ; preds = %220
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @AV_EF_EXPLODE, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %225, %220
  %233 = load i32, i32* %11, align 4
  store i32 %233, i32* %4, align 4
  br label %287

234:                                              ; preds = %225
  br label %241

235:                                              ; preds = %216
  %236 = load i32, i32* @DCA_EXSS_X96, align 4
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 8
  br label %241

241:                                              ; preds = %235, %234
  br label %285

242:                                              ; preds = %195
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %284

247:                                              ; preds = %242
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 3
  store i32 %250, i32* %252, align 8
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 3
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @skip_bits_long(i32* %254, i64 %257)
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %260 = call i32 @parse_x96_frame(%struct.TYPE_13__* %259)
  store i32 %260, i32* %11, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %277

262:                                              ; preds = %247
  %263 = load i32, i32* %11, align 4
  %264 = load i32, i32* @ENOMEM, align 4
  %265 = call i32 @AVERROR(i32 %264)
  %266 = icmp eq i32 %263, %265
  br i1 %266, label %274, label %267

267:                                              ; preds = %262
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @AV_EF_EXPLODE, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %267, %262
  %275 = load i32, i32* %11, align 4
  store i32 %275, i32* %4, align 4
  br label %287

276:                                              ; preds = %267
  br label %283

277:                                              ; preds = %247
  %278 = load i32, i32* @DCA_CSS_X96, align 4
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = or i32 %281, %278
  store i32 %282, i32* %280, align 8
  br label %283

283:                                              ; preds = %277, %276
  br label %284

284:                                              ; preds = %283, %242
  br label %285

285:                                              ; preds = %284, %241
  br label %286

286:                                              ; preds = %285, %188
  store i32 0, i32* %4, align 4
  br label %287

287:                                              ; preds = %286, %274, %232, %214, %178, %165, %109, %51
  %288 = load i32, i32* %4, align 4
  ret i32 %288
}

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @parse_xxch_frame(%struct.TYPE_13__*) #1

declare dso_local i32 @skip_bits_long(i32*, i64) #1

declare dso_local i32 @parse_xch_frame(%struct.TYPE_13__*) #1

declare dso_local i32 @parse_xbr_frame(%struct.TYPE_13__*) #1

declare dso_local i32 @parse_x96_frame_exss(%struct.TYPE_13__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @parse_x96_frame(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
