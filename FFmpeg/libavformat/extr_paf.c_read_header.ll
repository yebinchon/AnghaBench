; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_paf.c_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_paf.c_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, i32, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_PAF_VIDEO = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_PAF_AUDIO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %4, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @avio_skip(i32* %15, i32 132)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = call %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_14__* %17, i32 0)
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %7, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %20 = icmp ne %struct.TYPE_13__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %344

24:                                               ; preds = %1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i8* @avio_rl32(i32* %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  store i32 %29, i32* %35, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @avio_skip(i32* %36, i32 4)
  %38 = load i32*, i32** %5, align 8
  %39 = call i8* @avio_rl32(i32* %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 7
  store i8* %39, i8** %43, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i8* @avio_rl32(i32* %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 6
  store i8* %45, i8** %49, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @avio_skip(i32* %50, i32 4)
  %52 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 5
  store i32 %52, i32* %56, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 4
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @AV_CODEC_ID_PAF_VIDEO, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  store i32 %61, i32* %65, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %67 = call i32 @avpriv_set_pts_info(%struct.TYPE_13__* %66, i32 64, i32 1, i32 10)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %69 = call %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_14__* %68, i32 0)
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %6, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = icmp ne %struct.TYPE_13__* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %24
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = call i32 @AVERROR(i32 %73)
  store i32 %74, i32* %2, align 4
  br label %344

75:                                               ; preds = %24
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 5
  store i32 %78, i32* %82, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 4
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* @AV_CODEC_ID_PAF_AUDIO, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 3
  store i32 %87, i32* %91, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i32 2, i32* %95, align 8
  %96 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  store i32 %96, i32* %100, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  store i32 22050, i32* %104, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = call i32 @avpriv_set_pts_info(%struct.TYPE_13__* %105, i32 64, i32 1, i32 22050)
  %107 = load i32*, i32** %5, align 8
  %108 = call i8* @avio_rl32(i32* %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32*, i32** %5, align 8
  %113 = call i8* @avio_rl32(i32* %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load i32*, i32** %5, align 8
  %118 = call i8* @avio_rl32(i32* %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load i32*, i32** %5, align 8
  %123 = call i8* @avio_rl32(i32* %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  %127 = load i32*, i32** %5, align 8
  %128 = call i8* @avio_rl32(i32* %127)
  %129 = ptrtoint i8* %128 to i32
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = call i8* @avio_rl32(i32* %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %139, 175
  br i1 %140, label %199, label %141

141:                                              ; preds = %75
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %144, 2
  br i1 %145, label %199, label %146

146:                                              ; preds = %141
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %149, 1
  br i1 %150, label %199, label %151

151:                                              ; preds = %146
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %154, 1
  br i1 %155, label %199, label %156

156:                                              ; preds = %151
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %199, label %161

161:                                              ; preds = %156
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %164, 1
  br i1 %165, label %199, label %166

166:                                              ; preds = %161
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp sgt i32 %169, 2048
  br i1 %170, label %199, label %171

171:                                              ; preds = %166
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = icmp sgt i32 %174, 2048
  br i1 %175, label %199, label %176

176:                                              ; preds = %171
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = icmp sgt i32 %179, 2048
  br i1 %180, label %199, label %181

181:                                              ; preds = %176
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = load i32, i32* @INT_MAX, align 4
  %187 = sext i32 %186 to i64
  %188 = udiv i64 %187, 4
  %189 = icmp ugt i64 %185, %188
  br i1 %189, label %199, label %190

190:                                              ; preds = %181
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = load i32, i32* @INT_MAX, align 4
  %196 = sext i32 %195 to i64
  %197 = udiv i64 %196, 4
  %198 = icmp ugt i64 %194, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %190, %181, %176, %171, %166, %161, %156, %151, %146, %141, %75
  %200 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %200, i32* %2, align 4
  br label %344

201:                                              ; preds = %190
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = mul i64 %205, 1
  %207 = trunc i64 %206 to i32
  %208 = call i8* @av_mallocz(i32 %207)
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 14
  store i8* %208, i8** %210, align 8
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = mul i64 %214, 1
  %216 = trunc i64 %215 to i32
  %217 = call i8* @av_mallocz(i32 %216)
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 13
  store i8* %217, i8** %219, align 8
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = mul i64 %223, 1
  %225 = trunc i64 %224 to i32
  %226 = call i8* @av_mallocz(i32 %225)
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 12
  store i8* %226, i8** %228, align 8
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = mul nsw i32 %231, %234
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 7
  store i32 %235, i32* %237, align 4
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 4
  %241 = call i8* @av_mallocz(i32 %240)
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 17
  store i8* %241, i8** %243, align 8
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 6
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = mul nsw i32 %246, %249
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 8
  store i32 %250, i32* %252, align 8
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 8
  %255 = load i32, i32* %254, align 8
  %256 = call i8* @av_mallocz(i32 %255)
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 16
  store i8* %256, i8** %258, align 8
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 8
  %261 = load i32, i32* %260, align 8
  %262 = call i8* @av_mallocz(i32 %261)
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 15
  store i8* %262, i8** %264, align 8
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 14
  %267 = load i8*, i8** %266, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %269, label %294

269:                                              ; preds = %201
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 13
  %272 = load i8*, i8** %271, align 8
  %273 = icmp ne i8* %272, null
  br i1 %273, label %274, label %294

274:                                              ; preds = %269
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 12
  %277 = load i8*, i8** %276, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %294

279:                                              ; preds = %274
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 17
  %282 = load i8*, i8** %281, align 8
  %283 = icmp ne i8* %282, null
  br i1 %283, label %284, label %294

284:                                              ; preds = %279
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 16
  %287 = load i8*, i8** %286, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %294

289:                                              ; preds = %284
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 15
  %292 = load i8*, i8** %291, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %297, label %294

294:                                              ; preds = %289, %284, %279, %274, %269, %201
  %295 = load i32, i32* @ENOMEM, align 4
  %296 = call i32 @AVERROR(i32 %295)
  store i32 %296, i32* %8, align 4
  br label %340

297:                                              ; preds = %289
  %298 = load i32*, i32** %5, align 8
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @SEEK_SET, align 4
  %303 = call i32 @avio_seek(i32* %298, i32 %301, i32 %302)
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 14
  %307 = load i8*, i8** %306, align 8
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @read_table(%struct.TYPE_14__* %304, i8* %307, i32 %310)
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %313 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 13
  %315 = load i8*, i8** %314, align 8
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @read_table(%struct.TYPE_14__* %312, i8* %315, i32 %318)
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %321 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 12
  %323 = load i8*, i8** %322, align 8
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @read_table(%struct.TYPE_14__* %320, i8* %323, i32 %326)
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 11
  store i64 0, i64* %329, align 8
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 10
  store i64 0, i64* %331, align 8
  %332 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 9
  store i64 0, i64* %333, align 8
  %334 = load i32*, i32** %5, align 8
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @SEEK_SET, align 4
  %339 = call i32 @avio_seek(i32* %334, i32 %337, i32 %338)
  store i32 0, i32* %2, align 4
  br label %344

340:                                              ; preds = %294
  %341 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %342 = call i32 @read_close(%struct.TYPE_14__* %341)
  %343 = load i32, i32* %8, align 4
  store i32 %343, i32* %2, align 4
  br label %344

344:                                              ; preds = %340, %297, %199, %72, %21
  %345 = load i32, i32* %2, align 4
  ret i32 %345
}

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @avio_rl32(i32*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i8* @av_mallocz(i32) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @read_table(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @read_close(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
