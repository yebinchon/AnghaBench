; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudio_parser.c_mpegaudio_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudio_parser.c_mpegaudio_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@END_NOT_FOUND = common dso_local global i32 0, align 4
@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@SAME_HEADER_MASK = common dso_local global i32 0, align 4
@PARSER_FLAG_COMPLETE_FRAMES = common dso_local global i32 0, align 4
@AV_CODEC_ID_MP3ADU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"MP3ADU full parser\00", align 1
@ID3v1_TAG_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"TAG\00", align 1
@APE_TAG_FOOTER_BYTES = common dso_local global i32 0, align 4
@APE_TAG_PREAMBLE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, i32**, i32*, i32*, i32)* @mpegaudio_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpegaudio_parse(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %14, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 4
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %15, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %41

41:                                               ; preds = %218, %6
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %219

45:                                               ; preds = %41
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %45
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %17, align 4
  %53 = sub nsw i32 %51, %52
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @FFMIN(i32 %53, i32 %56)
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %20, align 4
  %59 = load i32, i32* %17, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %20, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, %61
  store i32 %65, i32* %63, align 4
  store i32 0, i32* %16, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %50
  %71 = load i32, i32* %17, align 4
  store i32 %71, i32* %18, align 4
  br label %219

72:                                               ; preds = %50
  br label %218

73:                                               ; preds = %45
  br label %74

74:                                               ; preds = %216, %73
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %217

78:                                               ; preds = %74
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %26, align 4
  %82 = load i32, i32* %16, align 4
  %83 = shl i32 %82, 8
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %17, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %83, %89
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @ff_mpa_decode_header(i32 %91, i32* %22, i32* %23, i32* %25, i32* %24, i32* %26)
  store i32 %92, i32* %21, align 4
  %93 = load i32, i32* %21, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %102

95:                                               ; preds = %78
  %96 = load i32, i32* %17, align 4
  %97 = icmp sgt i32 %96, 4
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  store i32 -2, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %95
  br label %216

102:                                              ; preds = %78
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %26, align 4
  %114 = icmp ne i32 %112, %113
  br label %115

115:                                              ; preds = %109, %102
  %116 = phi i1 [ false, %102 ], [ %114, %109 ]
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %27, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* @SAME_HEADER_MASK, align 4
  %120 = and i32 %118, %119
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @SAME_HEADER_MASK, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %120, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %115
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  store i32 -3, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %127, %115
  %136 = load i32, i32* %16, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* %21, align 4
  %144 = sub nsw i32 %143, 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %27, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %193

152:                                              ; preds = %135
  %153 = load i32, i32* %22, align 4
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %23, align 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %25, align 4
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* %26, align 4
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %152
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %192, label %174

174:                                              ; preds = %169, %152
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 3
  store i32 1, i32* %176, align 4
  %177 = load i32, i32* %24, align 4
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %177, %180
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %27, align 4
  %186 = sub nsw i32 %184, %185
  %187 = sdiv i32 %181, %186
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, %187
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %174, %169
  br label %193

193:                                              ; preds = %192, %135
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @PARSER_FLAG_COMPLETE_FRAMES, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %193
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  store i32 0, i32* %202, align 4
  %203 = load i32, i32* %13, align 4
  store i32 %203, i32* %18, align 4
  br label %215

204:                                              ; preds = %193
  %205 = load i32, i32* %26, align 4
  %206 = load i32, i32* @AV_CODEC_ID_MP3ADU, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %204
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %210 = call i32 @avpriv_report_missing_feature(%struct.TYPE_12__* %209, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %211 = load i32**, i32*** %10, align 8
  store i32* null, i32** %211, align 8
  %212 = load i32*, i32** %11, align 8
  store i32 0, i32* %212, align 4
  %213 = load i32, i32* %13, align 4
  store i32 %213, i32* %7, align 4
  br label %268

214:                                              ; preds = %204
  br label %215

215:                                              ; preds = %214, %200
  br label %217

216:                                              ; preds = %101
  br label %74

217:                                              ; preds = %215, %74
  br label %218

218:                                              ; preds = %217, %72
  br label %41

219:                                              ; preds = %70, %41
  %220 = load i32, i32* %16, align 4
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 4
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %224 = load i32, i32* %18, align 4
  %225 = call i64 @ff_combine_frame(%struct.TYPE_9__* %223, i32 %224, i32** %12, i32* %13)
  %226 = icmp slt i64 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %219
  %228 = load i32**, i32*** %10, align 8
  store i32* null, i32** %228, align 8
  %229 = load i32*, i32** %11, align 8
  store i32 0, i32* %229, align 4
  %230 = load i32, i32* %13, align 4
  store i32 %230, i32* %7, align 4
  br label %268

231:                                              ; preds = %219
  %232 = load i32, i32* %19, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %246

234:                                              ; preds = %231
  %235 = load i32, i32* %13, align 4
  %236 = load i32, i32* @ID3v1_TAG_SIZE, align 4
  %237 = icmp sge i32 %235, %236
  br i1 %237, label %238, label %246

238:                                              ; preds = %234
  %239 = load i32*, i32** %12, align 8
  %240 = call i64 @memcmp(i32* %239, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %238
  %243 = load i32**, i32*** %10, align 8
  store i32* null, i32** %243, align 8
  %244 = load i32*, i32** %11, align 8
  store i32 0, i32* %244, align 4
  %245 = load i32, i32* %18, align 4
  store i32 %245, i32* %7, align 4
  br label %268

246:                                              ; preds = %238, %234, %231
  %247 = load i32, i32* %19, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %262

249:                                              ; preds = %246
  %250 = load i32, i32* %13, align 4
  %251 = load i32, i32* @APE_TAG_FOOTER_BYTES, align 4
  %252 = icmp sge i32 %250, %251
  br i1 %252, label %253, label %262

253:                                              ; preds = %249
  %254 = load i32*, i32** %12, align 8
  %255 = load i8*, i8** @APE_TAG_PREAMBLE, align 8
  %256 = call i64 @memcmp(i32* %254, i8* %255, i32 8)
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %253
  %259 = load i32**, i32*** %10, align 8
  store i32* null, i32** %259, align 8
  %260 = load i32*, i32** %11, align 8
  store i32 0, i32* %260, align 4
  %261 = load i32, i32* %18, align 4
  store i32 %261, i32* %7, align 4
  br label %268

262:                                              ; preds = %253, %249, %246
  %263 = load i32*, i32** %12, align 8
  %264 = load i32**, i32*** %10, align 8
  store i32* %263, i32** %264, align 8
  %265 = load i32, i32* %13, align 4
  %266 = load i32*, i32** %11, align 8
  store i32 %265, i32* %266, align 4
  %267 = load i32, i32* %18, align 4
  store i32 %267, i32* %7, align 4
  br label %268

268:                                              ; preds = %262, %258, %242, %227, %208
  %269 = load i32, i32* %7, align 4
  ret i32 %269
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_mpa_decode_header(i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @ff_combine_frame(%struct.TYPE_9__*, i32, i32**, i32*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
