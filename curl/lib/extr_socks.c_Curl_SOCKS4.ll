; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_socks.c_Curl_SOCKS4.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_socks.c_Curl_SOCKS4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy*, %struct.TYPE_7__, i32*, %struct.TYPE_6__ }
%struct.Curl_easy = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.Curl_dns_entry = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.sockaddr_in = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@CURLPROXY_SOCKS4A = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Connection time-out\00", align 1
@CURLE_OPERATION_TIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"SOCKS4%s: connecting to HTTP proxy %s port %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"SOCKS4 communication to %s:%d\0A\00", align 1
@CURLRESOLV_ERROR = common dso_local global i32 0, align 4
@CURLE_COULDNT_RESOLVE_PROXY = common dso_local global i32 0, align 4
@CURLRESOLV_PENDING = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"SOCKS4 connect to IPv4 %s (locally resolved)\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"SOCKS4 connection to %s not supported\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Failed to resolve \22%s\22 for SOCKS4 connect.\00", align 1
@CURLE_COULDNT_RESOLVE_HOST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"Too long SOCKS proxy name, can't use!\0A\00", align 1
@CURLE_COULDNT_CONNECT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"Failed to send SOCKS4 connect request.\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Failed to receive SOCKS4 connect request ack.\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"SOCKS4 reply has wrong version, version should be 0.\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"SOCKS4%s request granted.\0A\00", align 1
@.str.13 = private unnamed_addr constant [86 x i8] c"Can't complete SOCKS4 connection to %d.%d.%d.%d:%d. (%d), request rejected or failed.\00", align 1
@.str.14 = private unnamed_addr constant [136 x i8] c"Can't complete SOCKS4 connection to %d.%d.%d.%d:%d. (%d), request rejected because SOCKS server cannot connect to identd on the client.\00", align 1
@.str.15 = private unnamed_addr constant [140 x i8] c"Can't complete SOCKS4 connection to %d.%d.%d.%d:%d. (%d), request rejected because the client program and identd report different user-ids.\00", align 1
@.str.16 = private unnamed_addr constant [67 x i8] c"Can't complete SOCKS4 connection to %d.%d.%d.%d:%d. (%d), Unknown.\00", align 1
@CURLE_OK = common dso_local global i32 0, align 4
@SOCKS4REQLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_SOCKS4(i8* %0, i8* %1, i32 %2, i32 %3, %struct.connectdata* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.connectdata*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [262 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.Curl_easy*, align 8
  %17 = alloca %struct.Curl_dns_entry*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [64 x i8], align 16
  %21 = alloca %struct.sockaddr_in*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.connectdata* %4, %struct.connectdata** %11, align 8
  %28 = load %struct.connectdata*, %struct.connectdata** %11, align 8
  %29 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CURLPROXY_SOCKS4A, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* @TRUE, align 4
  br label %38

36:                                               ; preds = %5
  %37 = load i32, i32* @FALSE, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %12, align 4
  %40 = load %struct.connectdata*, %struct.connectdata** %11, align 8
  %41 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %15, align 4
  %47 = load %struct.connectdata*, %struct.connectdata** %11, align 8
  %48 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %47, i32 0, i32 0
  %49 = load %struct.Curl_easy*, %struct.Curl_easy** %48, align 8
  store %struct.Curl_easy* %49, %struct.Curl_easy** %16, align 8
  %50 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %51 = load i32, i32* @TRUE, align 4
  %52 = call i64 @Curl_timeleft(%struct.Curl_easy* %50, i32* null, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %38
  %55 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %56 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @CURLE_OPERATION_TIMEDOUT, align 4
  store i32 %57, i32* %6, align 4
  br label %434

58:                                               ; preds = %38
  %59 = load %struct.connectdata*, %struct.connectdata** %11, align 8
  %60 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load %struct.connectdata*, %struct.connectdata** %11, align 8
  %66 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %65, i32 0, i32 0
  %67 = load %struct.Curl_easy*, %struct.Curl_easy** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %67, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %71, i8* %72, i32 %73)
  br label %75

75:                                               ; preds = %64, %58
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* @FALSE, align 4
  %78 = call i32 @curlx_nonblock(i32 %76, i32 %77)
  %79 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %80, i32 %81)
  %83 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 0
  store i8 4, i8* %83, align 16
  %84 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 1
  store i8 1, i8* %84, align 1
  %85 = load i32, i32* %9, align 4
  %86 = ashr i32 %85, 8
  %87 = and i32 %86, 255
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 2
  store i8 %88, i8* %89, align 2
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, 255
  %92 = trunc i32 %91 to i8
  %93 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 3
  store i8 %92, i8* %93, align 1
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %187, label %96

96:                                               ; preds = %75
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %18, align 8
  %97 = load %struct.connectdata*, %struct.connectdata** %11, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @FALSE, align 4
  %101 = call i32 @Curl_resolv(%struct.connectdata* %97, i8* %98, i32 %99, i32 %100, %struct.Curl_dns_entry** %17)
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* @CURLRESOLV_ERROR, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @CURLE_COULDNT_RESOLVE_PROXY, align 4
  store i32 %106, i32* %6, align 4
  br label %434

107:                                              ; preds = %96
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* @CURLRESOLV_PENDING, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load %struct.connectdata*, %struct.connectdata** %11, align 8
  %113 = call i32 @Curl_resolver_wait_resolv(%struct.connectdata* %112, %struct.Curl_dns_entry** %17)
  br label %114

114:                                              ; preds = %111, %107
  %115 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %17, align 8
  %116 = icmp ne %struct.Curl_dns_entry* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %17, align 8
  %119 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  store %struct.TYPE_9__* %120, %struct.TYPE_9__** %18, align 8
  br label %121

121:                                              ; preds = %117, %114
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %123 = icmp ne %struct.TYPE_9__* %122, null
  br i1 %123, label %124, label %178

124:                                              ; preds = %121
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %126 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %127 = call i32 @Curl_printable_address(%struct.TYPE_9__* %125, i8* %126, i32 64)
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @AF_INET, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %170

133:                                              ; preds = %124
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i8*
  %138 = bitcast i8* %137 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %138, %struct.sockaddr_in** %21, align 8
  %139 = load %struct.sockaddr_in*, %struct.sockaddr_in** %21, align 8
  %140 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = bitcast i32* %141 to i8*
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  %144 = load i8, i8* %143, align 4
  %145 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 4
  store i8 %144, i8* %145, align 4
  %146 = load %struct.sockaddr_in*, %struct.sockaddr_in** %21, align 8
  %147 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = bitcast i32* %148 to i8*
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = load i8, i8* %150, align 1
  %152 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 5
  store i8 %151, i8* %152, align 1
  %153 = load %struct.sockaddr_in*, %struct.sockaddr_in** %21, align 8
  %154 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = bitcast i32* %155 to i8*
  %157 = getelementptr inbounds i8, i8* %156, i64 2
  %158 = load i8, i8* %157, align 2
  %159 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 6
  store i8 %158, i8* %159, align 2
  %160 = load %struct.sockaddr_in*, %struct.sockaddr_in** %21, align 8
  %161 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = bitcast i32* %162 to i8*
  %164 = getelementptr inbounds i8, i8* %163, i64 3
  %165 = load i8, i8* %164, align 1
  %166 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 7
  store i8 %165, i8* %166, align 1
  %167 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %168 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %169 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %167, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %168)
  br label %174

170:                                              ; preds = %124
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %18, align 8
  %171 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %172 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %173 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %171, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %172)
  br label %174

174:                                              ; preds = %170, %133
  %175 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %176 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %17, align 8
  %177 = call i32 @Curl_resolv_unlock(%struct.Curl_easy* %175, %struct.Curl_dns_entry* %176)
  br label %178

178:                                              ; preds = %174, %121
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %180 = icmp ne %struct.TYPE_9__* %179, null
  br i1 %180, label %186, label %181

181:                                              ; preds = %178
  %182 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %183 = load i8*, i8** %8, align 8
  %184 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %182, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i8* %183)
  %185 = load i32, i32* @CURLE_COULDNT_RESOLVE_HOST, align 4
  store i32 %185, i32* %6, align 4
  br label %434

186:                                              ; preds = %178
  br label %187

187:                                              ; preds = %186, %75
  %188 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 8
  store i8 0, i8* %188, align 8
  %189 = load i8*, i8** %7, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %208

191:                                              ; preds = %187
  %192 = load i8*, i8** %7, align 8
  %193 = call i8* @strlen(i8* %192)
  %194 = ptrtoint i8* %193 to i64
  store i64 %194, i64* %22, align 8
  %195 = load i64, i64* %22, align 8
  %196 = icmp uge i64 %195, 254
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %199 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %198, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %200 = load i32, i32* @CURLE_COULDNT_CONNECT, align 4
  store i32 %200, i32* %6, align 4
  br label %434

201:                                              ; preds = %191
  %202 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 0
  %203 = getelementptr inbounds i8, i8* %202, i64 8
  %204 = load i8*, i8** %7, align 8
  %205 = load i64, i64* %22, align 8
  %206 = add i64 %205, 1
  %207 = call i32 @memcpy(i8* %203, i8* %204, i64 %206)
  br label %208

208:                                              ; preds = %201, %187
  store i32 0, i32* %26, align 4
  %209 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 0
  %210 = getelementptr inbounds i8, i8* %209, i64 8
  %211 = call i8* @strlen(i8* %210)
  %212 = getelementptr i8, i8* %211, i64 9
  %213 = ptrtoint i8* %212 to i32
  store i32 %213, i32* %27, align 4
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %238

216:                                              ; preds = %208
  %217 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 4
  store i8 0, i8* %217, align 4
  %218 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 5
  store i8 0, i8* %218, align 1
  %219 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 6
  store i8 0, i8* %219, align 2
  %220 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 7
  store i8 1, i8* %220, align 1
  %221 = load i8*, i8** %8, align 8
  %222 = call i8* @strlen(i8* %221)
  %223 = ptrtoint i8* %222 to i32
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %26, align 4
  %225 = load i32, i32* %27, align 4
  %226 = load i32, i32* %26, align 4
  %227 = add nsw i32 %225, %226
  %228 = icmp sle i32 %227, 262
  br i1 %228, label %229, label %236

229:                                              ; preds = %216
  %230 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 0
  %231 = load i32, i32* %27, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = load i8*, i8** %8, align 8
  %235 = call i32 @strcpy(i8* %233, i8* %234)
  br label %237

236:                                              ; preds = %216
  store i32 0, i32* %26, align 4
  br label %237

237:                                              ; preds = %236, %229
  br label %238

238:                                              ; preds = %237, %208
  %239 = load %struct.connectdata*, %struct.connectdata** %11, align 8
  %240 = load i32, i32* %15, align 4
  %241 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 0
  %242 = load i32, i32* %27, align 4
  %243 = load i32, i32* %26, align 4
  %244 = add nsw i32 %242, %243
  %245 = call i32 @Curl_write_plain(%struct.connectdata* %239, i32 %240, i8* %241, i32 %244, i32* %25)
  store i32 %245, i32* %14, align 4
  %246 = load i32, i32* %14, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %254, label %248

248:                                              ; preds = %238
  %249 = load i32, i32* %25, align 4
  %250 = load i32, i32* %27, align 4
  %251 = load i32, i32* %26, align 4
  %252 = add nsw i32 %250, %251
  %253 = icmp ne i32 %249, %252
  br i1 %253, label %254, label %258

254:                                              ; preds = %248, %238
  %255 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %256 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %255, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %257 = load i32, i32* @CURLE_COULDNT_CONNECT, align 4
  store i32 %257, i32* %6, align 4
  br label %434

258:                                              ; preds = %248
  %259 = load i32, i32* %12, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %285

261:                                              ; preds = %258
  %262 = load i32, i32* %26, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %285

264:                                              ; preds = %261
  %265 = load i8*, i8** %8, align 8
  %266 = call i8* @strlen(i8* %265)
  %267 = ptrtoint i8* %266 to i32
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %26, align 4
  %269 = load %struct.connectdata*, %struct.connectdata** %11, align 8
  %270 = load i32, i32* %15, align 4
  %271 = load i8*, i8** %8, align 8
  %272 = load i32, i32* %26, align 4
  %273 = call i32 @Curl_write_plain(%struct.connectdata* %269, i32 %270, i8* %271, i32 %272, i32* %25)
  store i32 %273, i32* %14, align 4
  %274 = load i32, i32* %14, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %280, label %276

276:                                              ; preds = %264
  %277 = load i32, i32* %25, align 4
  %278 = load i32, i32* %26, align 4
  %279 = icmp ne i32 %277, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %276, %264
  %281 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %282 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %281, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %283 = load i32, i32* @CURLE_COULDNT_CONNECT, align 4
  store i32 %283, i32* %6, align 4
  br label %434

284:                                              ; preds = %276
  br label %285

285:                                              ; preds = %284, %261, %258
  store i32 8, i32* %27, align 4
  %286 = load %struct.connectdata*, %struct.connectdata** %11, align 8
  %287 = load i32, i32* %15, align 4
  %288 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 0
  %289 = load i32, i32* %27, align 4
  %290 = call i32 @Curl_blockread_all(%struct.connectdata* %286, i32 %287, i8* %288, i32 %289, i32* %24)
  store i32 %290, i32* %23, align 4
  %291 = load i32, i32* %23, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %297, label %293

293:                                              ; preds = %285
  %294 = load i32, i32* %24, align 4
  %295 = load i32, i32* %27, align 4
  %296 = icmp ne i32 %294, %295
  br i1 %296, label %297, label %301

297:                                              ; preds = %293, %285
  %298 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %299 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %298, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  %300 = load i32, i32* @CURLE_COULDNT_CONNECT, align 4
  store i32 %300, i32* %6, align 4
  br label %434

301:                                              ; preds = %293
  %302 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 0
  %303 = load i8, i8* %302, align 16
  %304 = zext i8 %303 to i32
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %301
  %307 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %308 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %307, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0))
  %309 = load i32, i32* @CURLE_COULDNT_CONNECT, align 4
  store i32 %309, i32* %6, align 4
  br label %434

310:                                              ; preds = %301
  %311 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 1
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  switch i32 %313, label %402 [
    i32 90, label %314
    i32 91, label %321
    i32 92, label %348
    i32 93, label %375
  ]

314:                                              ; preds = %310
  %315 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %316 = load i32, i32* %12, align 4
  %317 = icmp ne i32 %316, 0
  %318 = zext i1 %317 to i64
  %319 = select i1 %317, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %320 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %315, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %319)
  br label %429

321:                                              ; preds = %310
  %322 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %323 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 4
  %324 = load i8, i8* %323, align 4
  %325 = zext i8 %324 to i32
  %326 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 5
  %327 = load i8, i8* %326, align 1
  %328 = zext i8 %327 to i32
  %329 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 6
  %330 = load i8, i8* %329, align 2
  %331 = zext i8 %330 to i32
  %332 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 7
  %333 = load i8, i8* %332, align 1
  %334 = zext i8 %333 to i32
  %335 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 2
  %336 = load i8, i8* %335, align 2
  %337 = zext i8 %336 to i32
  %338 = shl i32 %337, 8
  %339 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 3
  %340 = load i8, i8* %339, align 1
  %341 = zext i8 %340 to i32
  %342 = or i32 %338, %341
  %343 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 1
  %344 = load i8, i8* %343, align 1
  %345 = zext i8 %344 to i32
  %346 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %322, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.13, i64 0, i64 0), i32 %325, i32 %328, i32 %331, i32 %334, i32 %342, i32 %345)
  %347 = load i32, i32* @CURLE_COULDNT_CONNECT, align 4
  store i32 %347, i32* %6, align 4
  br label %434

348:                                              ; preds = %310
  %349 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %350 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 4
  %351 = load i8, i8* %350, align 4
  %352 = zext i8 %351 to i32
  %353 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 5
  %354 = load i8, i8* %353, align 1
  %355 = zext i8 %354 to i32
  %356 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 6
  %357 = load i8, i8* %356, align 2
  %358 = zext i8 %357 to i32
  %359 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 7
  %360 = load i8, i8* %359, align 1
  %361 = zext i8 %360 to i32
  %362 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 2
  %363 = load i8, i8* %362, align 2
  %364 = zext i8 %363 to i32
  %365 = shl i32 %364, 8
  %366 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 3
  %367 = load i8, i8* %366, align 1
  %368 = zext i8 %367 to i32
  %369 = or i32 %365, %368
  %370 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 1
  %371 = load i8, i8* %370, align 1
  %372 = zext i8 %371 to i32
  %373 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %349, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.14, i64 0, i64 0), i32 %352, i32 %355, i32 %358, i32 %361, i32 %369, i32 %372)
  %374 = load i32, i32* @CURLE_COULDNT_CONNECT, align 4
  store i32 %374, i32* %6, align 4
  br label %434

375:                                              ; preds = %310
  %376 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %377 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 4
  %378 = load i8, i8* %377, align 4
  %379 = zext i8 %378 to i32
  %380 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 5
  %381 = load i8, i8* %380, align 1
  %382 = zext i8 %381 to i32
  %383 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 6
  %384 = load i8, i8* %383, align 2
  %385 = zext i8 %384 to i32
  %386 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 7
  %387 = load i8, i8* %386, align 1
  %388 = zext i8 %387 to i32
  %389 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 2
  %390 = load i8, i8* %389, align 2
  %391 = zext i8 %390 to i32
  %392 = shl i32 %391, 8
  %393 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 3
  %394 = load i8, i8* %393, align 1
  %395 = zext i8 %394 to i32
  %396 = or i32 %392, %395
  %397 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 1
  %398 = load i8, i8* %397, align 1
  %399 = zext i8 %398 to i32
  %400 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %376, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.15, i64 0, i64 0), i32 %379, i32 %382, i32 %385, i32 %388, i32 %396, i32 %399)
  %401 = load i32, i32* @CURLE_COULDNT_CONNECT, align 4
  store i32 %401, i32* %6, align 4
  br label %434

402:                                              ; preds = %310
  %403 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %404 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 4
  %405 = load i8, i8* %404, align 4
  %406 = zext i8 %405 to i32
  %407 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 5
  %408 = load i8, i8* %407, align 1
  %409 = zext i8 %408 to i32
  %410 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 6
  %411 = load i8, i8* %410, align 2
  %412 = zext i8 %411 to i32
  %413 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 7
  %414 = load i8, i8* %413, align 1
  %415 = zext i8 %414 to i32
  %416 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 2
  %417 = load i8, i8* %416, align 2
  %418 = zext i8 %417 to i32
  %419 = shl i32 %418, 8
  %420 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 3
  %421 = load i8, i8* %420, align 1
  %422 = zext i8 %421 to i32
  %423 = or i32 %419, %422
  %424 = getelementptr inbounds [262 x i8], [262 x i8]* %13, i64 0, i64 1
  %425 = load i8, i8* %424, align 1
  %426 = zext i8 %425 to i32
  %427 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %403, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.16, i64 0, i64 0), i32 %406, i32 %409, i32 %412, i32 %415, i32 %423, i32 %426)
  %428 = load i32, i32* @CURLE_COULDNT_CONNECT, align 4
  store i32 %428, i32* %6, align 4
  br label %434

429:                                              ; preds = %314
  %430 = load i32, i32* %15, align 4
  %431 = load i32, i32* @TRUE, align 4
  %432 = call i32 @curlx_nonblock(i32 %430, i32 %431)
  %433 = load i32, i32* @CURLE_OK, align 4
  store i32 %433, i32* %6, align 4
  br label %434

434:                                              ; preds = %429, %402, %375, %348, %321, %306, %297, %280, %254, %197, %181, %105, %54
  %435 = load i32, i32* %6, align 4
  ret i32 %435
}

declare dso_local i64 @Curl_timeleft(%struct.Curl_easy*, i32*, i32) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, ...) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i8*, ...) #1

declare dso_local i32 @curlx_nonblock(i32, i32) #1

declare dso_local i32 @Curl_resolv(%struct.connectdata*, i8*, i32, i32, %struct.Curl_dns_entry**) #1

declare dso_local i32 @Curl_resolver_wait_resolv(%struct.connectdata*, %struct.Curl_dns_entry**) #1

declare dso_local i32 @Curl_printable_address(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @Curl_resolv_unlock(%struct.Curl_easy*, %struct.Curl_dns_entry*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @Curl_write_plain(%struct.connectdata*, i32, i8*, i32, i32*) #1

declare dso_local i32 @Curl_blockread_all(%struct.connectdata*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
