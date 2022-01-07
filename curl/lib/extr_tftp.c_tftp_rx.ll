; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_tftp.c_tftp_rx.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_tftp.c_tftp_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i8*, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.Curl_easy* }
%struct.Curl_easy = type { i32 }
%struct.sockaddr = type { i32 }

@STRERROR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Received last DATA packet block %d again.\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Received unexpected DATA packet block %d, expecting block %d\0A\00", align 1
@TFTP_EVENT_ACK = common dso_local global i32 0, align 4
@SEND_4TH_ARG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SOCKERRNO = common dso_local global i32 0, align 4
@CURLE_SEND_ERROR = common dso_local global i32 0, align 4
@TFTP_STATE_FIN = common dso_local global i8* null, align 8
@TFTP_STATE_RX = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"Timeout waiting for block %d ACK.  Retries = %d\0A\00", align 1
@TFTP_ERR_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"tftp_rx: internal error\00", align 1
@CURLE_TFTP_ILLEGAL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @tftp_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tftp_rx(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 13
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  store %struct.Curl_easy* %16, %struct.Curl_easy** %8, align 8
  %17 = load i32, i32* @STRERROR_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %251 [
    i32 131, label %22
    i32 129, label %117
    i32 128, label %165
    i32 130, label %221
  ]

22:                                               ; preds = %2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 12
  %25 = call i32 @getrpacketblock(i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @NEXT_BLOCKNUM(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  br label %54

35:                                               ; preds = %22
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (%struct.Curl_easy*, i8*, i32, ...) @infof(%struct.Curl_easy* %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %53

45:                                               ; preds = %35
  %46 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @NEXT_BLOCKNUM(i32 %50)
  %52 = call i32 (%struct.Curl_easy*, i8*, i32, ...) @infof(%struct.Curl_easy* %46, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %51)
  br label %255

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %32
  %55 = load i32, i32* %7, align 4
  %56 = trunc i32 %55 to i16
  %57 = zext i16 %56 to i32
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 6
  %62 = load i32, i32* @TFTP_EVENT_ACK, align 4
  %63 = call i32 @setpacketevent(%struct.TYPE_8__* %61, i32 %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 6
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = trunc i32 %68 to i16
  %70 = call i32 @setpacketblock(%struct.TYPE_8__* %65, i16 zeroext %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = load i32, i32* @SEND_4TH_ARG, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 5
  %82 = bitcast i32* %81 to %struct.sockaddr*
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @sendto(i32 %73, i8* %78, i32 4, i32 %79, %struct.sockaddr* %82, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %54
  %90 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %91 = load i32, i32* @SOCKERRNO, align 4
  %92 = trunc i64 %18 to i32
  %93 = call i8* @Curl_strerror(i32 %91, i8* %20, i32 %92)
  %94 = call i32 @failf(%struct.Curl_easy* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %93)
  %95 = load i32, i32* @CURLE_SEND_ERROR, align 4
  store i32 %95, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %257

96:                                               ; preds = %54
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 11
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 4
  %104 = icmp slt i32 %99, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i8*, i8** @TFTP_STATE_FIN, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  br label %113

109:                                              ; preds = %96
  %110 = load i8*, i8** @TFTP_STATE_RX, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %109, %105
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 9
  %116 = call i32 @time(i32* %115)
  br label %255

117:                                              ; preds = %2
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  store i32 0, i32* %121, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 6
  %124 = load i32, i32* @TFTP_EVENT_ACK, align 4
  %125 = call i32 @setpacketevent(%struct.TYPE_8__* %123, i32 %124)
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 6
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = trunc i32 %130 to i16
  %132 = call i32 @setpacketblock(%struct.TYPE_8__* %127, i16 zeroext %131)
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 6
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i8*
  %141 = load i32, i32* @SEND_4TH_ARG, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 5
  %144 = bitcast i32* %143 to %struct.sockaddr*
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @sendto(i32 %135, i8* %140, i32 4, i32 %141, %struct.sockaddr* %144, i32 %147)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %117
  %152 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %153 = load i32, i32* @SOCKERRNO, align 4
  %154 = trunc i64 %18 to i32
  %155 = call i8* @Curl_strerror(i32 %153, i8* %20, i32 %154)
  %156 = call i32 @failf(%struct.Curl_easy* %152, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %155)
  %157 = load i32, i32* @CURLE_SEND_ERROR, align 4
  store i32 %157, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %257

158:                                              ; preds = %117
  %159 = load i8*, i8** @TFTP_STATE_RX, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 3
  store i8* %159, i8** %161, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 9
  %164 = call i32 @time(i32* %163)
  br label %255

165:                                              ; preds = %2
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  %170 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @NEXT_BLOCKNUM(i32 %173)
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (%struct.Curl_easy*, i8*, i32, ...) @infof(%struct.Curl_easy* %170, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %174, i32 %177)
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = icmp sgt i32 %181, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %165
  %187 = load i32, i32* @TFTP_ERR_TIMEOUT, align 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 8
  store i32 %187, i32* %189, align 4
  %190 = load i8*, i8** @TFTP_STATE_FIN, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 3
  store i8* %190, i8** %192, align 8
  br label %220

193:                                              ; preds = %165
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 6
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = inttoptr i64 %200 to i8*
  %202 = load i32, i32* @SEND_4TH_ARG, align 4
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 5
  %205 = bitcast i32* %204 to %struct.sockaddr*
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @sendto(i32 %196, i8* %201, i32 4, i32 %202, %struct.sockaddr* %205, i32 %208)
  store i32 %209, i32* %6, align 4
  %210 = load i32, i32* %6, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %193
  %213 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %214 = load i32, i32* @SOCKERRNO, align 4
  %215 = trunc i64 %18 to i32
  %216 = call i8* @Curl_strerror(i32 %214, i8* %20, i32 %215)
  %217 = call i32 @failf(%struct.Curl_easy* %213, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %216)
  %218 = load i32, i32* @CURLE_SEND_ERROR, align 4
  store i32 %218, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %257

219:                                              ; preds = %193
  br label %220

220:                                              ; preds = %219, %186
  br label %255

221:                                              ; preds = %2
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 6
  %224 = call i32 @setpacketevent(%struct.TYPE_8__* %223, i32 130)
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 6
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = trunc i32 %229 to i16
  %231 = call i32 @setpacketblock(%struct.TYPE_8__* %226, i16 zeroext %230)
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 7
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 6
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = inttoptr i64 %238 to i8*
  %240 = load i32, i32* @SEND_4TH_ARG, align 4
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 5
  %243 = bitcast i32* %242 to %struct.sockaddr*
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @sendto(i32 %234, i8* %239, i32 4, i32 %240, %struct.sockaddr* %243, i32 %246)
  %248 = load i8*, i8** @TFTP_STATE_FIN, align 8
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 3
  store i8* %248, i8** %250, align 8
  br label %255

251:                                              ; preds = %2
  %252 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %253 = call i32 @failf(%struct.Curl_easy* %252, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %254 = load i32, i32* @CURLE_TFTP_ILLEGAL, align 4
  store i32 %254, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %257

255:                                              ; preds = %221, %220, %158, %113, %45
  %256 = load i32, i32* @CURLE_OK, align 4
  store i32 %256, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %257

257:                                              ; preds = %255, %251, %212, %151, %89
  %258 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %258)
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getrpacketblock(i32*) #2

declare dso_local i32 @NEXT_BLOCKNUM(i32) #2

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i32, ...) #2

declare dso_local i32 @setpacketevent(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @setpacketblock(%struct.TYPE_8__*, i16 zeroext) #2

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i8*) #2

declare dso_local i8* @Curl_strerror(i32, i8*, i32) #2

declare dso_local i32 @time(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
