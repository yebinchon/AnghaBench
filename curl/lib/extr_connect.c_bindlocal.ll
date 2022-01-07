; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_connect.c_bindlocal.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_connect.c_bindlocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i64, %struct.TYPE_7__, i32, %struct.Curl_easy* }
%struct.TYPE_7__ = type { i8* }
%struct.Curl_easy = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i16, i32, i8** }
%struct.Curl_sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, i8*, i32 }
%struct.Curl_dns_entry = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@STRING_DEVICE = common dso_local global i64 0, align 8
@CURLE_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@bindlocal.if_prefix = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [4 x i8] c"if!\00", align 1
@bindlocal.host_prefix = internal global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"host!\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Couldn't bind to interface '%s'\00", align 1
@CURLE_INTERFACE_FAILED = common dso_local global i32 0, align 4
@CURLE_UNSUPPORTED_PROTOCOL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Local Interface %s is ip %s using address family %i\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@CURL_IPRESOLVE_V4 = common dso_local global i64 0, align 8
@CURLRESOLV_PENDING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Name '%s' family %i resolved to '%s' family %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Couldn't bind to '%s'\00", align 1
@STRERROR_LEN = common dso_local global i32 0, align 4
@SOCKERRNO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"getsockname() failed with errno %d: %s\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Local port: %hu\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Bind to local port %hu failed, trying next\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"bind failed with errno %d: %s\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@CURL_IPRESOLVE_V6 = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_BINDTODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32, i32)* @bindlocal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bindlocal(%struct.connectdata* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connectdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.Curl_easy*, align 8
  %11 = alloca %struct.Curl_sockaddr_storage, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_in*, align 8
  %15 = alloca %struct.Curl_dns_entry*, align 8
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [256 x i8], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.Curl_sockaddr_storage, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %32 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %33 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %32, i32 0, i32 3
  %34 = load %struct.Curl_easy*, %struct.Curl_easy** %33, align 8
  store %struct.Curl_easy* %34, %struct.Curl_easy** %10, align 8
  %35 = bitcast %struct.Curl_sockaddr_storage* %11 to %struct.sockaddr*
  store %struct.sockaddr* %35, %struct.sockaddr** %12, align 8
  store i32 0, i32* %13, align 4
  %36 = bitcast %struct.Curl_sockaddr_storage* %11 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %36, %struct.sockaddr_in** %14, align 8
  store %struct.Curl_dns_entry* null, %struct.Curl_dns_entry** %15, align 8
  %37 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %38 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i16, i16* %39, align 8
  store i16 %40, i16* %16, align 2
  %41 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %42 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %17, align 4
  %45 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %46 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = load i64, i64* @STRING_DEVICE, align 8
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %18, align 8
  %52 = load i8*, i8** %18, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %4
  %55 = load i16, i16* %16, align 2
  %56 = icmp ne i16 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @CURLE_OK, align 4
  store i32 %58, i32* %5, align 4
  br label %327

59:                                               ; preds = %54, %4
  %60 = call i32 @memset(%struct.Curl_sockaddr_storage* %11, i32 0, i32 4)
  %61 = load i8*, i8** %18, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %233

63:                                               ; preds = %59
  %64 = load i8*, i8** %18, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = icmp slt i32 %65, 255
  br i1 %66, label %67, label %233

67:                                               ; preds = %63
  %68 = bitcast [256 x i8]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %68, i8 0, i64 256, i1 false)
  store i32 0, i32* %21, align 4
  %69 = load i8*, i8** @FALSE, align 8
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %22, align 4
  %71 = load i8*, i8** @FALSE, align 8
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %23, align 4
  %73 = load i8*, i8** @bindlocal.if_prefix, align 8
  %74 = load i8*, i8** %18, align 8
  %75 = load i8*, i8** @bindlocal.if_prefix, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = call i64 @strncmp(i8* %73, i8* %74, i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %67
  %80 = load i8*, i8** @bindlocal.if_prefix, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = load i8*, i8** %18, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %18, align 8
  %85 = load i8*, i8** @TRUE, align 8
  %86 = ptrtoint i8* %85 to i32
  store i32 %86, i32* %22, align 4
  br label %103

87:                                               ; preds = %67
  %88 = load i8*, i8** @bindlocal.host_prefix, align 8
  %89 = load i8*, i8** %18, align 8
  %90 = load i8*, i8** @bindlocal.host_prefix, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = call i64 @strncmp(i8* %88, i8* %89, i32 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load i8*, i8** @bindlocal.host_prefix, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = load i8*, i8** %18, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %18, align 8
  %100 = load i8*, i8** @TRUE, align 8
  %101 = ptrtoint i8* %100 to i32
  store i32 %101, i32* %23, align 4
  br label %102

102:                                              ; preds = %94, %87
  br label %103

103:                                              ; preds = %102, %79
  %104 = load i32, i32* %23, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %135, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %110 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i8*, i8** %18, align 8
  %113 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %114 = call i32 @Curl_if2ip(i32 %107, i32 %108, i32 %111, i8* %112, i8* %113, i32 256)
  switch i32 %114, label %134 [
    i32 128, label %115
    i32 130, label %124
    i32 129, label %126
  ]

115:                                              ; preds = %106
  %116 = load i32, i32* %22, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %120 = load i8*, i8** %18, align 8
  %121 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %119, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %120)
  %122 = load i32, i32* @CURLE_INTERFACE_FAILED, align 4
  store i32 %122, i32* %5, align 4
  br label %327

123:                                              ; preds = %115
  br label %134

124:                                              ; preds = %106
  %125 = load i32, i32* @CURLE_UNSUPPORTED_PROTOCOL, align 4
  store i32 %125, i32* %5, align 4
  br label %327

126:                                              ; preds = %106
  %127 = load i8*, i8** @TRUE, align 8
  %128 = ptrtoint i8* %127 to i32
  store i32 %128, i32* %22, align 4
  %129 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %130 = load i8*, i8** %18, align 8
  %131 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %132 = load i32, i32* %8, align 4
  %133 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %129, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %130, i8* %131, i32 %132)
  store i32 1, i32* %21, align 4
  br label %134

134:                                              ; preds = %106, %126, %123
  br label %135

135:                                              ; preds = %134, %103
  %136 = load i32, i32* %22, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %197, label %138

138:                                              ; preds = %135
  %139 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %140 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %24, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @AF_INET, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load i64, i64* @CURL_IPRESOLVE_V4, align 8
  %147 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %148 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %145, %138
  %150 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %151 = load i8*, i8** %18, align 8
  %152 = load i8*, i8** @FALSE, align 8
  %153 = call i32 @Curl_resolv(%struct.connectdata* %150, i8* %151, i32 0, i8* %152, %struct.Curl_dns_entry** %15)
  store i32 %153, i32* %25, align 4
  %154 = load i32, i32* %25, align 4
  %155 = load i32, i32* @CURLRESOLV_PENDING, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %149
  %158 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %159 = call i32 @Curl_resolver_wait_resolv(%struct.connectdata* %158, %struct.Curl_dns_entry** %15)
  br label %160

160:                                              ; preds = %157, %149
  %161 = load i64, i64* %24, align 8
  %162 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %163 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %15, align 8
  %165 = icmp ne %struct.Curl_dns_entry* %164, null
  br i1 %165, label %166, label %195

166:                                              ; preds = %160
  %167 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %15, align 8
  %168 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %167, i32 0, i32 0
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %171 = call i32 @Curl_printable_address(%struct.TYPE_8__* %169, i8* %170, i32 256)
  %172 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %173 = load i8*, i8** %18, align 8
  %174 = load i32, i32* %8, align 4
  %175 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %176 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %15, align 8
  %177 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %176, i32 0, i32 0
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %172, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %173, i32 %174, i8* %175, i32 %180)
  %182 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %183 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %15, align 8
  %184 = call i32 @Curl_resolv_unlock(%struct.Curl_easy* %182, %struct.Curl_dns_entry* %183)
  %185 = load i32, i32* %8, align 4
  %186 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %15, align 8
  %187 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %186, i32 0, i32 0
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %185, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %166
  %193 = load i32, i32* @CURLE_UNSUPPORTED_PROTOCOL, align 4
  store i32 %193, i32* %5, align 4
  br label %327

194:                                              ; preds = %166
  store i32 1, i32* %21, align 4
  br label %196

195:                                              ; preds = %160
  store i32 -1, i32* %21, align 4
  br label %196

196:                                              ; preds = %195, %194
  br label %197

197:                                              ; preds = %196, %135
  %198 = load i32, i32* %21, align 4
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %220

200:                                              ; preds = %197
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* @AF_INET, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %219

204:                                              ; preds = %200
  %205 = load i32, i32* @AF_INET, align 4
  %206 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %207 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %208 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %207, i32 0, i32 2
  %209 = call i64 @Curl_inet_pton(i32 %205, i8* %206, i32* %208)
  %210 = icmp sgt i64 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %204
  %212 = load i32, i32* @AF_INET, align 4
  %213 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %214 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = load i16, i16* %16, align 2
  %216 = call i8* @htons(i16 zeroext %215)
  %217 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %218 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %217, i32 0, i32 1
  store i8* %216, i8** %218, align 8
  store i32 24, i32* %13, align 4
  br label %219

219:                                              ; preds = %211, %204, %200
  br label %220

220:                                              ; preds = %219, %197
  %221 = load i32, i32* %21, align 4
  %222 = icmp slt i32 %221, 1
  br i1 %222, label %223, label %232

223:                                              ; preds = %220
  %224 = load i8*, i8** @FALSE, align 8
  %225 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %226 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  store i8* %224, i8** %227, align 8
  %228 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %229 = load i8*, i8** %18, align 8
  %230 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %228, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %229)
  %231 = load i32, i32* @CURLE_INTERFACE_FAILED, align 4
  store i32 %231, i32* %5, align 4
  br label %327

232:                                              ; preds = %220
  br label %246

233:                                              ; preds = %63, %59
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* @AF_INET, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %245

237:                                              ; preds = %233
  %238 = load i32, i32* @AF_INET, align 4
  %239 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %240 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 8
  %241 = load i16, i16* %16, align 2
  %242 = call i8* @htons(i16 zeroext %241)
  %243 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %244 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %243, i32 0, i32 1
  store i8* %242, i8** %244, align 8
  store i32 24, i32* %13, align 4
  br label %245

245:                                              ; preds = %237, %233
  br label %246

246:                                              ; preds = %245, %232
  br label %247

247:                                              ; preds = %309, %246
  %248 = load i32, i32* %7, align 4
  %249 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %250 = load i32, i32* %13, align 4
  %251 = call i64 @bind(i32 %248, %struct.sockaddr* %249, i32 %250)
  %252 = icmp sge i64 %251, 0
  br i1 %252, label %253, label %286

253:                                              ; preds = %247
  store i32 4, i32* %27, align 4
  %254 = call i32 @memset(%struct.Curl_sockaddr_storage* %26, i32 0, i32 4)
  %255 = load i32, i32* %7, align 4
  %256 = bitcast %struct.Curl_sockaddr_storage* %26 to %struct.sockaddr*
  %257 = call i64 @getsockname(i32 %255, %struct.sockaddr* %256, i32* %27)
  %258 = icmp slt i64 %257, 0
  br i1 %258, label %259, label %276

259:                                              ; preds = %253
  %260 = load i32, i32* @STRERROR_LEN, align 4
  %261 = zext i32 %260 to i64
  %262 = call i8* @llvm.stacksave()
  store i8* %262, i8** %28, align 8
  %263 = alloca i8, i64 %261, align 16
  store i64 %261, i64* %29, align 8
  %264 = load i32, i32* @SOCKERRNO, align 4
  store i32 %264, i32* %19, align 4
  %265 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %266 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 0
  store i32 %264, i32* %267, align 8
  %268 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %269 = load i32, i32* %19, align 4
  %270 = load i32, i32* %19, align 4
  %271 = trunc i64 %261 to i32
  %272 = call i32 @Curl_strerror(i32 %270, i8* %263, i32 %271)
  %273 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %268, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %269, i32 %272)
  %274 = load i32, i32* @CURLE_INTERFACE_FAILED, align 4
  store i32 %274, i32* %5, align 4
  %275 = load i8*, i8** %28, align 8
  call void @llvm.stackrestore(i8* %275)
  br label %327

276:                                              ; preds = %253
  %277 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %278 = load i16, i16* %16, align 2
  %279 = zext i16 %278 to i32
  %280 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %277, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %279)
  %281 = load i8*, i8** @TRUE, align 8
  %282 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %283 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 0
  store i8* %281, i8** %284, align 8
  %285 = load i32, i32* @CURLE_OK, align 4
  store i32 %285, i32* %5, align 4
  br label %327

286:                                              ; preds = %247
  %287 = load i32, i32* %17, align 4
  %288 = add nsw i32 %287, -1
  store i32 %288, i32* %17, align 4
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %308

290:                                              ; preds = %286
  %291 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %292 = load i16, i16* %16, align 2
  %293 = zext i16 %292 to i32
  %294 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %291, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %293)
  %295 = load i16, i16* %16, align 2
  %296 = add i16 %295, 1
  store i16 %296, i16* %16, align 2
  %297 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %298 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @AF_INET, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %307

302:                                              ; preds = %290
  %303 = load i16, i16* %16, align 2
  %304 = call i8* @ntohs(i16 zeroext %303)
  %305 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %306 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %305, i32 0, i32 1
  store i8* %304, i8** %306, align 8
  br label %307

307:                                              ; preds = %302, %290
  br label %309

308:                                              ; preds = %286
  br label %310

309:                                              ; preds = %307
  br label %247

310:                                              ; preds = %308
  %311 = load i32, i32* @STRERROR_LEN, align 4
  %312 = zext i32 %311 to i64
  %313 = call i8* @llvm.stacksave()
  store i8* %313, i8** %30, align 8
  %314 = alloca i8, i64 %312, align 16
  store i64 %312, i64* %31, align 8
  %315 = load i32, i32* @SOCKERRNO, align 4
  store i32 %315, i32* %19, align 4
  %316 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %317 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 0
  store i32 %315, i32* %318, align 8
  %319 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %320 = load i32, i32* %19, align 4
  %321 = load i32, i32* %19, align 4
  %322 = trunc i64 %312 to i32
  %323 = call i32 @Curl_strerror(i32 %321, i8* %314, i32 %322)
  %324 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %319, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %320, i32 %323)
  %325 = load i8*, i8** %30, align 8
  call void @llvm.stackrestore(i8* %325)
  %326 = load i32, i32* @CURLE_INTERFACE_FAILED, align 4
  store i32 %326, i32* %5, align 4
  br label %327

327:                                              ; preds = %310, %276, %259, %223, %192, %124, %118, %57
  %328 = load i32, i32* %5, align 4
  ret i32 %328
}

declare dso_local i32 @memset(%struct.Curl_sockaddr_storage*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @Curl_if2ip(i32, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, ...) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, ...) #1

declare dso_local i32 @Curl_resolv(%struct.connectdata*, i8*, i32, i8*, %struct.Curl_dns_entry**) #1

declare dso_local i32 @Curl_resolver_wait_resolv(%struct.connectdata*, %struct.Curl_dns_entry**) #1

declare dso_local i32 @Curl_printable_address(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @Curl_resolv_unlock(%struct.Curl_easy*, %struct.Curl_dns_entry*) #1

declare dso_local i64 @Curl_inet_pton(i32, i8*, i32*) #1

declare dso_local i8* @htons(i16 zeroext) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @Curl_strerror(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i8* @ntohs(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
