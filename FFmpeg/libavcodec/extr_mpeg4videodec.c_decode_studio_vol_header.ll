; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_decode_studio_vol_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_decode_studio_vol_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i64, i8*, i8*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i32 }

@BIN_ONLY_SHAPE = common dso_local global i8* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"illegal chroma format\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PIX_FMT_GBRP10 = common dso_local global i32 0, align 4
@CHROMA_422 = common dso_local global i64 0, align 8
@AV_PIX_FMT_YUV422P10 = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV444P10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"MPEG-4 Studio profile bit-depth %u\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@RECT_SHAPE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"before video_object_layer_width\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"before video_object_layer_height\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"after video_object_layer_height\00", align 1
@FF_ASPECT_EXTENDED = common dso_local global i64 0, align 8
@ff_h263_pixel_aspect = common dso_local global %struct.TYPE_11__* null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"after first_half_bit_rate\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"after latter_half_bit_rate\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"after first_half_vbv_buffer_size\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"after latter_half_vbv_occupancy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*)* @decode_studio_vol_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_studio_vol_header(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @skip_bits(i32* %12, i32 4)
  %14 = load i32*, i32** %5, align 8
  %15 = call i8* @get_bits(i32* %14, i32 2)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @skip_bits(i32* %18, i32 4)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @skip_bits1(i32* %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** @BIN_ONLY_SHAPE, align 8
  %26 = icmp ne i8* %24, %25
  br i1 %26, label %27, label %95

27:                                               ; preds = %2
  %28 = load i32*, i32** %5, align 8
  %29 = call i8* @get_bits1(i32* %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i8* @get_bits(i32* %32, i32 2)
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %27
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 7
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = load i32, i32* @AV_LOG_ERROR, align 4
  %46 = call i32 @av_log(%struct.TYPE_12__* %44, i32 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %47, i32* %3, align 4
  br label %252

48:                                               ; preds = %27
  %49 = load i32*, i32** %5, align 8
  %50 = call i8* @get_bits(i32* %49, i32 4)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 10
  br i1 %53, label %54, label %82

54:                                               ; preds = %48
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @AV_PIX_FMT_GBRP10, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 7
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  store i32 %60, i32* %64, align 8
  br label %81

65:                                               ; preds = %54
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CHROMA_422, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @AV_PIX_FMT_YUV422P10, align 4
  br label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @AV_PIX_FMT_YUV444P10, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 7
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  store i32 %76, i32* %80, align 8
  br label %81

81:                                               ; preds = %75, %59
  br label %89

82:                                               ; preds = %48
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 7
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @avpriv_request_sample(%struct.TYPE_12__* %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %88, i32* %3, align 4
  br label %252

89:                                               ; preds = %81
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 7
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 8
  br label %95

95:                                               ; preds = %89, %2
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** @RECT_SHAPE, align 8
  %100 = icmp eq i8* %98, %99
  br i1 %100, label %101, label %161

101:                                              ; preds = %95
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 7
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @check_marker(%struct.TYPE_12__* %104, i32* %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32*, i32** %5, align 8
  %108 = call i8* @get_bits(i32* %107, i32 14)
  %109 = ptrtoint i8* %108 to i32
  store i32 %109, i32* %7, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 7
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @check_marker(%struct.TYPE_12__* %112, i32* %113, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i32*, i32** %5, align 8
  %116 = call i8* @get_bits(i32* %115, i32 14)
  %117 = ptrtoint i8* %116 to i32
  store i32 %117, i32* %8, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 7
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @check_marker(%struct.TYPE_12__* %120, i32* %121, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %160

125:                                              ; preds = %101
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %160

128:                                              ; preds = %125
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %128
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %133
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %150, label %144

144:                                              ; preds = %138
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144, %138
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 3
  store i32 1, i32* %152, align 8
  br label %153

153:                                              ; preds = %150, %144, %133, %128
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %153, %125, %101
  br label %161

161:                                              ; preds = %160, %95
  %162 = load i32*, i32** %5, align 8
  %163 = call i8* @get_bits(i32* %162, i32 4)
  %164 = ptrtoint i8* %163 to i64
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 4
  store i64 %164, i64* %166, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @FF_ASPECT_EXTENDED, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %187

172:                                              ; preds = %161
  %173 = load i32*, i32** %5, align 8
  %174 = call i8* @get_bits(i32* %173, i32 8)
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 7
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  store i8* %174, i8** %179, align 8
  %180 = load i32*, i32** %5, align 8
  %181 = call i8* @get_bits(i32* %180, i32 8)
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 7
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  store i8* %181, i8** %186, align 8
  br label %199

187:                                              ; preds = %161
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 7
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ff_h263_pixel_aspect, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i64 %195
  %197 = bitcast %struct.TYPE_11__* %191 to i8*
  %198 = bitcast %struct.TYPE_11__* %196 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %197, i8* align 8 %198, i64 16, i1 false)
  br label %199

199:                                              ; preds = %187, %172
  %200 = load i32*, i32** %5, align 8
  %201 = call i32 @skip_bits(i32* %200, i32 4)
  %202 = load i32*, i32** %5, align 8
  %203 = call i32 @skip_bits(i32* %202, i32 15)
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 7
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = load i32*, i32** %5, align 8
  %208 = call i32 @check_marker(%struct.TYPE_12__* %206, i32* %207, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %209 = load i32*, i32** %5, align 8
  %210 = call i32 @skip_bits(i32* %209, i32 15)
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 7
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = load i32*, i32** %5, align 8
  %215 = call i32 @check_marker(%struct.TYPE_12__* %213, i32* %214, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %216 = load i32*, i32** %5, align 8
  %217 = call i32 @skip_bits(i32* %216, i32 15)
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 7
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = load i32*, i32** %5, align 8
  %222 = call i32 @check_marker(%struct.TYPE_12__* %220, i32* %221, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %223 = load i32*, i32** %5, align 8
  %224 = call i32 @skip_bits(i32* %223, i32 3)
  %225 = load i32*, i32** %5, align 8
  %226 = call i32 @skip_bits(i32* %225, i32 11)
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 7
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %228, align 8
  %230 = load i32*, i32** %5, align 8
  %231 = call i32 @check_marker(%struct.TYPE_12__* %229, i32* %230, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %232 = load i32*, i32** %5, align 8
  %233 = call i32 @skip_bits(i32* %232, i32 15)
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 7
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %235, align 8
  %237 = load i32*, i32** %5, align 8
  %238 = call i32 @check_marker(%struct.TYPE_12__* %236, i32* %237, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %239 = load i32*, i32** %5, align 8
  %240 = call i8* @get_bits1(i32* %239)
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 6
  store i8* %240, i8** %242, align 8
  %243 = load i32*, i32** %5, align 8
  %244 = call i8* @get_bits1(i32* %243)
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 5
  store i8* %244, i8** %246, align 8
  %247 = load i32*, i32** %5, align 8
  %248 = call i32 @next_start_code_studio(i32* %247)
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %250 = load i32*, i32** %5, align 8
  %251 = call i32 @extension_and_user_data(%struct.TYPE_9__* %249, i32* %250, i32 2)
  store i32 0, i32* %3, align 4
  br label %252

252:                                              ; preds = %199, %82, %41
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits1(i32*) #1

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @check_marker(%struct.TYPE_12__*, i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @next_start_code_studio(i32*) #1

declare dso_local i32 @extension_and_user_data(%struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
