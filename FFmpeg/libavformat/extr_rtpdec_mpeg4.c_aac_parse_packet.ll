; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_mpeg4.c_aac_parse_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_mpeg4.c_aac_parse_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i32*, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid parser state\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid AU size\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error parsing AU headers\0A\00", align 1
@MAX_AAC_HBR_FRAME_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Invalid packet received\0A\00", align 1
@RTP_FLAG_MARKER = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Missed some packets, discarding frame\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"First AU larger than packet size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_13__*, i64*, i32*, i32, i32, i32)* @aac_parse_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_parse_packet(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2, %struct.TYPE_13__* %3, i64* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %14, align 8
  store i64* %4, i64** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %21 = load i32*, i32** %16, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %133, label %23

23:                                               ; preds = %9
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* @AV_LOG_ERROR, align 4
  %34 = call i32 @av_log(i32* %32, i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %35, i32* %10, align 4
  br label %408

36:                                               ; preds = %23
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %39, %42
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 6
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %43, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %36
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* @AV_LOG_ERROR, align 4
  %57 = call i32 @av_log(i32* %55, i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %58, i32* %10, align 4
  br label %408

59:                                               ; preds = %36
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 6
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @av_new_packet(%struct.TYPE_13__* %60, i32 %70)
  store i32 %71, i32* %20, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %59
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* @AV_LOG_ERROR, align 4
  %76 = call i32 @av_log(i32* %74, i32 %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* %20, align 4
  store i32 %77, i32* %10, align 4
  br label %408

78:                                               ; preds = %59
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 5
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 6
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @memcpy(i32* %81, i32* %88, i32 %98)
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 6
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, %108
  store i64 %112, i64* %110, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %119, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %124, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %78
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  store i32 0, i32* %10, align 4
  br label %408

132:                                              ; preds = %78
  store i32 1, i32* %10, align 4
  br label %408

133:                                              ; preds = %9
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %135 = load i32*, i32** %16, align 8
  %136 = load i32, i32* %17, align 4
  %137 = call i64 @rtp_parse_mp4_au(%struct.TYPE_11__* %134, i32* %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i32*, i32** %11, align 8
  %141 = load i32, i32* @AV_LOG_ERROR, align 4
  %142 = call i32 @av_log(i32* %140, i32 %141, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %408

143:                                              ; preds = %133
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 2
  %148 = load i32*, i32** %16, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 %147
  store i32* %149, i32** %16, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 7
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, 2
  %154 = load i32, i32* %17, align 4
  %155 = sext i32 %154 to i64
  %156 = sub nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %17, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %160, 1
  br i1 %161, label %162, label %314

162:                                              ; preds = %143
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 6
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ult i64 %164, %170
  br i1 %171, label %172, label %314

172:                                              ; preds = %162
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %205, label %177

177:                                              ; preds = %172
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 6
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* @MAX_AAC_HBR_FRAME_SIZE, align 4
  %185 = sext i32 %184 to i64
  %186 = icmp ugt i64 %183, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %177
  %188 = load i32*, i32** %11, align 8
  %189 = load i32, i32* @AV_LOG_ERROR, align 4
  %190 = call i32 @av_log(i32* %188, i32 %189, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %191 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %191, i32* %10, align 4
  br label %408

192:                                              ; preds = %177
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 6
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i64 0
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 2
  store i64 %198, i64* %200, align 8
  %201 = load i64*, i64** %15, align 8
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 4
  store i64 %202, i64* %204, align 8
  br label %205

205:                                              ; preds = %192, %172
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = load i64*, i64** %15, align 8
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %208, %210
  br i1 %211, label %233, label %212

212:                                              ; preds = %205
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 6
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i64 0
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %218, %221
  br i1 %222, label %233, label %223

223:                                              ; preds = %212
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* %17, align 4
  %228 = sext i32 %227 to i64
  %229 = add i64 %226, %228
  %230 = load i32, i32* @MAX_AAC_HBR_FRAME_SIZE, align 4
  %231 = sext i32 %230 to i64
  %232 = icmp ugt i64 %229, %231
  br i1 %232, label %233, label %242

233:                                              ; preds = %223, %212, %205
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 3
  store i64 0, i64* %235, align 8
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 2
  store i64 0, i64* %237, align 8
  %238 = load i32*, i32** %11, align 8
  %239 = load i32, i32* @AV_LOG_ERROR, align 4
  %240 = call i32 @av_log(i32* %238, i32 %239, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %241 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %241, i32* %10, align 4
  br label %408

242:                                              ; preds = %223
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 5
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  %250 = load i32*, i32** %16, align 8
  %251 = load i32, i32* %17, align 4
  %252 = call i32 @memcpy(i32* %249, i32* %250, i32 %251)
  %253 = load i32, i32* %17, align 4
  %254 = sext i32 %253 to i64
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = add i64 %257, %254
  store i64 %258, i64* %256, align 8
  %259 = load i32, i32* %19, align 4
  %260 = load i32, i32* @RTP_FLAG_MARKER, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %242
  %264 = load i32, i32* @EAGAIN, align 4
  %265 = call i32 @AVERROR(i32 %264)
  store i32 %265, i32* %10, align 4
  br label %408

266:                                              ; preds = %242
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %269, %272
  br i1 %273, label %274, label %281

274:                                              ; preds = %266
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 3
  store i64 0, i64* %276, align 8
  %277 = load i32*, i32** %11, align 8
  %278 = load i32, i32* @AV_LOG_ERROR, align 4
  %279 = call i32 @av_log(i32* %277, i32 %278, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %280 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %280, i32* %10, align 4
  br label %408

281:                                              ; preds = %266
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 3
  store i64 0, i64* %283, align 8
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = trunc i64 %287 to i32
  %289 = call i32 @av_new_packet(%struct.TYPE_13__* %284, i32 %288)
  store i32 %289, i32* %20, align 4
  %290 = load i32, i32* %20, align 4
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %281
  %293 = load i32*, i32** %11, align 8
  %294 = load i32, i32* @AV_LOG_ERROR, align 4
  %295 = call i32 @av_log(i32* %293, i32 %294, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %296 = load i32, i32* %20, align 4
  store i32 %296, i32* %10, align 4
  br label %408

297:                                              ; preds = %281
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 0
  store i32 %300, i32* %302, align 8
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 1
  %305 = load i32*, i32** %304, align 8
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 5
  %308 = load i32*, i32** %307, align 8
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = trunc i64 %311 to i32
  %313 = call i32 @memcpy(i32* %305, i32* %308, i32 %312)
  store i32 0, i32* %10, align 4
  br label %408

314:                                              ; preds = %162, %143
  %315 = load i32, i32* %17, align 4
  %316 = sext i32 %315 to i64
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 6
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i64 0
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = icmp ult i64 %316, %322
  br i1 %323, label %324, label %329

324:                                              ; preds = %314
  %325 = load i32*, i32** %11, align 8
  %326 = load i32, i32* @AV_LOG_ERROR, align 4
  %327 = call i32 @av_log(i32* %325, i32 %326, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %328 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %328, i32* %10, align 4
  br label %408

329:                                              ; preds = %314
  %330 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %331 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 6
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i64 0
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = trunc i64 %336 to i32
  %338 = call i32 @av_new_packet(%struct.TYPE_13__* %330, i32 %337)
  store i32 %338, i32* %20, align 4
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %340, label %345

340:                                              ; preds = %329
  %341 = load i32*, i32** %11, align 8
  %342 = load i32, i32* @AV_LOG_ERROR, align 4
  %343 = call i32 @av_log(i32* %341, i32 %342, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %344 = load i32, i32* %20, align 4
  store i32 %344, i32* %10, align 4
  br label %408

345:                                              ; preds = %329
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i32 0, i32 1
  %348 = load i32*, i32** %347, align 8
  %349 = load i32*, i32** %16, align 8
  %350 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 6
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i64 0
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = trunc i64 %355 to i32
  %357 = call i32 @memcpy(i32* %348, i32* %349, i32 %356)
  %358 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 6
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i64 0
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = load i32, i32* %17, align 4
  %365 = sext i32 %364 to i64
  %366 = sub i64 %365, %363
  %367 = trunc i64 %366 to i32
  store i32 %367, i32* %17, align 4
  %368 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 6
  %370 = load %struct.TYPE_10__*, %struct.TYPE_10__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i64 0
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = load i32*, i32** %16, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 %373
  store i32* %375, i32** %16, align 8
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i32 0, i32 0
  store i32 %378, i32* %380, align 8
  %381 = load i32, i32* %17, align 4
  %382 = icmp sgt i32 %381, 0
  br i1 %382, label %383, label %407

383:                                              ; preds = %345
  %384 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = icmp ugt i64 %386, 1
  br i1 %387, label %388, label %407

388:                                              ; preds = %383
  %389 = load i32, i32* %17, align 4
  %390 = call i32 @FFMIN(i32 %389, i32 8)
  %391 = sext i32 %390 to i64
  %392 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 2
  store i64 %391, i64* %393, align 8
  %394 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i32 0, i32 5
  %396 = load i32*, i32** %395, align 8
  %397 = load i32*, i32** %16, align 8
  %398 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %399 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %398, i32 0, i32 2
  %400 = load i64, i64* %399, align 8
  %401 = trunc i64 %400 to i32
  %402 = call i32 @memcpy(i32* %396, i32* %397, i32 %401)
  %403 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 0
  store i64 1, i64* %404, align 8
  %405 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %406 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %405, i32 0, i32 3
  store i64 0, i64* %406, align 8
  store i32 1, i32* %10, align 4
  br label %408

407:                                              ; preds = %383, %345
  store i32 0, i32* %10, align 4
  br label %408

408:                                              ; preds = %407, %388, %340, %324, %297, %292, %274, %263, %233, %187, %139, %132, %129, %73, %54, %31
  %409 = load i32, i32* %10, align 4
  ret i32 %409
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @rtp_parse_mp4_au(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
