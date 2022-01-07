; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_doh.c_dohprobe.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_doh.c_dohprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64*, %struct.Curl_easy*, i32, %struct.TYPE_9__, %struct.TYPE_7__, i64, i64, i64 }
%struct.TYPE_9__ = type { i64, i64, i64, i64, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.dnsprobe = type { i64, %struct.Curl_easy*, i64, %struct.dohresponse, i32 }
%struct.dohresponse = type { i64, i32* }
%struct.curl_slist = type { i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Failed to encode DOH packet [%d]\0A\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"%s?dns=%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@CURLE_OPERATION_TIMEDOUT = common dso_local global i64 0, align 8
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@doh_write_cb = common dso_local global i64 0, align 8
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_POSTFIELDS = common dso_local global i32 0, align 4
@CURLOPT_POSTFIELDSIZE = common dso_local global i32 0, align 4
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLOPT_PROTOCOLS = common dso_local global i32 0, align 4
@CURLPROTO_HTTPS = common dso_local global i64 0, align 8
@CURLOPT_TIMEOUT_MS = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_NOSIGNAL = common dso_local global i32 0, align 4
@CURLOPT_SSL_FALSESTART = common dso_local global i32 0, align 4
@CURLOPT_SSL_VERIFYHOST = common dso_local global i32 0, align 4
@CURLOPT_PROXY_SSL_VERIFYHOST = common dso_local global i32 0, align 4
@CURLOPT_SSL_VERIFYPEER = common dso_local global i32 0, align 4
@CURLOPT_PROXY_SSL_VERIFYPEER = common dso_local global i32 0, align 4
@CURLOPT_SSL_VERIFYSTATUS = common dso_local global i32 0, align 4
@STRING_SSL_CAFILE_ORIG = common dso_local global i64 0, align 8
@CURLOPT_CAINFO = common dso_local global i32 0, align 4
@STRING_SSL_CAFILE_PROXY = common dso_local global i64 0, align 8
@CURLOPT_PROXY_CAINFO = common dso_local global i32 0, align 4
@STRING_SSL_CAPATH_ORIG = common dso_local global i64 0, align 8
@CURLOPT_CAPATH = common dso_local global i32 0, align 4
@STRING_SSL_CAPATH_PROXY = common dso_local global i64 0, align 8
@CURLOPT_PROXY_CAPATH = common dso_local global i32 0, align 4
@STRING_SSL_CRLFILE_ORIG = common dso_local global i64 0, align 8
@CURLOPT_CRLFILE = common dso_local global i32 0, align 4
@STRING_SSL_CRLFILE_PROXY = common dso_local global i64 0, align 8
@CURLOPT_PROXY_CRLFILE = common dso_local global i32 0, align 4
@CURLOPT_CERTINFO = common dso_local global i32 0, align 4
@STRING_SSL_RANDOM_FILE = common dso_local global i64 0, align 8
@CURLOPT_RANDOM_FILE = common dso_local global i32 0, align 4
@STRING_SSL_EGDSOCKET = common dso_local global i64 0, align 8
@CURLOPT_EGDSOCKET = common dso_local global i32 0, align 4
@CURLOPT_SSL_OPTIONS = common dso_local global i32 0, align 4
@CURLSSLOPT_NO_REVOKE = common dso_local global i64 0, align 8
@CURLOPT_PROXY_SSL_OPTIONS = common dso_local global i32 0, align 4
@CURLOPT_SSL_CTX_FUNCTION = common dso_local global i32 0, align 4
@CURLOPT_SSL_CTX_DATA = common dso_local global i32 0, align 4
@Curl_doh_done = common dso_local global i32 0, align 4
@CURLOPT_HTTP_VERSION = common dso_local global i32 0, align 4
@CURLPROTO_HTTP = common dso_local global i64 0, align 8
@CURL_HTTP_VERSION_2TLS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.Curl_easy*, %struct.dnsprobe*, i32, i8*, i8*, i32*, %struct.curl_slist*)* @dohprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dohprobe(%struct.Curl_easy* %0, %struct.dnsprobe* %1, i32 %2, i8* %3, i8* %4, i32* %5, %struct.curl_slist* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.Curl_easy*, align 8
  %10 = alloca %struct.dnsprobe*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.curl_slist*, align 8
  %16 = alloca %struct.Curl_easy*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.dohresponse*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %9, align 8
  store %struct.dnsprobe* %1, %struct.dnsprobe** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.curl_slist* %6, %struct.curl_slist** %15, align 8
  store %struct.Curl_easy* null, %struct.Curl_easy** %16, align 8
  store i8* null, i8** %17, align 8
  %24 = load i64, i64* @CURLE_OK, align 8
  store i64 %24, i64* %18, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.dnsprobe*, %struct.dnsprobe** %10, align 8
  %28 = getelementptr inbounds %struct.dnsprobe, %struct.dnsprobe* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.dnsprobe*, %struct.dnsprobe** %10, align 8
  %31 = getelementptr inbounds %struct.dnsprobe, %struct.dnsprobe* %30, i32 0, i32 2
  %32 = call i64 @doh_encode(i8* %25, i32 %26, i64 %29, i32 8, i64* %31)
  store i64 %32, i64* %20, align 8
  %33 = load i64, i64* %20, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %7
  %36 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %37 = load i64, i64* %20, align 8
  %38 = call i32 @failf(%struct.Curl_easy* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %39, i64* %8, align 8
  br label %454

40:                                               ; preds = %7
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.dnsprobe*, %struct.dnsprobe** %10, align 8
  %43 = getelementptr inbounds %struct.dnsprobe, %struct.dnsprobe* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.dnsprobe*, %struct.dnsprobe** %10, align 8
  %45 = getelementptr inbounds %struct.dnsprobe, %struct.dnsprobe* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.dohresponse, %struct.dohresponse* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.dnsprobe*, %struct.dnsprobe** %10, align 8
  %48 = getelementptr inbounds %struct.dnsprobe, %struct.dnsprobe* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.dohresponse, %struct.dohresponse* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %51 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %40
  %56 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %57 = load %struct.dnsprobe*, %struct.dnsprobe** %10, align 8
  %58 = getelementptr inbounds %struct.dnsprobe, %struct.dnsprobe* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.dnsprobe*, %struct.dnsprobe** %10, align 8
  %62 = getelementptr inbounds %struct.dnsprobe, %struct.dnsprobe* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @Curl_base64url_encode(%struct.Curl_easy* %56, i8* %60, i64 %63, i8** %21, i64* %22)
  store i64 %64, i64* %18, align 8
  %65 = load i64, i64* %18, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %449

68:                                               ; preds = %55
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** %21, align 8
  %71 = call i8* @aprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %69, i8* %70)
  store i8* %71, i8** %17, align 8
  %72 = load i8*, i8** %21, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i8*, i8** %17, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %68
  %77 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %77, i64* %18, align 8
  br label %449

78:                                               ; preds = %68
  %79 = load i8*, i8** %17, align 8
  store i8* %79, i8** %13, align 8
  br label %80

80:                                               ; preds = %78, %40
  %81 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %82 = load i32, i32* @TRUE, align 4
  %83 = call i64 @Curl_timeleft(%struct.Curl_easy* %81, i32* null, i32 %82)
  store i64 %83, i64* %19, align 8
  %84 = load i64, i64* %19, align 8
  %85 = icmp sle i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i64, i64* @CURLE_OPERATION_TIMEDOUT, align 8
  store i64 %87, i64* %18, align 8
  br label %449

88:                                               ; preds = %80
  %89 = call i64 @Curl_open(%struct.Curl_easy** %16)
  store i64 %89, i64* %18, align 8
  %90 = load i64, i64* %18, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %444, label %92

92:                                               ; preds = %88
  %93 = load %struct.dnsprobe*, %struct.dnsprobe** %10, align 8
  %94 = getelementptr inbounds %struct.dnsprobe, %struct.dnsprobe* %93, i32 0, i32 3
  store %struct.dohresponse* %94, %struct.dohresponse** %23, align 8
  %95 = load i32, i32* @CURLOPT_URL, align 4
  %96 = load i8*, i8** %13, align 8
  %97 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %95, i8* %96)
  %98 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %99 = load i64, i64* @doh_write_cb, align 8
  %100 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %98, i64 %99)
  %101 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %102 = load %struct.dohresponse*, %struct.dohresponse** %23, align 8
  %103 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %101, %struct.dohresponse* %102)
  %104 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %105 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %92
  %110 = load i32, i32* @CURLOPT_POSTFIELDS, align 4
  %111 = load %struct.dnsprobe*, %struct.dnsprobe** %10, align 8
  %112 = getelementptr inbounds %struct.dnsprobe, %struct.dnsprobe* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %110, i64 %113)
  %115 = load i32, i32* @CURLOPT_POSTFIELDSIZE, align 4
  %116 = load %struct.dnsprobe*, %struct.dnsprobe** %10, align 8
  %117 = getelementptr inbounds %struct.dnsprobe, %struct.dnsprobe* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %115, i64 %118)
  br label %120

120:                                              ; preds = %109, %92
  %121 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %122 = load %struct.curl_slist*, %struct.curl_slist** %15, align 8
  %123 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %121, %struct.curl_slist* %122)
  %124 = load i32, i32* @CURLOPT_PROTOCOLS, align 4
  %125 = load i64, i64* @CURLPROTO_HTTPS, align 8
  %126 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %124, i64 %125)
  %127 = load i32, i32* @CURLOPT_TIMEOUT_MS, align 4
  %128 = load i64, i64* %19, align 8
  %129 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %127, i64 %128)
  %130 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %131 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %120
  %136 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %137 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %136, i64 1)
  br label %138

138:                                              ; preds = %135, %120
  %139 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %140 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i32, i32* @CURLOPT_NOSIGNAL, align 4
  %146 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %145, i64 1)
  br label %147

147:                                              ; preds = %144, %138
  %148 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %149 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load i32, i32* @CURLOPT_SSL_FALSESTART, align 4
  %156 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %155, i64 1)
  br label %157

157:                                              ; preds = %154, %147
  %158 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %159 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %157
  %166 = load i32, i32* @CURLOPT_SSL_VERIFYHOST, align 4
  %167 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %166, i64 2)
  br label %168

168:                                              ; preds = %165, %157
  %169 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %170 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %168
  %177 = load i32, i32* @CURLOPT_PROXY_SSL_VERIFYHOST, align 4
  %178 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %177, i64 2)
  br label %179

179:                                              ; preds = %176, %168
  %180 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %181 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %179
  %188 = load i32, i32* @CURLOPT_SSL_VERIFYPEER, align 4
  %189 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %188, i64 1)
  br label %190

190:                                              ; preds = %187, %179
  %191 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %192 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %190
  %199 = load i32, i32* @CURLOPT_PROXY_SSL_VERIFYPEER, align 4
  %200 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %199, i64 1)
  br label %201

201:                                              ; preds = %198, %190
  %202 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %203 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %201
  %210 = load i32, i32* @CURLOPT_SSL_VERIFYSTATUS, align 4
  %211 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %210, i64 1)
  br label %212

212:                                              ; preds = %209, %201
  %213 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %214 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i64*, i64** %215, align 8
  %217 = load i64, i64* @STRING_SSL_CAFILE_ORIG, align 8
  %218 = getelementptr inbounds i64, i64* %216, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %212
  %222 = load i32, i32* @CURLOPT_CAINFO, align 4
  %223 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %224 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i64*, i64** %225, align 8
  %227 = load i64, i64* @STRING_SSL_CAFILE_ORIG, align 8
  %228 = getelementptr inbounds i64, i64* %226, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %222, i64 %229)
  br label %231

231:                                              ; preds = %221, %212
  %232 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %233 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  %235 = load i64*, i64** %234, align 8
  %236 = load i64, i64* @STRING_SSL_CAFILE_PROXY, align 8
  %237 = getelementptr inbounds i64, i64* %235, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %231
  %241 = load i32, i32* @CURLOPT_PROXY_CAINFO, align 4
  %242 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %243 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = load i64*, i64** %244, align 8
  %246 = load i64, i64* @STRING_SSL_CAFILE_PROXY, align 8
  %247 = getelementptr inbounds i64, i64* %245, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %241, i64 %248)
  br label %250

250:                                              ; preds = %240, %231
  %251 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %252 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  %254 = load i64*, i64** %253, align 8
  %255 = load i64, i64* @STRING_SSL_CAPATH_ORIG, align 8
  %256 = getelementptr inbounds i64, i64* %254, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %269

259:                                              ; preds = %250
  %260 = load i32, i32* @CURLOPT_CAPATH, align 4
  %261 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %262 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  %264 = load i64*, i64** %263, align 8
  %265 = load i64, i64* @STRING_SSL_CAPATH_ORIG, align 8
  %266 = getelementptr inbounds i64, i64* %264, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %260, i64 %267)
  br label %269

269:                                              ; preds = %259, %250
  %270 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %271 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  %273 = load i64*, i64** %272, align 8
  %274 = load i64, i64* @STRING_SSL_CAPATH_PROXY, align 8
  %275 = getelementptr inbounds i64, i64* %273, i64 %274
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %288

278:                                              ; preds = %269
  %279 = load i32, i32* @CURLOPT_PROXY_CAPATH, align 4
  %280 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %281 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 0
  %283 = load i64*, i64** %282, align 8
  %284 = load i64, i64* @STRING_SSL_CAPATH_PROXY, align 8
  %285 = getelementptr inbounds i64, i64* %283, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %279, i64 %286)
  br label %288

288:                                              ; preds = %278, %269
  %289 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %290 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 0
  %292 = load i64*, i64** %291, align 8
  %293 = load i64, i64* @STRING_SSL_CRLFILE_ORIG, align 8
  %294 = getelementptr inbounds i64, i64* %292, i64 %293
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %307

297:                                              ; preds = %288
  %298 = load i32, i32* @CURLOPT_CRLFILE, align 4
  %299 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %300 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 0
  %302 = load i64*, i64** %301, align 8
  %303 = load i64, i64* @STRING_SSL_CRLFILE_ORIG, align 8
  %304 = getelementptr inbounds i64, i64* %302, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %298, i64 %305)
  br label %307

307:                                              ; preds = %297, %288
  %308 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %309 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 0
  %311 = load i64*, i64** %310, align 8
  %312 = load i64, i64* @STRING_SSL_CRLFILE_PROXY, align 8
  %313 = getelementptr inbounds i64, i64* %311, i64 %312
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %326

316:                                              ; preds = %307
  %317 = load i32, i32* @CURLOPT_PROXY_CRLFILE, align 4
  %318 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %319 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 0
  %321 = load i64*, i64** %320, align 8
  %322 = load i64, i64* @STRING_SSL_CRLFILE_PROXY, align 8
  %323 = getelementptr inbounds i64, i64* %321, i64 %322
  %324 = load i64, i64* %323, align 8
  %325 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %317, i64 %324)
  br label %326

326:                                              ; preds = %316, %307
  %327 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %328 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 3
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 3
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %326
  %334 = load i32, i32* @CURLOPT_CERTINFO, align 4
  %335 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %334, i64 1)
  br label %336

336:                                              ; preds = %333, %326
  %337 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %338 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 0
  %340 = load i64*, i64** %339, align 8
  %341 = load i64, i64* @STRING_SSL_RANDOM_FILE, align 8
  %342 = getelementptr inbounds i64, i64* %340, i64 %341
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %355

345:                                              ; preds = %336
  %346 = load i32, i32* @CURLOPT_RANDOM_FILE, align 4
  %347 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %348 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 0
  %350 = load i64*, i64** %349, align 8
  %351 = load i64, i64* @STRING_SSL_RANDOM_FILE, align 8
  %352 = getelementptr inbounds i64, i64* %350, i64 %351
  %353 = load i64, i64* %352, align 8
  %354 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %346, i64 %353)
  br label %355

355:                                              ; preds = %345, %336
  %356 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %357 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 0
  %359 = load i64*, i64** %358, align 8
  %360 = load i64, i64* @STRING_SSL_EGDSOCKET, align 8
  %361 = getelementptr inbounds i64, i64* %359, i64 %360
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %374

364:                                              ; preds = %355
  %365 = load i32, i32* @CURLOPT_EGDSOCKET, align 4
  %366 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %367 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i32 0, i32 0
  %369 = load i64*, i64** %368, align 8
  %370 = load i64, i64* @STRING_SSL_EGDSOCKET, align 8
  %371 = getelementptr inbounds i64, i64* %369, i64 %370
  %372 = load i64, i64* %371, align 8
  %373 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %365, i64 %372)
  br label %374

374:                                              ; preds = %364, %355
  %375 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %376 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 3
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i32 0, i32 2
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %385

381:                                              ; preds = %374
  %382 = load i32, i32* @CURLOPT_SSL_OPTIONS, align 4
  %383 = load i64, i64* @CURLSSLOPT_NO_REVOKE, align 8
  %384 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %382, i64 %383)
  br label %385

385:                                              ; preds = %381, %374
  %386 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %387 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %387, i32 0, i32 4
  %389 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %385
  %393 = load i32, i32* @CURLOPT_PROXY_SSL_OPTIONS, align 4
  %394 = load i64, i64* @CURLSSLOPT_NO_REVOKE, align 8
  %395 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %393, i64 %394)
  br label %396

396:                                              ; preds = %392, %385
  %397 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %398 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i32 0, i32 3
  %400 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %411

403:                                              ; preds = %396
  %404 = load i32, i32* @CURLOPT_SSL_CTX_FUNCTION, align 4
  %405 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %406 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %406, i32 0, i32 3
  %408 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %404, i64 %409)
  br label %411

411:                                              ; preds = %403, %396
  %412 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %413 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %413, i32 0, i32 3
  %415 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %414, i32 0, i32 1
  %416 = load i64, i64* %415, align 8
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %426

418:                                              ; preds = %411
  %419 = load i32, i32* @CURLOPT_SSL_CTX_DATA, align 4
  %420 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %421 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %421, i32 0, i32 3
  %423 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %422, i32 0, i32 1
  %424 = load i64, i64* %423, align 8
  %425 = call i32 (i32, ...) @ERROR_CHECK_SETOPT(i32 %419, i64 %424)
  br label %426

426:                                              ; preds = %418, %411
  %427 = load i32, i32* @Curl_doh_done, align 4
  %428 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %429 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %429, i32 0, i32 2
  store i32 %427, i32* %430, align 8
  %431 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %432 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %433 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %433, i32 0, i32 1
  store %struct.Curl_easy* %431, %struct.Curl_easy** %434, align 8
  %435 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %436 = load %struct.dnsprobe*, %struct.dnsprobe** %10, align 8
  %437 = getelementptr inbounds %struct.dnsprobe, %struct.dnsprobe* %436, i32 0, i32 1
  store %struct.Curl_easy* %435, %struct.Curl_easy** %437, align 8
  %438 = load i32*, i32** %14, align 8
  %439 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  %440 = call i64 @curl_multi_add_handle(i32* %438, %struct.Curl_easy* %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %443

442:                                              ; preds = %426
  br label %449

443:                                              ; preds = %426
  br label %445

444:                                              ; preds = %88
  br label %449

445:                                              ; preds = %443
  %446 = load i8*, i8** %17, align 8
  %447 = call i32 @free(i8* %446)
  %448 = load i64, i64* @CURLE_OK, align 8
  store i64 %448, i64* %8, align 8
  br label %454

449:                                              ; preds = %444, %442, %86, %76, %67
  %450 = load i8*, i8** %17, align 8
  %451 = call i32 @free(i8* %450)
  %452 = call i32 @Curl_close(%struct.Curl_easy** %16)
  %453 = load i64, i64* %18, align 8
  store i64 %453, i64* %8, align 8
  br label %454

454:                                              ; preds = %449, %445, %35
  %455 = load i64, i64* %8, align 8
  ret i64 %455
}

declare dso_local i64 @doh_encode(i8*, i32, i64, i32, i64*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i64) #1

declare dso_local i64 @Curl_base64url_encode(%struct.Curl_easy*, i8*, i64, i8**, i64*) #1

declare dso_local i8* @aprintf(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @Curl_timeleft(%struct.Curl_easy*, i32*, i32) #1

declare dso_local i64 @Curl_open(%struct.Curl_easy**) #1

declare dso_local i32 @ERROR_CHECK_SETOPT(i32, ...) #1

declare dso_local i64 @curl_multi_add_handle(i32*, %struct.Curl_easy*) #1

declare dso_local i32 @Curl_close(%struct.Curl_easy**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
