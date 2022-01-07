; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dxa.c_dxa_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dxa.c_dxa_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i64, i32, i64, i32, i32, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"File contains no frames ???\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_DXA = common dso_local global i32 0, align 4
@AV_TIME_BASE = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%d frame(s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @dxa_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dxa_read_header(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %4, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %5, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @avio_rl32(i32* %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @MKTAG(i8 signext 68, i8 signext 69, i8 signext 88, i8 signext 65)
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %30, i32* %2, align 4
  br label %294

31:                                               ; preds = %1
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @avio_r8(i32* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = call i8* @avio_rb16(i32* %34)
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %31
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = load i32, i32* @AV_LOG_ERROR, align 4
  %46 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %44, i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %47, i32* %2, align 4
  br label %294

48:                                               ; preds = %31
  %49 = load i32*, i32** %4, align 8
  %50 = call i8* @avio_rb32(i32* %49)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  store i32 1000, i32* %13, align 4
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %12, align 4
  br label %64

56:                                               ; preds = %48
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  store i32 100000, i32* %13, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %12, align 4
  br label %63

62:                                               ; preds = %56
  store i32 10, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %63

63:                                               ; preds = %62, %59
  br label %64

64:                                               ; preds = %63, %54
  %65 = load i32*, i32** %4, align 8
  %66 = call i8* @avio_rb16(i32* %65)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %10, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = call i8* @avio_rb16(i32* %68)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %11, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  store i32 0, i32* %72, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = call %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__* %73, i32* null)
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %6, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = icmp ne %struct.TYPE_12__* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %64
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = call i32 @AVERROR(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %294

80:                                               ; preds = %64
  %81 = load i32*, i32** %4, align 8
  %82 = call i64 @avio_rl32(i32* %81)
  %83 = call i64 @MKTAG(i8 signext 87, i8 signext 65, i8 signext 86, i8 signext 69)
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %223

85:                                               ; preds = %80
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = call i8* @avio_rb32(i32* %88)
  %90 = ptrtoint i8* %89 to i64
  store i64 %90, i64* %16, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = call i64 @avio_tell(i32* %91)
  %93 = load i64, i64* %16, align 8
  %94 = add nsw i64 %92, %93
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @avio_skip(i32* %97, i64 16)
  %99 = load i32*, i32** %4, align 8
  %100 = call i64 @avio_rl32(i32* %99)
  store i64 %100, i64* %17, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = call %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__* %101, i32* null)
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %7, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %104 = icmp ne %struct.TYPE_12__* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %85
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = call i32 @AVERROR(i32 %106)
  store i32 %107, i32* %2, align 4
  br label %294

108:                                              ; preds = %85
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = load i64, i64* %17, align 8
  %115 = call i32 @ff_get_wav_header(%struct.TYPE_13__* %109, i32* %110, %struct.TYPE_14__* %113, i64 %114, i32 0)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %2, align 4
  br label %294

120:                                              ; preds = %108
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %120
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i32 @avpriv_set_pts_info(%struct.TYPE_12__* %128, i32 64, i32 1, i32 %134)
  br label %136

136:                                              ; preds = %127, %120
  br label %137

137:                                              ; preds = %160, %136
  %138 = load i32*, i32** %4, align 8
  %139 = call i64 @avio_tell(i32* %138)
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp slt i64 %139, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load i32*, i32** %4, align 8
  %146 = call i32 @avio_feof(i32* %145)
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  br label %149

149:                                              ; preds = %144, %137
  %150 = phi i1 [ false, %137 ], [ %148, %144 ]
  br i1 %150, label %151, label %164

151:                                              ; preds = %149
  %152 = load i32*, i32** %4, align 8
  %153 = call i64 @avio_rl32(i32* %152)
  store i64 %153, i64* %8, align 8
  %154 = load i32*, i32** %4, align 8
  %155 = call i64 @avio_rl32(i32* %154)
  store i64 %155, i64* %17, align 8
  %156 = load i64, i64* %8, align 8
  %157 = call i64 @MKTAG(i8 signext 100, i8 signext 97, i8 signext 116, i8 signext 97)
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  br label %164

160:                                              ; preds = %151
  %161 = load i32*, i32** %4, align 8
  %162 = load i64, i64* %17, align 8
  %163 = call i32 @avio_skip(i32* %161, i64 %162)
  br label %137

164:                                              ; preds = %159, %149
  %165 = load i64, i64* %17, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %165, %168
  %170 = sub nsw i64 %169, 1
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = sdiv i64 %170, %173
  %175 = trunc i64 %174 to i32
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %209

184:                                              ; preds = %164
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %187, %192
  %194 = sub nsw i32 %193, 1
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = sdiv i32 %194, %199
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = mul nsw i32 %200, %205
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 8
  br label %209

209:                                              ; preds = %184, %164
  %210 = load i64, i64* %17, align 8
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 6
  store i64 %210, i64* %212, align 8
  %213 = load i32*, i32** %4, align 8
  %214 = call i64 @avio_tell(i32* %213)
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 5
  store i64 %214, i64* %216, align 8
  %217 = load i32*, i32** %4, align 8
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* @SEEK_SET, align 4
  %222 = call i32 @avio_seek(i32* %217, i64 %220, i32 %221)
  br label %223

223:                                              ; preds = %209, %80
  %224 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 5
  store i32 %224, i32* %228, align 8
  %229 = load i32, i32* @AV_CODEC_ID_DXA, align 4
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 4
  store i32 %229, i32* %233, align 4
  %234 = load i32, i32* %10, align 4
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 2
  store i32 %234, i32* %238, align 4
  %239 = load i32, i32* %11, align 4
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 3
  store i32 %239, i32* %243, align 8
  %244 = load i32, i32* %13, align 4
  %245 = load i32, i32* %12, align 4
  %246 = call i32 @av_reduce(i32* %13, i32* %12, i32 %244, i32 %245, i64 2147483647)
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %248 = load i32, i32* %12, align 4
  %249 = load i32, i32* %13, align 4
  %250 = call i32 @avpriv_set_pts_info(%struct.TYPE_12__* %247, i32 33, i32 %248, i32 %249)
  %251 = load i32, i32* %14, align 4
  %252 = and i32 %251, 192
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %223
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = ashr i32 %259, 1
  store i32 %260, i32* %258, align 8
  br label %261

261:                                              ; preds = %254, %223
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 0
  %266 = xor i1 %265, true
  %267 = zext i1 %266 to i32
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 4
  store i32 %267, i32* %269, align 4
  %270 = load i32*, i32** %4, align 8
  %271 = call i64 @avio_tell(i32* %270)
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 2
  store i64 %271, i64* %273, align 8
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 1
  store i64 0, i64* %275, align 8
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = trunc i64 %278 to i32
  %280 = load i32, i32* @AV_TIME_BASE, align 4
  %281 = mul nsw i32 %279, %280
  %282 = load i32, i32* %12, align 4
  %283 = mul nsw i32 %281, %282
  %284 = load i32, i32* %13, align 4
  %285 = sdiv i32 %283, %284
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 0
  store i32 %285, i32* %287, align 8
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %289 = load i32, i32* @AV_LOG_DEBUG, align 4
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %288, i32 %289, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %292)
  store i32 0, i32* %2, align 4
  br label %294

294:                                              ; preds = %261, %118, %105, %77, %43, %29
  %295 = load i32, i32* %2, align 4
  ret i32 %295
}

declare dso_local i64 @avio_rl32(i32*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i8* @avio_rb16(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, ...) #1

declare dso_local i8* @avio_rb32(i32*) #1

declare dso_local %struct.TYPE_12__* @avformat_new_stream(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i32 @avio_skip(i32*, i64) #1

declare dso_local i32 @ff_get_wav_header(%struct.TYPE_13__*, i32*, %struct.TYPE_14__*, i64, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @avio_feof(i32*) #1

declare dso_local i32 @avio_seek(i32*, i64, i32) #1

declare dso_local i32 @av_reduce(i32*, i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
