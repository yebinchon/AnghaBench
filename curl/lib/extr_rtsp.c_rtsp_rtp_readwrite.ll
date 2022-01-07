; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_rtsp.c_rtsp_rtp_readwrite.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_rtsp.c_rtsp_rtp_readwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_4__, %struct.SingleRequest }
%struct.TYPE_4__ = type { i64 }
%struct.SingleRequest = type { i8*, i32 }
%struct.connectdata = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rtsp_conn }
%struct.rtsp_conn = type { i8*, i32, i32 }

@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"RTP write channel %d rtp_length %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Got an error writing an RTP packet\00", align 1
@FALSE = common dso_local global i32 0, align 4
@RTSPREQ_RECEIVE = common dso_local global i64 0, align 8
@KEEP_RECV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"RTP Rewinding %zd %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"(READMORE)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, %struct.connectdata*, i32*, i32*)* @rtsp_rtp_readwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsp_rtp_readwrite(%struct.Curl_easy* %0, %struct.connectdata* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca %struct.connectdata*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.SingleRequest*, align 8
  %11 = alloca %struct.rtsp_conn*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %6, align 8
  store %struct.connectdata* %1, %struct.connectdata** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %19 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %18, i32 0, i32 1
  store %struct.SingleRequest* %19, %struct.SingleRequest** %10, align 8
  %20 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %21 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.rtsp_conn* %22, %struct.rtsp_conn** %11, align 8
  %23 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %24 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %76

27:                                               ; preds = %4
  %28 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %29 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %32 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %33, %35
  %37 = call i8* @Curl_saferealloc(i8* %30, i32 %36)
  store i8* %37, i8** %16, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %27
  %41 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %42 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %41, i32 0, i32 0
  store i8* null, i8** %42, align 8
  %43 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %44 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  %45 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %45, i32* %5, align 4
  br label %263

46:                                               ; preds = %27
  %47 = load i8*, i8** %16, align 8
  %48 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %49 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %51 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %54 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  %58 = load %struct.SingleRequest*, %struct.SingleRequest** %10, align 8
  %59 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @memcpy(i8* %57, i8* %60, i32 %62)
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %67 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %71 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %12, align 8
  %73 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %74 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %13, align 4
  br label %82

76:                                               ; preds = %4
  %77 = load %struct.SingleRequest*, %struct.SingleRequest** %10, align 8
  %78 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %12, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %76, %46
  br label %83

83:                                               ; preds = %168, %82
  %84 = load i32, i32* %13, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i8*, i8** %12, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 36
  br label %92

92:                                               ; preds = %86, %83
  %93 = phi i1 [ false, %83 ], [ %91, %86 ]
  br i1 %93, label %94, label %169

94:                                               ; preds = %92
  %95 = load i32, i32* %13, align 4
  %96 = icmp sgt i32 %95, 4
  br i1 %96, label %97, label %165

97:                                               ; preds = %94
  %98 = load i8*, i8** %12, align 8
  %99 = call i32 @RTP_PKT_CHANNEL(i8* %98)
  %100 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %101 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load i8*, i8** %12, align 8
  %103 = call i32 @RTP_PKT_LENGTH(i8* %102)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, 4
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %97
  %109 = load i32, i32* @TRUE, align 4
  %110 = load i32*, i32** %9, align 8
  store i32 %109, i32* %110, align 4
  br label %169

111:                                              ; preds = %97
  %112 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %113 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %114 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %17, align 4
  %117 = call i32 (%struct.Curl_easy*, i8*, i32, ...) @infof(%struct.Curl_easy* %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %116)
  %118 = call i32 @DEBUGF(i32 %117)
  %119 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i32, i32* %17, align 4
  %123 = add nsw i32 %122, 4
  %124 = call i32 @rtp_client_write(%struct.connectdata* %119, i8* %121, i32 %123)
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %111
  %128 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %129 = call i32 @failf(%struct.Curl_easy* %128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %130 = load i32, i32* @FALSE, align 4
  %131 = load i32*, i32** %9, align 8
  store i32 %130, i32* %131, align 4
  %132 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %133 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @Curl_safefree(i8* %134)
  %136 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %137 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %136, i32 0, i32 0
  store i8* null, i8** %137, align 8
  %138 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %139 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %138, i32 0, i32 1
  store i32 0, i32* %139, align 8
  %140 = load i32, i32* %15, align 4
  store i32 %140, i32* %5, align 4
  br label %263

141:                                              ; preds = %111
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %142, 4
  %144 = load i32, i32* %13, align 4
  %145 = sub nsw i32 %144, %143
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 4
  %148 = load i8*, i8** %12, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  store i8* %150, i8** %12, align 8
  %151 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %152 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @RTSPREQ_RECEIVE, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %141
  %158 = load i32, i32* @KEEP_RECV, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.SingleRequest*, %struct.SingleRequest** %10, align 8
  %161 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %157, %141
  br label %168

165:                                              ; preds = %94
  %166 = load i32, i32* @TRUE, align 4
  %167 = load i32*, i32** %9, align 8
  store i32 %166, i32* %167, align 4
  br label %169

168:                                              ; preds = %164
  br label %83

169:                                              ; preds = %165, %108, %92
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %219

172:                                              ; preds = %169
  %173 = load i8*, i8** %12, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 0
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 36
  br i1 %177, label %178, label %219

178:                                              ; preds = %172
  %179 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %180 = load i32, i32* %13, align 4
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %186 = call i32 (%struct.Curl_easy*, i8*, i32, ...) @infof(%struct.Curl_easy* %179, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %180, i8* %185)
  %187 = call i32 @DEBUGF(i32 %186)
  %188 = load i32, i32* %13, align 4
  %189 = call i8* @malloc(i32 %188)
  store i8* %189, i8** %14, align 8
  %190 = load i8*, i8** %14, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %202, label %192

192:                                              ; preds = %178
  %193 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %194 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @Curl_safefree(i8* %195)
  %197 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %198 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %197, i32 0, i32 0
  store i8* null, i8** %198, align 8
  %199 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %200 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %199, i32 0, i32 1
  store i32 0, i32* %200, align 8
  %201 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %201, i32* %5, align 4
  br label %263

202:                                              ; preds = %178
  %203 = load i8*, i8** %14, align 8
  %204 = load i8*, i8** %12, align 8
  %205 = load i32, i32* %13, align 4
  %206 = call i32 @memcpy(i8* %203, i8* %204, i32 %205)
  %207 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %208 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @Curl_safefree(i8* %209)
  %211 = load i8*, i8** %14, align 8
  %212 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %213 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %212, i32 0, i32 0
  store i8* %211, i8** %213, align 8
  %214 = load i32, i32* %13, align 4
  %215 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %216 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 8
  %217 = load i32*, i32** %8, align 8
  store i32 0, i32* %217, align 4
  %218 = load i32, i32* @CURLE_OK, align 4
  store i32 %218, i32* %5, align 4
  br label %263

219:                                              ; preds = %172, %169
  %220 = load i32*, i32** %8, align 8
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %13, align 4
  %223 = sub nsw i32 %221, %222
  %224 = load %struct.SingleRequest*, %struct.SingleRequest** %10, align 8
  %225 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = sext i32 %223 to i64
  %228 = getelementptr inbounds i8, i8* %226, i64 %227
  store i8* %228, i8** %225, align 8
  %229 = load i32, i32* %13, align 4
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %245

231:                                              ; preds = %219
  %232 = load %struct.SingleRequest*, %struct.SingleRequest** %10, align 8
  %233 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 0
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = load i8*, i8** %12, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 0
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp eq i32 %237, %241
  %243 = zext i1 %242 to i32
  %244 = call i32 @DEBUGASSERT(i32 %243)
  br label %245

245:                                              ; preds = %231, %219
  %246 = load i32, i32* %13, align 4
  %247 = load i32*, i32** %8, align 8
  %248 = load i32, i32* %247, align 4
  %249 = icmp sle i32 %246, %248
  %250 = zext i1 %249 to i32
  %251 = call i32 @DEBUGASSERT(i32 %250)
  %252 = load i32, i32* %13, align 4
  %253 = load i32*, i32** %8, align 8
  store i32 %252, i32* %253, align 4
  %254 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %255 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @Curl_safefree(i8* %256)
  %258 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %259 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %258, i32 0, i32 0
  store i8* null, i8** %259, align 8
  %260 = load %struct.rtsp_conn*, %struct.rtsp_conn** %11, align 8
  %261 = getelementptr inbounds %struct.rtsp_conn, %struct.rtsp_conn* %260, i32 0, i32 1
  store i32 0, i32* %261, align 8
  %262 = load i32, i32* @CURLE_OK, align 4
  store i32 %262, i32* %5, align 4
  br label %263

263:                                              ; preds = %245, %202, %192, %127, %40
  %264 = load i32, i32* %5, align 4
  ret i32 %264
}

declare dso_local i8* @Curl_saferealloc(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @RTP_PKT_CHANNEL(i8*) #1

declare dso_local i32 @RTP_PKT_LENGTH(i8*) #1

declare dso_local i32 @DEBUGF(i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i32, ...) #1

declare dso_local i32 @rtp_client_write(%struct.connectdata*, i8*, i32) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @DEBUGASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
