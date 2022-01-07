; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_mkv_parse_video_color.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_mkv_parse_video_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i32, i32, i64, i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_24__ = type { i32, i32, i8*, i8*, i8**, i8*** }

@AVCOL_SPC_RESERVED = common dso_local global i64 0, align 8
@AVCOL_PRI_RESERVED = common dso_local global i64 0, align 8
@AVCOL_PRI_RESERVED0 = common dso_local global i64 0, align 8
@AVCOL_TRC_RESERVED = common dso_local global i64 0, align 8
@AVCOL_TRC_RESERVED0 = common dso_local global i64 0, align 8
@AVCOL_RANGE_UNSPECIFIED = common dso_local global i64 0, align 8
@AVCOL_RANGE_JPEG = common dso_local global i64 0, align 8
@MATROSKA_COLOUR_CHROMASITINGHORZ_UNDETERMINED = common dso_local global i32 0, align 4
@MATROSKA_COLOUR_CHROMASITINGVERT_UNDETERMINED = common dso_local global i32 0, align 4
@MATROSKA_COLOUR_CHROMASITINGHORZ_NB = common dso_local global i32 0, align 4
@MATROSKA_COLOUR_CHROMASITINGVERT_NB = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_PKT_DATA_CONTENT_LIGHT_LEVEL = common dso_local global i32 0, align 4
@AV_PKT_DATA_MASTERING_DISPLAY_METADATA = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_21__*)* @mkv_parse_video_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkv_parse_video_color(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %6, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %359

26:                                               ; preds = %2
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 8
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** %7, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %26
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %33
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %38
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %43
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  br label %68

68:                                               ; preds = %63, %58, %53, %48, %43, %38, %33, %26
  %69 = phi i1 [ false, %58 ], [ false, %53 ], [ false, %48 ], [ false, %43 ], [ false, %38 ], [ false, %33 ], [ false, %26 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %8, align 4
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 8
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %73, 0
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %9, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AVCOL_SPC_RESERVED, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %68
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  store i64 %84, i64* %88, align 8
  br label %89

89:                                               ; preds = %81, %68
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @AVCOL_PRI_RESERVED, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %89
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @AVCOL_PRI_RESERVED0, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  store i64 %104, i64* %108, align 8
  br label %109

109:                                              ; preds = %101, %95, %89
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AVCOL_TRC_RESERVED, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @AVCOL_TRC_RESERVED0, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %115
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 2
  store i64 %124, i64* %128, align 8
  br label %129

129:                                              ; preds = %121, %115, %109
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @AVCOL_RANGE_UNSPECIFIED, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %129
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @AVCOL_RANGE_JPEG, align 8
  %140 = icmp sle i64 %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %135
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 3
  store i64 %144, i64* %148, align 8
  br label %149

149:                                              ; preds = %141, %135, %129
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @MATROSKA_COLOUR_CHROMASITINGHORZ_UNDETERMINED, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %189

155:                                              ; preds = %149
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @MATROSKA_COLOUR_CHROMASITINGVERT_UNDETERMINED, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %189

161:                                              ; preds = %155
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @MATROSKA_COLOUR_CHROMASITINGHORZ_NB, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %189

167:                                              ; preds = %161
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @MATROSKA_COLOUR_CHROMASITINGVERT_NB, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %189

173:                                              ; preds = %167
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = sub nsw i32 %176, 1
  %178 = shl i32 %177, 7
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = sub nsw i32 %181, 1
  %183 = shl i32 %182, 7
  %184 = call i32 @avcodec_chroma_pos_to_enum(i32 %178, i32 %183)
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 4
  store i32 %184, i32* %188, align 8
  br label %189

189:                                              ; preds = %173, %167, %161, %155, %149
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 7
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %229

194:                                              ; preds = %189
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 6
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %229

199:                                              ; preds = %194
  store i64 0, i64* %10, align 8
  %200 = call %struct.TYPE_25__* @av_content_light_metadata_alloc(i64* %10)
  store %struct.TYPE_25__* %200, %struct.TYPE_25__** %12, align 8
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %202 = icmp ne %struct.TYPE_25__* %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %199
  %204 = load i32, i32* @ENOMEM, align 4
  %205 = call i32 @AVERROR(i32 %204)
  store i32 %205, i32* %3, align 4
  br label %359

206:                                              ; preds = %199
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %208 = load i32, i32* @AV_PKT_DATA_CONTENT_LIGHT_LEVEL, align 4
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %210 = bitcast %struct.TYPE_25__* %209 to i32*
  %211 = load i64, i64* %10, align 8
  %212 = call i32 @av_stream_add_side_data(%struct.TYPE_23__* %207, i32 %208, i32* %210, i64 %211)
  store i32 %212, i32* %11, align 4
  %213 = load i32, i32* %11, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %206
  %216 = call i32 @av_freep(%struct.TYPE_25__** %12)
  %217 = load i32, i32* %11, align 4
  store i32 %217, i32* %3, align 4
  br label %359

218:                                              ; preds = %206
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 7
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 1
  store i64 %221, i64* %223, align 8
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 6
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 0
  store i64 %226, i64* %228, align 8
  br label %229

229:                                              ; preds = %218, %194, %189
  %230 = load i32, i32* %8, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* %9, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %358

235:                                              ; preds = %232, %229
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %237 = load i32, i32* @AV_PKT_DATA_MASTERING_DISPLAY_METADATA, align 4
  %238 = call i64 @av_stream_new_side_data(%struct.TYPE_23__* %236, i32 %237, i32 40)
  %239 = inttoptr i64 %238 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %239, %struct.TYPE_24__** %13, align 8
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %241 = icmp ne %struct.TYPE_24__* %240, null
  br i1 %241, label %245, label %242

242:                                              ; preds = %235
  %243 = load i32, i32* @ENOMEM, align 4
  %244 = call i32 @AVERROR(i32 %243)
  store i32 %244, i32* %3, align 4
  br label %359

245:                                              ; preds = %235
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %247 = call i32 @memset(%struct.TYPE_24__* %246, i32 0, i32 40)
  %248 = load i32, i32* %8, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %337

250:                                              ; preds = %245
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i32, i32* @INT_MAX, align 4
  %255 = call i8* @av_d2q(i64 %253, i32 %254)
  %256 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %256, i32 0, i32 5
  %258 = load i8***, i8**** %257, align 8
  %259 = getelementptr inbounds i8**, i8*** %258, i64 0
  %260 = load i8**, i8*** %259, align 8
  %261 = getelementptr inbounds i8*, i8** %260, i64 0
  store i8* %255, i8** %261, align 8
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = load i32, i32* @INT_MAX, align 4
  %266 = call i8* @av_d2q(i64 %264, i32 %265)
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 5
  %269 = load i8***, i8**** %268, align 8
  %270 = getelementptr inbounds i8**, i8*** %269, i64 0
  %271 = load i8**, i8*** %270, align 8
  %272 = getelementptr inbounds i8*, i8** %271, i64 1
  store i8* %266, i8** %272, align 8
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = load i32, i32* @INT_MAX, align 4
  %277 = call i8* @av_d2q(i64 %275, i32 %276)
  %278 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 5
  %280 = load i8***, i8**** %279, align 8
  %281 = getelementptr inbounds i8**, i8*** %280, i64 1
  %282 = load i8**, i8*** %281, align 8
  %283 = getelementptr inbounds i8*, i8** %282, i64 0
  store i8* %277, i8** %283, align 8
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = load i32, i32* @INT_MAX, align 4
  %288 = call i8* @av_d2q(i64 %286, i32 %287)
  %289 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %289, i32 0, i32 5
  %291 = load i8***, i8**** %290, align 8
  %292 = getelementptr inbounds i8**, i8*** %291, i64 1
  %293 = load i8**, i8*** %292, align 8
  %294 = getelementptr inbounds i8*, i8** %293, i64 1
  store i8* %288, i8** %294, align 8
  %295 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 4
  %297 = load i64, i64* %296, align 8
  %298 = load i32, i32* @INT_MAX, align 4
  %299 = call i8* @av_d2q(i64 %297, i32 %298)
  %300 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %301 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %300, i32 0, i32 5
  %302 = load i8***, i8**** %301, align 8
  %303 = getelementptr inbounds i8**, i8*** %302, i64 2
  %304 = load i8**, i8*** %303, align 8
  %305 = getelementptr inbounds i8*, i8** %304, i64 0
  store i8* %299, i8** %305, align 8
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i32 0, i32 5
  %308 = load i64, i64* %307, align 8
  %309 = load i32, i32* @INT_MAX, align 4
  %310 = call i8* @av_d2q(i64 %308, i32 %309)
  %311 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %312 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %311, i32 0, i32 5
  %313 = load i8***, i8**** %312, align 8
  %314 = getelementptr inbounds i8**, i8*** %313, i64 2
  %315 = load i8**, i8*** %314, align 8
  %316 = getelementptr inbounds i8*, i8** %315, i64 1
  store i8* %310, i8** %316, align 8
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %317, i32 0, i32 6
  %319 = load i64, i64* %318, align 8
  %320 = load i32, i32* @INT_MAX, align 4
  %321 = call i8* @av_d2q(i64 %319, i32 %320)
  %322 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %323 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %322, i32 0, i32 4
  %324 = load i8**, i8*** %323, align 8
  %325 = getelementptr inbounds i8*, i8** %324, i64 0
  store i8* %321, i8** %325, align 8
  %326 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %326, i32 0, i32 7
  %328 = load i64, i64* %327, align 8
  %329 = load i32, i32* @INT_MAX, align 4
  %330 = call i8* @av_d2q(i64 %328, i32 %329)
  %331 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %332 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %331, i32 0, i32 4
  %333 = load i8**, i8*** %332, align 8
  %334 = getelementptr inbounds i8*, i8** %333, i64 1
  store i8* %330, i8** %334, align 8
  %335 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %336 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %335, i32 0, i32 0
  store i32 1, i32* %336, align 8
  br label %337

337:                                              ; preds = %250, %245
  %338 = load i32, i32* %9, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %357

340:                                              ; preds = %337
  %341 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %341, i32 0, i32 8
  %343 = load i64, i64* %342, align 8
  %344 = load i32, i32* @INT_MAX, align 4
  %345 = call i8* @av_d2q(i64 %343, i32 %344)
  %346 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %347 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %346, i32 0, i32 3
  store i8* %345, i8** %347, align 8
  %348 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %348, i32 0, i32 9
  %350 = load i64, i64* %349, align 8
  %351 = load i32, i32* @INT_MAX, align 4
  %352 = call i8* @av_d2q(i64 %350, i32 %351)
  %353 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %354 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %353, i32 0, i32 2
  store i8* %352, i8** %354, align 8
  %355 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %356 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %355, i32 0, i32 1
  store i32 1, i32* %356, align 4
  br label %357

357:                                              ; preds = %340, %337
  br label %358

358:                                              ; preds = %357, %232
  store i32 0, i32* %3, align 4
  br label %359

359:                                              ; preds = %358, %242, %215, %203, %25
  %360 = load i32, i32* %3, align 4
  ret i32 %360
}

declare dso_local i32 @avcodec_chroma_pos_to_enum(i32, i32) #1

declare dso_local %struct.TYPE_25__* @av_content_light_metadata_alloc(i64*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_stream_add_side_data(%struct.TYPE_23__*, i32, i32*, i64) #1

declare dso_local i32 @av_freep(%struct.TYPE_25__**) #1

declare dso_local i64 @av_stream_new_side_data(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i8* @av_d2q(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
