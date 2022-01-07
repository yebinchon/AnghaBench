; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc.c_rtp_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc.c_rtp_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_31__**, %struct.TYPE_30__* }
%struct.TYPE_31__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_32__ = type { i32, i32, i32, i64 }

@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%d: write len=%d\0A\00", align 1
@RTCP_TX_RATIO_NUM = common dso_local global i32 0, align 4
@RTCP_TX_RATIO_DEN = common dso_local global i32 0, align 4
@RTCP_SR_SIZE = common dso_local global i32 0, align 4
@FF_RTP_FLAG_SKIP_RTCP = common dso_local global i32 0, align 4
@FF_RTP_FLAG_MP4A_LATM = common dso_local global i32 0, align 4
@AV_FIELD_PROGRESSIVE = common dso_local global i32 0, align 4
@FF_RTP_FLAG_RFC2190 = common dso_local global i32 0, align 4
@AV_PKT_DATA_H263_MB_INFO = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Packet size %d too large for max RTP payload size %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_33__*, %struct.TYPE_32__*)* @rtp_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_write_packet(%struct.TYPE_33__* %0, %struct.TYPE_32__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %5, align 8
  %12 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  store %struct.TYPE_30__* %14, %struct.TYPE_30__** %6, align 8
  %15 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %17, i64 0
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  store %struct.TYPE_31__* %19, %struct.TYPE_31__** %7, align 8
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %24 = load i32, i32* @AV_LOG_TRACE, align 4
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @av_log(%struct.TYPE_33__* %23, i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  %37 = load i32, i32* @RTCP_TX_RATIO_NUM, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* @RTCP_TX_RATIO_DEN, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %2
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @RTCP_SR_SIZE, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %45
  %50 = call i32 (...) @ff_ntp_time()
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %50, %53
  %55 = icmp sgt i32 %54, 5000000
  br i1 %55, label %56, label %74

56:                                               ; preds = %49, %2
  %57 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @FF_RTP_FLAG_SKIP_RTCP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %56
  %64 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %65 = call i32 (...) @ff_ntp_time()
  %66 = call i32 @rtcp_send_sr(%struct.TYPE_33__* %64, i32 %65, i32 0)
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %72, i32 0, i32 7
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %63, %56, %49, %45
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %82, i32 0, i32 6
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %325 [
    i32 139, label %89
    i32 140, label %89
    i32 132, label %89
    i32 135, label %89
    i32 134, label %102
    i32 133, label %102
    i32 138, label %102
    i32 137, label %102
    i32 136, label %115
    i32 159, label %128
    i32 158, label %141
    i32 157, label %141
    i32 146, label %159
    i32 145, label %159
    i32 144, label %166
    i32 142, label %166
    i32 160, label %173
    i32 156, label %195
    i32 155, label %195
    i32 143, label %202
    i32 154, label %209
    i32 150, label %225
    i32 153, label %232
    i32 152, label %239
    i32 151, label %259
    i32 149, label %266
    i32 130, label %273
    i32 131, label %273
    i32 129, label %280
    i32 128, label %287
    i32 148, label %294
    i32 147, label %301
    i32 141, label %308
  ]

89:                                               ; preds = %74, %74, %74, %74
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 8, %99
  %101 = call i32 @rtp_send_samples(%struct.TYPE_33__* %90, i32 %93, i32 %94, i32 %100)
  store i32 %101, i32* %3, align 4
  br label %333

102:                                              ; preds = %74, %74, %74, %74
  %103 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 16, %112
  %114 = call i32 @rtp_send_samples(%struct.TYPE_33__* %103, i32 %106, i32 %107, i32 %113)
  store i32 %114, i32* %3, align 4
  br label %333

115:                                              ; preds = %74
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 24, %125
  %127 = call i32 @rtp_send_samples(%struct.TYPE_33__* %116, i32 %119, i32 %120, i32 %126)
  store i32 %127, i32* %3, align 4
  br label %333

128:                                              ; preds = %74
  %129 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %130 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 8, %138
  %140 = call i32 @rtp_send_samples(%struct.TYPE_33__* %129, i32 %132, i32 %133, i32 %139)
  store i32 %140, i32* %3, align 4
  br label %333

141:                                              ; preds = %74, %74
  %142 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %143 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = mul nsw i32 %151, %156
  %158 = call i32 @rtp_send_samples(%struct.TYPE_33__* %142, i32 %145, i32 %146, i32 %157)
  store i32 %158, i32* %3, align 4
  br label %333

159:                                              ; preds = %74, %74
  %160 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @rtp_send_mpegaudio(%struct.TYPE_33__* %160, i32 %163, i32 %164)
  br label %332

166:                                              ; preds = %74, %74
  %167 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %168 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @ff_rtp_send_mpegvideo(%struct.TYPE_33__* %167, i32 %170, i32 %171)
  br label %332

173:                                              ; preds = %74
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @FF_RTP_FLAG_MP4A_LATM, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %173
  %181 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %182 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @ff_rtp_send_latm(%struct.TYPE_33__* %181, i32 %184, i32 %185)
  br label %194

187:                                              ; preds = %173
  %188 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @ff_rtp_send_aac(%struct.TYPE_33__* %188, i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %187, %180
  br label %332

195:                                              ; preds = %74, %74
  %196 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %197 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @ff_rtp_send_amr(%struct.TYPE_33__* %196, i32 %199, i32 %200)
  br label %332

202:                                              ; preds = %74
  %203 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %204 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %9, align 4
  %208 = call i32 @rtp_send_mpegts_raw(%struct.TYPE_33__* %203, i32 %206, i32 %207)
  br label %332

209:                                              ; preds = %74
  %210 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %211 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_29__*, %struct.TYPE_29__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @AV_FIELD_PROGRESSIVE, align 4
  %221 = icmp ne i32 %219, %220
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i32 1, i32 0
  %224 = call i32 @ff_rtp_send_vc2hq(%struct.TYPE_33__* %210, i32 %213, i32 %214, i32 %223)
  br label %332

225:                                              ; preds = %74
  %226 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %227 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %9, align 4
  %231 = call i32 @ff_rtp_send_h264_hevc(%struct.TYPE_33__* %226, i32 %229, i32 %230)
  br label %332

232:                                              ; preds = %74
  %233 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %234 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* %9, align 4
  %238 = call i32 @ff_rtp_send_h261(%struct.TYPE_33__* %233, i32 %236, i32 %237)
  br label %332

239:                                              ; preds = %74
  %240 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @FF_RTP_FLAG_RFC2190, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %258

246:                                              ; preds = %239
  store i32 0, i32* %10, align 4
  %247 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %248 = load i32, i32* @AV_PKT_DATA_H263_MB_INFO, align 4
  %249 = call i32* @av_packet_get_side_data(%struct.TYPE_32__* %247, i32 %248, i32* %10)
  store i32* %249, i32** %11, align 8
  %250 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %251 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %9, align 4
  %255 = load i32*, i32** %11, align 8
  %256 = load i32, i32* %10, align 4
  %257 = call i32 @ff_rtp_send_h263_rfc2190(%struct.TYPE_33__* %250, i32 %253, i32 %254, i32* %255, i32 %256)
  br label %332

258:                                              ; preds = %239
  br label %259

259:                                              ; preds = %74, %258
  %260 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %261 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %9, align 4
  %265 = call i32 @ff_rtp_send_h263(%struct.TYPE_33__* %260, i32 %263, i32 %264)
  br label %332

266:                                              ; preds = %74
  %267 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %268 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* %9, align 4
  %272 = call i32 @ff_rtp_send_h264_hevc(%struct.TYPE_33__* %267, i32 %270, i32 %271)
  br label %332

273:                                              ; preds = %74, %74
  %274 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %275 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %9, align 4
  %279 = call i32 @ff_rtp_send_xiph(%struct.TYPE_33__* %274, i32 %277, i32 %278)
  br label %332

280:                                              ; preds = %74
  %281 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %282 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* %9, align 4
  %286 = call i32 @ff_rtp_send_vp8(%struct.TYPE_33__* %281, i32 %284, i32 %285)
  br label %332

287:                                              ; preds = %74
  %288 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %289 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* %9, align 4
  %293 = call i32 @ff_rtp_send_vp9(%struct.TYPE_33__* %288, i32 %291, i32 %292)
  br label %332

294:                                              ; preds = %74
  %295 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %296 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* %9, align 4
  %300 = call i32 @rtp_send_ilbc(%struct.TYPE_33__* %295, i32 %298, i32 %299)
  br label %332

301:                                              ; preds = %74
  %302 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %303 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* %9, align 4
  %307 = call i32 @ff_rtp_send_jpeg(%struct.TYPE_33__* %302, i32 %305, i32 %306)
  br label %332

308:                                              ; preds = %74
  %309 = load i32, i32* %9, align 4
  %310 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = icmp sgt i32 %309, %312
  br i1 %313, label %314, label %324

314:                                              ; preds = %308
  %315 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %316 = load i32, i32* @AV_LOG_ERROR, align 4
  %317 = load i32, i32* %9, align 4
  %318 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @av_log(%struct.TYPE_33__* %315, i32 %316, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %317, i32 %320)
  %322 = load i32, i32* @EINVAL, align 4
  %323 = call i32 @AVERROR(i32 %322)
  store i32 %323, i32* %3, align 4
  br label %333

324:                                              ; preds = %308
  br label %325

325:                                              ; preds = %74, %324
  %326 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %327 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* %9, align 4
  %331 = call i32 @rtp_send_raw(%struct.TYPE_33__* %326, i32 %329, i32 %330)
  br label %332

332:                                              ; preds = %325, %301, %294, %287, %280, %273, %266, %259, %246, %232, %225, %209, %202, %195, %194, %166, %159
  store i32 0, i32* %3, align 4
  br label %333

333:                                              ; preds = %332, %314, %141, %128, %115, %102, %89
  %334 = load i32, i32* %3, align 4
  ret i32 %334
}

declare dso_local i32 @av_log(%struct.TYPE_33__*, i32, i8*, i32, i32) #1

declare dso_local i32 @ff_ntp_time(...) #1

declare dso_local i32 @rtcp_send_sr(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @rtp_send_samples(%struct.TYPE_33__*, i32, i32, i32) #1

declare dso_local i32 @rtp_send_mpegaudio(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @ff_rtp_send_mpegvideo(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @ff_rtp_send_latm(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @ff_rtp_send_aac(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @ff_rtp_send_amr(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @rtp_send_mpegts_raw(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @ff_rtp_send_vc2hq(%struct.TYPE_33__*, i32, i32, i32) #1

declare dso_local i32 @ff_rtp_send_h264_hevc(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @ff_rtp_send_h261(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32* @av_packet_get_side_data(%struct.TYPE_32__*, i32, i32*) #1

declare dso_local i32 @ff_rtp_send_h263_rfc2190(%struct.TYPE_33__*, i32, i32, i32*, i32) #1

declare dso_local i32 @ff_rtp_send_h263(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @ff_rtp_send_xiph(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @ff_rtp_send_vp8(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @ff_rtp_send_vp9(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @rtp_send_ilbc(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @ff_rtp_send_jpeg(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @rtp_send_raw(%struct.TYPE_33__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
