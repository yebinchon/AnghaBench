; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc.c_rtp_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc.c_rtp_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, %struct.TYPE_10__*, i64, i64, %struct.TYPE_12__**, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i32, i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Only one stream supported in the RTP muxer\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Unsupported codec %s\0A\00", align 1
@RTP_PT_PRIVATE = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@NTP_OFFSET_US = common dso_local global i64 0, align 8
@AVFMT_FLAG_BITEXACT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Max packet size %u too low\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@TS_PACKET_SIZE = common dso_local global i32 0, align 4
@FF_COMPLIANCE_EXPERIMENTAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [192 x i8] c"Packetizing VC-2 is experimental and does not use all values of the specification (even though most receivers may handle it just fine). Please set -strict experimental in order to enable it.\0A\00", align 1
@AVERROR_EXPERIMENTAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [227 x i8] c"Packetizing H.261 is experimental and produces incorrect packetization for cases where GOBs don't fit into packets (even though most receivers may handle it just fine). Please set -f_strict experimental in order to enable it.\0A\00", align 1
@.str.5 = private unnamed_addr constant [135 x i8] c"Packetizing VP9 is experimental and its specification is still in draft state. Please set -strict experimental in order to enable it.\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Multistream opus not supported in RTP\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Incorrect iLBC block size specified\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"RTP max payload size too small for AMR\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Only mono is supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @rtp_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_write_header(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 20
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %4, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = call i32 @AVERROR(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = load i32, i32* @AV_LOG_ERROR, align 4
  %20 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %18, i32 %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %463

23:                                               ; preds = %1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 19
  %26 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %26, i64 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %7, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @is_supported(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %23
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = load i32, i32* @AV_LOG_ERROR, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @avcodec_get_name(i32 %43)
  %45 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %37, i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i32 -1, i32* %2, align 4
  br label %463

46:                                               ; preds = %23
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RTP_PT_PRIVATE, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = call i64 @ff_rtp_get_payload_type(%struct.TYPE_11__* %58, %struct.TYPE_13__* %61, i32 -1)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %57, %51
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  br label %77

71:                                               ; preds = %46
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %65
  %78 = call i32 (...) @av_get_random_seed()
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 18
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %77
  %93 = call i32 (...) @av_get_random_seed()
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %92, %77
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 5
  store i32 1, i32* %98, align 4
  %99 = call i64 (...) @ff_ntp_time()
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 17
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %96
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %106
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = sdiv i32 %115, 1000
  %117 = mul nsw i32 %116, 1000
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* @NTP_OFFSET_US, align 8
  %120 = add nsw i64 %118, %119
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 17
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %112, %106, %96
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %123
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @AVFMT_FLAG_BITEXACT, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %128
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 7
  store i32 0, i32* %137, align 4
  br label %143

138:                                              ; preds = %128
  %139 = call i32 (...) @av_get_random_seed()
  %140 = and i32 %139, 4095
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 7
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %138, %135
  br label %149

144:                                              ; preds = %123
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 65535
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %144, %143
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 9
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %174

154:                                              ; preds = %149
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 16
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %154
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 9
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 16
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @FFMIN(i32 %164, i32 %169)
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 9
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %161, %154
  br label %182

174:                                              ; preds = %149
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 16
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 9
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %174, %173
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 9
  %185 = load i32, i32* %184, align 4
  %186 = icmp sle i32 %185, 12
  br i1 %186, label %187, label %196

187:                                              ; preds = %182
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %189 = load i32, i32* @AV_LOG_ERROR, align 4
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 9
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %188, i32 %189, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %192)
  %194 = load i32, i32* @EIO, align 4
  %195 = call i32 @AVERROR(i32 %194)
  store i32 %195, i32* %2, align 4
  br label %463

196:                                              ; preds = %182
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 9
  %199 = load i32, i32* %198, align 4
  %200 = call i64 @av_malloc(i32 %199)
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 13
  store i64 %200, i64* %202, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 13
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %196
  %208 = load i32, i32* @ENOMEM, align 4
  %209 = call i32 @AVERROR(i32 %208)
  store i32 %209, i32* %2, align 4
  br label %463

210:                                              ; preds = %196
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 9
  %213 = load i32, i32* %212, align 4
  %214 = sub nsw i32 %213, 12
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 10
  store i32 %214, i32* %216, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %232

224:                                              ; preds = %210
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @avpriv_set_pts_info(%struct.TYPE_12__* %225, i32 32, i32 1, i32 %230)
  br label %235

232:                                              ; preds = %210
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %234 = call i32 @avpriv_set_pts_info(%struct.TYPE_12__* %233, i32 32, i32 1, i32 90000)
  br label %235

235:                                              ; preds = %232, %224
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 13
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 15
  store i64 %238, i64* %240, align 8
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  switch i32 %245, label %456 [
    i32 136, label %246
    i32 135, label %246
    i32 134, label %255
    i32 132, label %255
    i32 133, label %256
    i32 141, label %271
    i32 140, label %283
    i32 139, label %295
    i32 138, label %324
    i32 128, label %353
    i32 129, label %365
    i32 130, label %365
    i32 144, label %368
    i32 131, label %371
    i32 137, label %385
    i32 143, label %415
    i32 142, label %415
    i32 145, label %453
  ]

246:                                              ; preds = %235, %235
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 13
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %249, 4
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 15
  store i64 %250, i64* %252, align 8
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %254 = call i32 @avpriv_set_pts_info(%struct.TYPE_12__* %253, i32 32, i32 1, i32 90000)
  br label %457

255:                                              ; preds = %235, %235
  br label %457

256:                                              ; preds = %235
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 10
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @TS_PACKET_SIZE, align 4
  %261 = sdiv i32 %259, %260
  store i32 %261, i32* %5, align 4
  %262 = load i32, i32* %5, align 4
  %263 = icmp slt i32 %262, 1
  br i1 %263, label %264, label %265

264:                                              ; preds = %256
  store i32 1, i32* %5, align 4
  br label %265

265:                                              ; preds = %264, %256
  %266 = load i32, i32* %5, align 4
  %267 = load i32, i32* @TS_PACKET_SIZE, align 4
  %268 = mul nsw i32 %266, %267
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 10
  store i32 %268, i32* %270, align 8
  br label %457

271:                                              ; preds = %235
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 14
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @FF_COMPLIANCE_EXPERIMENTAL, align 4
  %276 = icmp sgt i32 %274, %275
  br i1 %276, label %277, label %282

277:                                              ; preds = %271
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %279 = load i32, i32* @AV_LOG_ERROR, align 4
  %280 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %278, i32 %279, i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.3, i64 0, i64 0))
  %281 = load i32, i32* @AVERROR_EXPERIMENTAL, align 4
  store i32 %281, i32* %6, align 4
  br label %458

282:                                              ; preds = %271
  br label %457

283:                                              ; preds = %235
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 14
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @FF_COMPLIANCE_EXPERIMENTAL, align 4
  %288 = icmp sgt i32 %286, %287
  br i1 %288, label %289, label %294

289:                                              ; preds = %283
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %291 = load i32, i32* @AV_LOG_ERROR, align 4
  %292 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %290, i32 %291, i8* getelementptr inbounds ([227 x i8], [227 x i8]* @.str.4, i64 0, i64 0))
  %293 = load i32, i32* @AVERROR_EXPERIMENTAL, align 4
  store i32 %293, i32* %6, align 4
  br label %458

294:                                              ; preds = %283
  br label %457

295:                                              ; preds = %235
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = icmp sgt i32 %300, 4
  br i1 %301, label %302, label %323

302:                                              ; preds = %295
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 4
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  %309 = load i32, i32* %308, align 4
  %310 = icmp eq i32 %309, 1
  br i1 %310, label %311, label %323

311:                                              ; preds = %302
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 1
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 4
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 4
  %318 = load i32, i32* %317, align 4
  %319 = and i32 %318, 3
  %320 = add nsw i32 %319, 1
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 11
  store i32 %320, i32* %322, align 4
  br label %323

323:                                              ; preds = %311, %302, %295
  br label %457

324:                                              ; preds = %235
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 1
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = icmp sgt i32 %329, 21
  br i1 %330, label %331, label %352

331:                                              ; preds = %324
  %332 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 4
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 0
  %338 = load i32, i32* %337, align 4
  %339 = icmp eq i32 %338, 1
  br i1 %339, label %340, label %352

340:                                              ; preds = %331
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 1
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 4
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 21
  %347 = load i32, i32* %346, align 4
  %348 = and i32 %347, 3
  %349 = add nsw i32 %348, 1
  %350 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 11
  store i32 %349, i32* %351, align 4
  br label %352

352:                                              ; preds = %340, %331, %324
  br label %457

353:                                              ; preds = %235
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 14
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @FF_COMPLIANCE_EXPERIMENTAL, align 4
  %358 = icmp sgt i32 %356, %357
  br i1 %358, label %359, label %364

359:                                              ; preds = %353
  %360 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %361 = load i32, i32* @AV_LOG_ERROR, align 4
  %362 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %360, i32 %361, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.5, i64 0, i64 0))
  %363 = load i32, i32* @AVERROR_EXPERIMENTAL, align 4
  store i32 %363, i32* %6, align 4
  br label %458

364:                                              ; preds = %353
  br label %457

365:                                              ; preds = %235, %235
  %366 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %366, i32 0, i32 12
  store i32 15, i32* %367, align 8
  br label %457

368:                                              ; preds = %235
  %369 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %370 = call i32 @avpriv_set_pts_info(%struct.TYPE_12__* %369, i32 32, i32 1, i32 8000)
  br label %457

371:                                              ; preds = %235
  %372 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %372, i32 0, i32 1
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 5
  %376 = load i32, i32* %375, align 8
  %377 = icmp sgt i32 %376, 2
  br i1 %377, label %378, label %382

378:                                              ; preds = %371
  %379 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %380 = load i32, i32* @AV_LOG_ERROR, align 4
  %381 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %379, i32 %380, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %458

382:                                              ; preds = %371
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %384 = call i32 @avpriv_set_pts_info(%struct.TYPE_12__* %383, i32 32, i32 1, i32 48000)
  br label %457

385:                                              ; preds = %235
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 1
  %388 = load %struct.TYPE_13__*, %struct.TYPE_13__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %388, i32 0, i32 6
  %390 = load i32, i32* %389, align 4
  %391 = icmp ne i32 %390, 38
  br i1 %391, label %392, label %403

392:                                              ; preds = %385
  %393 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 1
  %395 = load %struct.TYPE_13__*, %struct.TYPE_13__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %395, i32 0, i32 6
  %397 = load i32, i32* %396, align 4
  %398 = icmp ne i32 %397, 50
  br i1 %398, label %399, label %403

399:                                              ; preds = %392
  %400 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %401 = load i32, i32* @AV_LOG_ERROR, align 4
  %402 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %400, i32 %401, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %458

403:                                              ; preds = %392, %385
  %404 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %404, i32 0, i32 10
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %408 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %407, i32 0, i32 1
  %409 = load %struct.TYPE_13__*, %struct.TYPE_13__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %409, i32 0, i32 6
  %411 = load i32, i32* %410, align 4
  %412 = sdiv i32 %406, %411
  %413 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %413, i32 0, i32 12
  store i32 %412, i32* %414, align 8
  br label %457

415:                                              ; preds = %235, %235
  %416 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i32 0, i32 12
  store i32 50, i32* %417, align 8
  %418 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 1
  %420 = load %struct.TYPE_13__*, %struct.TYPE_13__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = icmp eq i32 %422, 143
  br i1 %423, label %424, label %425

424:                                              ; preds = %415
  store i32 31, i32* %5, align 4
  br label %426

425:                                              ; preds = %415
  store i32 61, i32* %5, align 4
  br label %426

426:                                              ; preds = %425, %424
  %427 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %428 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %427, i32 0, i32 12
  %429 = load i32, i32* %428, align 8
  %430 = add nsw i32 1, %429
  %431 = load i32, i32* %5, align 4
  %432 = add nsw i32 %430, %431
  %433 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %433, i32 0, i32 10
  %435 = load i32, i32* %434, align 8
  %436 = icmp sgt i32 %432, %435
  br i1 %436, label %437, label %441

437:                                              ; preds = %426
  %438 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %439 = load i32, i32* @AV_LOG_ERROR, align 4
  %440 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %438, i32 %439, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %458

441:                                              ; preds = %426
  %442 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %443 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %442, i32 0, i32 1
  %444 = load %struct.TYPE_13__*, %struct.TYPE_13__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %444, i32 0, i32 5
  %446 = load i32, i32* %445, align 8
  %447 = icmp ne i32 %446, 1
  br i1 %447, label %448, label %452

448:                                              ; preds = %441
  %449 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %450 = load i32, i32* @AV_LOG_ERROR, align 4
  %451 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %449, i32 %450, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %458

452:                                              ; preds = %441
  br label %457

453:                                              ; preds = %235
  %454 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %455 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %454, i32 0, i32 12
  store i32 50, i32* %455, align 8
  br label %457

456:                                              ; preds = %235
  br label %457

457:                                              ; preds = %456, %453, %452, %403, %382, %368, %365, %364, %352, %323, %294, %282, %265, %255, %246
  store i32 0, i32* %2, align 4
  br label %463

458:                                              ; preds = %448, %437, %399, %378, %359, %289, %277
  %459 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %460 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %459, i32 0, i32 13
  %461 = call i32 @av_freep(i64* %460)
  %462 = load i32, i32* %6, align 4
  store i32 %462, i32* %2, align 4
  br label %463

463:                                              ; preds = %458, %457, %207, %187, %36, %17
  %464 = load i32, i32* %2, align 4
  ret i32 %464
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @is_supported(i32) #1

declare dso_local i32 @avcodec_get_name(i32) #1

declare dso_local i64 @ff_rtp_get_payload_type(%struct.TYPE_11__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @av_get_random_seed(...) #1

declare dso_local i64 @ff_ntp_time(...) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i64 @av_malloc(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @av_freep(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
