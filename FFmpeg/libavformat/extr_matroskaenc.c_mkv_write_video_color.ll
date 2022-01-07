; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_video_color.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_video_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i32*, i32**, i64 }

@AVCOL_TRC_UNSPECIFIED = common dso_local global i64 0, align 8
@AVCOL_TRC_NB = common dso_local global i64 0, align 8
@MATROSKA_ID_VIDEOCOLORTRANSFERCHARACTERISTICS = common dso_local global i32 0, align 4
@AVCOL_SPC_UNSPECIFIED = common dso_local global i64 0, align 8
@AVCOL_SPC_NB = common dso_local global i64 0, align 8
@MATROSKA_ID_VIDEOCOLORMATRIXCOEFF = common dso_local global i32 0, align 4
@AVCOL_PRI_UNSPECIFIED = common dso_local global i64 0, align 8
@AVCOL_PRI_NB = common dso_local global i64 0, align 8
@MATROSKA_ID_VIDEOCOLORPRIMARIES = common dso_local global i32 0, align 4
@AVCOL_RANGE_UNSPECIFIED = common dso_local global i64 0, align 8
@AVCOL_RANGE_NB = common dso_local global i64 0, align 8
@MATROSKA_ID_VIDEOCOLORRANGE = common dso_local global i32 0, align 4
@AVCHROMA_LOC_UNSPECIFIED = common dso_local global i64 0, align 8
@AVCHROMA_LOC_TOP = common dso_local global i64 0, align 8
@MATROSKA_ID_VIDEOCOLORCHROMASITINGHORZ = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOCOLORCHROMASITINGVERT = common dso_local global i32 0, align 4
@AV_PKT_DATA_CONTENT_LIGHT_LEVEL = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOCOLORMAXCLL = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOCOLORMAXFALL = common dso_local global i32 0, align 4
@AV_PKT_DATA_MASTERING_DISPLAY_METADATA = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOCOLORMASTERINGMETA = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOCOLOR_RX = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOCOLOR_RY = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOCOLOR_GX = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOCOLOR_GY = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOCOLOR_BX = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOCOLOR_BY = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOCOLOR_WHITEX = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOCOLOR_WHITEY = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOCOLOR_LUMINANCEMAX = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOCOLOR_LUMINANCEMIN = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOCOLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i32*)* @mkv_write_video_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkv_write_video_color(i32* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %20 = call i32 @avio_open_dyn_buf(i32** %8)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %301

25:                                               ; preds = %3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AVCOL_TRC_UNSPECIFIED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AVCOL_TRC_NB, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @MATROSKA_ID_VIDEOCOLORTRANSFERCHARACTERISTICS, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @put_ebml_uint(i32* %38, i32 %39, i32 %43)
  br label %45

45:                                               ; preds = %37, %31, %25
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AVCOL_SPC_UNSPECIFIED, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AVCOL_SPC_NB, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* @MATROSKA_ID_VIDEOCOLORMATRIXCOEFF, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @put_ebml_uint(i32* %58, i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %57, %51, %45
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AVCOL_PRI_UNSPECIFIED, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %65
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AVCOL_PRI_NB, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* @MATROSKA_ID_VIDEOCOLORPRIMARIES, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @put_ebml_uint(i32* %78, i32 %79, i32 %83)
  br label %85

85:                                               ; preds = %77, %71, %65
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AVCOL_RANGE_UNSPECIFIED, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %85
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @AVCOL_RANGE_NB, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* @MATROSKA_ID_VIDEOCOLORRANGE, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @put_ebml_uint(i32* %98, i32 %99, i32 %103)
  br label %105

105:                                              ; preds = %97, %91, %85
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @AVCHROMA_LOC_UNSPECIFIED, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %105
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @AVCHROMA_LOC_TOP, align 8
  %116 = icmp sle i64 %114, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %111
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @avcodec_enum_to_chroma_pos(i32* %14, i32* %15, i64 %120)
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* @MATROSKA_ID_VIDEOCOLORCHROMASITINGHORZ, align 4
  %124 = load i32, i32* %14, align 4
  %125 = ashr i32 %124, 7
  %126 = add nsw i32 %125, 1
  %127 = call i32 @put_ebml_uint(i32* %122, i32 %123, i32 %126)
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* @MATROSKA_ID_VIDEOCOLORCHROMASITINGVERT, align 4
  %130 = load i32, i32* %15, align 4
  %131 = ashr i32 %130, 7
  %132 = add nsw i32 %131, 1
  %133 = call i32 @put_ebml_uint(i32* %128, i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %117, %111, %105
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* @AV_PKT_DATA_CONTENT_LIGHT_LEVEL, align 4
  %137 = call i32* @av_stream_get_side_data(i32* %135, i32 %136, i32* %10)
  store i32* %137, i32** %13, align 8
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %134
  %141 = load i32*, i32** %13, align 8
  %142 = bitcast i32* %141 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %142, %struct.TYPE_6__** %16, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* @MATROSKA_ID_VIDEOCOLORMAXCLL, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @put_ebml_uint(i32* %143, i32 %144, i32 %147)
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* @MATROSKA_ID_VIDEOCOLORMAXFALL, align 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @put_ebml_uint(i32* %149, i32 %150, i32 %153)
  br label %155

155:                                              ; preds = %140, %134
  %156 = load i32*, i32** %7, align 8
  %157 = load i32, i32* @AV_PKT_DATA_MASTERING_DISPLAY_METADATA, align 4
  %158 = call i32* @av_stream_get_side_data(i32* %156, i32 %157, i32* %10)
  store i32* %158, i32** %13, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = icmp eq i64 %160, 40
  br i1 %161, label %162, label %281

162:                                              ; preds = %155
  %163 = load i32*, i32** %8, align 8
  %164 = load i32, i32* @MATROSKA_ID_VIDEOCOLORMASTERINGMETA, align 4
  %165 = call i32 @start_ebml_master(i32* %163, i32 %164, i32 0)
  store i32 %165, i32* %17, align 4
  %166 = load i32*, i32** %13, align 8
  %167 = bitcast i32* %166 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %167, %struct.TYPE_5__** %18, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %257

172:                                              ; preds = %162
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* @MATROSKA_ID_VIDEOCOLOR_RX, align 4
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 4
  %177 = load i32**, i32*** %176, align 8
  %178 = getelementptr inbounds i32*, i32** %177, i64 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @av_q2d(i32 %181)
  %183 = call i32 @put_ebml_float(i32* %173, i32 %174, i32 %182)
  %184 = load i32*, i32** %8, align 8
  %185 = load i32, i32* @MATROSKA_ID_VIDEOCOLOR_RY, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 4
  %188 = load i32**, i32*** %187, align 8
  %189 = getelementptr inbounds i32*, i32** %188, i64 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @av_q2d(i32 %192)
  %194 = call i32 @put_ebml_float(i32* %184, i32 %185, i32 %193)
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* @MATROSKA_ID_VIDEOCOLOR_GX, align 4
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 4
  %199 = load i32**, i32*** %198, align 8
  %200 = getelementptr inbounds i32*, i32** %199, i64 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @av_q2d(i32 %203)
  %205 = call i32 @put_ebml_float(i32* %195, i32 %196, i32 %204)
  %206 = load i32*, i32** %8, align 8
  %207 = load i32, i32* @MATROSKA_ID_VIDEOCOLOR_GY, align 4
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 4
  %210 = load i32**, i32*** %209, align 8
  %211 = getelementptr inbounds i32*, i32** %210, i64 1
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @av_q2d(i32 %214)
  %216 = call i32 @put_ebml_float(i32* %206, i32 %207, i32 %215)
  %217 = load i32*, i32** %8, align 8
  %218 = load i32, i32* @MATROSKA_ID_VIDEOCOLOR_BX, align 4
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 4
  %221 = load i32**, i32*** %220, align 8
  %222 = getelementptr inbounds i32*, i32** %221, i64 2
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @av_q2d(i32 %225)
  %227 = call i32 @put_ebml_float(i32* %217, i32 %218, i32 %226)
  %228 = load i32*, i32** %8, align 8
  %229 = load i32, i32* @MATROSKA_ID_VIDEOCOLOR_BY, align 4
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 4
  %232 = load i32**, i32*** %231, align 8
  %233 = getelementptr inbounds i32*, i32** %232, i64 2
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @av_q2d(i32 %236)
  %238 = call i32 @put_ebml_float(i32* %228, i32 %229, i32 %237)
  %239 = load i32*, i32** %8, align 8
  %240 = load i32, i32* @MATROSKA_ID_VIDEOCOLOR_WHITEX, align 4
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @av_q2d(i32 %245)
  %247 = call i32 @put_ebml_float(i32* %239, i32 %240, i32 %246)
  %248 = load i32*, i32** %8, align 8
  %249 = load i32, i32* @MATROSKA_ID_VIDEOCOLOR_WHITEY, align 4
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 3
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @av_q2d(i32 %254)
  %256 = call i32 @put_ebml_float(i32* %248, i32 %249, i32 %255)
  br label %257

257:                                              ; preds = %172, %162
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %277

262:                                              ; preds = %257
  %263 = load i32*, i32** %8, align 8
  %264 = load i32, i32* @MATROSKA_ID_VIDEOCOLOR_LUMINANCEMAX, align 4
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @av_q2d(i32 %267)
  %269 = call i32 @put_ebml_float(i32* %263, i32 %264, i32 %268)
  %270 = load i32*, i32** %8, align 8
  %271 = load i32, i32* @MATROSKA_ID_VIDEOCOLOR_LUMINANCEMIN, align 4
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @av_q2d(i32 %274)
  %276 = call i32 @put_ebml_float(i32* %270, i32 %271, i32 %275)
  br label %277

277:                                              ; preds = %262, %257
  %278 = load i32*, i32** %8, align 8
  %279 = load i32, i32* %17, align 4
  %280 = call i32 @end_ebml_master(i32* %278, i32 %279)
  br label %281

281:                                              ; preds = %277, %155
  %282 = load i32*, i32** %8, align 8
  %283 = call i32 @avio_close_dyn_buf(i32* %282, i32** %9)
  store i32 %283, i32* %12, align 4
  %284 = load i32, i32* %12, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %298

286:                                              ; preds = %281
  %287 = load i32*, i32** %5, align 8
  %288 = load i32, i32* @MATROSKA_ID_VIDEOCOLOR, align 4
  %289 = load i32, i32* %12, align 4
  %290 = call i32 @start_ebml_master(i32* %287, i32 %288, i32 %289)
  store i32 %290, i32* %19, align 4
  %291 = load i32*, i32** %5, align 8
  %292 = load i32*, i32** %9, align 8
  %293 = load i32, i32* %12, align 4
  %294 = call i32 @avio_write(i32* %291, i32* %292, i32 %293)
  %295 = load i32*, i32** %5, align 8
  %296 = load i32, i32* %19, align 4
  %297 = call i32 @end_ebml_master(i32* %295, i32 %296)
  br label %298

298:                                              ; preds = %286, %281
  %299 = load i32*, i32** %9, align 8
  %300 = call i32 @av_free(i32* %299)
  store i32 0, i32* %4, align 4
  br label %301

301:                                              ; preds = %298, %23
  %302 = load i32, i32* %4, align 4
  ret i32 %302
}

declare dso_local i32 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @put_ebml_uint(i32*, i32, i32) #1

declare dso_local i32 @avcodec_enum_to_chroma_pos(i32*, i32*, i64) #1

declare dso_local i32* @av_stream_get_side_data(i32*, i32, i32*) #1

declare dso_local i32 @start_ebml_master(i32*, i32, i32) #1

declare dso_local i32 @put_ebml_float(i32*, i32, i32) #1

declare dso_local i32 @av_q2d(i32) #1

declare dso_local i32 @end_ebml_master(i32*, i32) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
