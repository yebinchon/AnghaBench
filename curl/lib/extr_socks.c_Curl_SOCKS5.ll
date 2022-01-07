; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_socks.c_Curl_SOCKS5.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_socks.c_Curl_SOCKS5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i64, %struct.Curl_easy*, %struct.TYPE_12__, %struct.TYPE_10__, i32* }
%struct.Curl_easy = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.Curl_dns_entry = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.sockaddr_in = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@__const.Curl_SOCKS5.dest = private unnamed_addr constant [600 x i8] c"unknown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@CURLPROXY_SOCKS5 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"SOCKS5: connecting to HTTP proxy %s port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"SOCKS5: server resolving disabled for hostnames of length > 255 [actual len=%zu]\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Connection time-out\00", align 1
@CURLE_OPERATION_TIMEDOUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"SOCKS5: no connection here\00", align 1
@CURLE_COULDNT_CONNECT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"SOCKS5: connection timeout\00", align 1
@CURL_CSELECT_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"SOCKS5: error occurred during connection\00", align 1
@CURLAUTH_BASIC = common dso_local global i64 0, align 8
@CURLAUTH_GSSAPI = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [63 x i8] c"warning: unsupported value passed to CURLOPT_SOCKS5_AUTH: %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"SOCKS5 communication to %s:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Unable to send initial SOCKS5 request.\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"SOCKS5 nothing to read\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"SOCKS5 read timeout\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"SOCKS5 read error occurred\00", align 1
@CURLE_RECV_ERROR = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [43 x i8] c"Unable to receive initial SOCKS5 response.\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"Received invalid version in initial SOCKS5 response.\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Excessive user name length for proxy auth\00", align 1
@CURLE_BAD_FUNCTION_ARGUMENT = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [41 x i8] c"Excessive password length for proxy auth\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"Failed to send SOCKS5 sub-negotiation request.\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"Unable to receive SOCKS5 sub-negotiation response.\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"User was rejected by the SOCKS5 server (%d %d).\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"SOCKS5 GSSAPI per-message authentication is not supported.\00", align 1
@.str.20 = private unnamed_addr constant [171 x i8] c"No authentication method was acceptable. (It is quite likely that the SOCKS5 server wanted a username/password, since none was supplied to the server on this connection.)\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"No authentication method was acceptable.\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"Undocumented SOCKS5 mode attempted to be used by server.\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"SOCKS5 connect to %s (remotely resolved)\0A\00", align 1
@CURLRESOLV_ERROR = common dso_local global i32 0, align 4
@CURLE_COULDNT_RESOLVE_HOST = common dso_local global i64 0, align 8
@CURLRESOLV_PENDING = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c":%d\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [46 x i8] c"SOCKS5 connect to IPv4 %s (locally resolved)\0A\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"SOCKS5 connection to %s not supported\0A\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"Failed to resolve \22%s\22 for SOCKS5 connect.\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"Failed to send SOCKS5 connect request.\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"Failed to receive SOCKS5 connect request ack.\00", align 1
@.str.32 = private unnamed_addr constant [53 x i8] c"SOCKS5 reply has wrong version, version should be 5.\00", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"Can't complete SOCKS5 connection to %s. (%d)\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"SOCKS5 request granted.\0A\00", align 1
@CURLE_OK = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@REQUEST_BUFSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_SOCKS5(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, %struct.connectdata* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.connectdata*, align 8
  %14 = alloca [600 x i8], align 16
  %15 = alloca [600 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.Curl_easy*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca %struct.Curl_dns_entry*, align 8
  %32 = alloca %struct.TYPE_13__*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca %struct.sockaddr_in*, align 8
  %37 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.connectdata* %5, %struct.connectdata** %13, align 8
  %38 = bitcast [600 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %38, i8* align 16 getelementptr inbounds ([600 x i8], [600 x i8]* @__const.Curl_SOCKS5.dest, i32 0, i32 0), i64 600, i1 false)
  %39 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %40 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %21, align 4
  %46 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %47 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %46, i32 0, i32 1
  %48 = load %struct.Curl_easy*, %struct.Curl_easy** %47, align 8
  store %struct.Curl_easy* %48, %struct.Curl_easy** %22, align 8
  %49 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %50 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CURLPROXY_SOCKS5, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %6
  %56 = load i32, i32* @TRUE, align 4
  br label %59

57:                                               ; preds = %6
  %58 = load i32, i32* @FALSE, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %24, align 4
  %61 = load i8*, i8** %10, align 8
  %62 = call i8* @strlen(i8* %61)
  %63 = ptrtoint i8* %62 to i64
  store i64 %63, i64* %25, align 8
  store i32 0, i32* %26, align 4
  %64 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %65 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %27, align 8
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %28, align 4
  %69 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %70 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %59
  %75 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %76 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %75, i32 0, i32 1
  %77 = load %struct.Curl_easy*, %struct.Curl_easy** %76, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %77, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %59
  %82 = load i32, i32* %24, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* %25, align 8
  %86 = icmp ugt i64 %85, 255
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %89 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %88, i32 0, i32 1
  %90 = load %struct.Curl_easy*, %struct.Curl_easy** %89, align 8
  %91 = load i64, i64* %25, align 8
  %92 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %90, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i64 %91)
  %93 = load i32, i32* @TRUE, align 4
  store i32 %93, i32* %24, align 4
  br label %94

94:                                               ; preds = %87, %84, %81
  %95 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %96 = load i32, i32* @TRUE, align 4
  %97 = call i64 @Curl_timeleft(%struct.Curl_easy* %95, i32* null, i32 %96)
  store i64 %97, i64* %23, align 8
  %98 = load i64, i64* %23, align 8
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %102 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i64, i64* @CURLE_OPERATION_TIMEDOUT, align 8
  store i64 %103, i64* %7, align 8
  br label %725

104:                                              ; preds = %94
  %105 = load i32, i32* %21, align 4
  %106 = load i32, i32* @TRUE, align 4
  %107 = call i32 @curlx_nonblock(i32 %105, i32 %106)
  %108 = load i32, i32* %21, align 4
  %109 = load i64, i64* %23, align 8
  %110 = call i32 @SOCKET_WRITABLE(i32 %108, i64 %109)
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %19, align 4
  %112 = icmp eq i32 -1, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %104
  %114 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %115 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %114, i32 0, i32 1
  %116 = load %struct.Curl_easy*, %struct.Curl_easy** %115, align 8
  %117 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %118, i64* %7, align 8
  br label %725

119:                                              ; preds = %104
  %120 = load i32, i32* %19, align 4
  %121 = icmp eq i32 0, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %124 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %123, i32 0, i32 1
  %125 = load %struct.Curl_easy*, %struct.Curl_easy** %124, align 8
  %126 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %127 = load i64, i64* @CURLE_OPERATION_TIMEDOUT, align 8
  store i64 %127, i64* %7, align 8
  br label %725

128:                                              ; preds = %119
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* @CURL_CSELECT_ERR, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %135 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %134, i32 0, i32 1
  %136 = load %struct.Curl_easy*, %struct.Curl_easy** %135, align 8
  %137 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %136, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %138 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %138, i64* %7, align 8
  br label %725

139:                                              ; preds = %128
  %140 = load i64, i64* %27, align 8
  %141 = load i64, i64* @CURLAUTH_BASIC, align 8
  %142 = load i64, i64* @CURLAUTH_GSSAPI, align 8
  %143 = or i64 %141, %142
  %144 = xor i64 %143, -1
  %145 = and i64 %140, %144
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %139
  %148 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %149 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %148, i32 0, i32 1
  %150 = load %struct.Curl_easy*, %struct.Curl_easy** %149, align 8
  %151 = load i64, i64* %27, align 8
  %152 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %150, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i64 %151)
  br label %153

153:                                              ; preds = %147, %139
  %154 = load i64, i64* %27, align 8
  %155 = load i64, i64* @CURLAUTH_BASIC, align 8
  %156 = and i64 %154, %155
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %153
  store i8* null, i8** %8, align 8
  br label %159

159:                                              ; preds = %158, %153
  store i32 0, i32* %16, align 4
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %16, align 4
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 %162
  store i8 5, i8* %163, align 1
  %164 = load i32, i32* %16, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %16, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %16, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 %168
  store i8 0, i8* %169, align 1
  %170 = load i32, i32* %28, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %159
  %173 = load i32, i32* %16, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %16, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 %175
  store i8 1, i8* %176, align 1
  br label %177

177:                                              ; preds = %172, %159
  %178 = load i8*, i8** %8, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load i32, i32* %16, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %16, align 4
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 %183
  store i8 2, i8* %184, align 1
  br label %185

185:                                              ; preds = %180, %177
  %186 = load i32, i32* %16, align 4
  %187 = sub nsw i32 %186, 2
  %188 = trunc i32 %187 to i8
  %189 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 1
  store i8 %188, i8* %189, align 1
  %190 = load i32, i32* %21, align 4
  %191 = load i32, i32* @FALSE, align 4
  %192 = call i32 @curlx_nonblock(i32 %190, i32 %191)
  %193 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %194 = load i8*, i8** %10, align 8
  %195 = load i32, i32* %11, align 4
  %196 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %193, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %194, i32 %195)
  %197 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %198 = load i32, i32* %21, align 4
  %199 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 0
  %200 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 1
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = add nsw i32 2, %202
  %204 = call i64 @Curl_write_plain(%struct.connectdata* %197, i32 %198, i8* %199, i32 %203, i32* %18)
  store i64 %204, i64* %20, align 8
  %205 = load i64, i64* %20, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %214, label %207

207:                                              ; preds = %185
  %208 = load i32, i32* %18, align 4
  %209 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 1
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = add nsw i32 2, %211
  %213 = icmp ne i32 %208, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %207, %185
  %215 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %216 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %215, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %217 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %217, i64* %7, align 8
  br label %725

218:                                              ; preds = %207
  %219 = load i32, i32* %21, align 4
  %220 = load i32, i32* @TRUE, align 4
  %221 = call i32 @curlx_nonblock(i32 %219, i32 %220)
  %222 = load i32, i32* %21, align 4
  %223 = load i64, i64* %23, align 8
  %224 = call i32 @SOCKET_READABLE(i32 %222, i64 %223)
  store i32 %224, i32* %19, align 4
  %225 = load i32, i32* %19, align 4
  %226 = icmp eq i32 -1, %225
  br i1 %226, label %227, label %233

227:                                              ; preds = %218
  %228 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %229 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %228, i32 0, i32 1
  %230 = load %struct.Curl_easy*, %struct.Curl_easy** %229, align 8
  %231 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %230, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %232 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %232, i64* %7, align 8
  br label %725

233:                                              ; preds = %218
  %234 = load i32, i32* %19, align 4
  %235 = icmp eq i32 0, %234
  br i1 %235, label %236, label %242

236:                                              ; preds = %233
  %237 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %238 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %237, i32 0, i32 1
  %239 = load %struct.Curl_easy*, %struct.Curl_easy** %238, align 8
  %240 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %239, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %241 = load i64, i64* @CURLE_OPERATION_TIMEDOUT, align 8
  store i64 %241, i64* %7, align 8
  br label %725

242:                                              ; preds = %233
  %243 = load i32, i32* %19, align 4
  %244 = load i32, i32* @CURL_CSELECT_ERR, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %242
  %248 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %249 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %248, i32 0, i32 1
  %250 = load %struct.Curl_easy*, %struct.Curl_easy** %249, align 8
  %251 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %250, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %252 = load i64, i64* @CURLE_RECV_ERROR, align 8
  store i64 %252, i64* %7, align 8
  br label %725

253:                                              ; preds = %242
  %254 = load i32, i32* %21, align 4
  %255 = load i32, i32* @FALSE, align 4
  %256 = call i32 @curlx_nonblock(i32 %254, i32 %255)
  %257 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %258 = load i32, i32* %21, align 4
  %259 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 0
  %260 = call i32 @Curl_blockread_all(%struct.connectdata* %257, i32 %258, i8* %259, i32 2, i32* %17)
  store i32 %260, i32* %19, align 4
  %261 = load i32, i32* %19, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %253
  %264 = load i32, i32* %17, align 4
  %265 = icmp ne i32 %264, 2
  br i1 %265, label %266, label %270

266:                                              ; preds = %263, %253
  %267 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %268 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %267, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %269 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %269, i64* %7, align 8
  br label %725

270:                                              ; preds = %263
  %271 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 0
  %272 = load i8, i8* %271, align 16
  %273 = zext i8 %272 to i32
  %274 = icmp ne i32 %273, 5
  br i1 %274, label %275, label %279

275:                                              ; preds = %270
  %276 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %277 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %276, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0))
  %278 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %278, i64* %7, align 8
  br label %725

279:                                              ; preds = %270
  %280 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 1
  %281 = load i8, i8* %280, align 1
  %282 = zext i8 %281 to i32
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %279
  br label %455

285:                                              ; preds = %279
  %286 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 1
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = icmp eq i32 %288, 2
  br i1 %289, label %290, label %418

290:                                              ; preds = %285
  %291 = load i8*, i8** %8, align 8
  %292 = icmp ne i8* %291, null
  br i1 %292, label %293, label %303

293:                                              ; preds = %290
  %294 = load i8*, i8** %9, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %303

296:                                              ; preds = %293
  %297 = load i8*, i8** %8, align 8
  %298 = call i8* @strlen(i8* %297)
  %299 = ptrtoint i8* %298 to i64
  store i64 %299, i64* %29, align 8
  %300 = load i8*, i8** %9, align 8
  %301 = call i8* @strlen(i8* %300)
  %302 = ptrtoint i8* %301 to i64
  store i64 %302, i64* %30, align 8
  br label %304

303:                                              ; preds = %293, %290
  store i64 0, i64* %29, align 8
  store i64 0, i64* %30, align 8
  br label %304

304:                                              ; preds = %303, %296
  store i32 0, i32* %26, align 4
  %305 = load i32, i32* %26, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %26, align 4
  %307 = sext i32 %305 to i64
  %308 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 %307
  store i8 1, i8* %308, align 1
  %309 = load i64, i64* %29, align 8
  %310 = trunc i64 %309 to i8
  %311 = load i32, i32* %26, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %26, align 4
  %313 = sext i32 %311 to i64
  %314 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 %313
  store i8 %310, i8* %314, align 1
  %315 = load i8*, i8** %8, align 8
  %316 = icmp ne i8* %315, null
  br i1 %316, label %317, label %335

317:                                              ; preds = %304
  %318 = load i64, i64* %29, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %335

320:                                              ; preds = %317
  %321 = load i64, i64* %29, align 8
  %322 = icmp uge i64 %321, 255
  br i1 %322, label %323, label %327

323:                                              ; preds = %320
  %324 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %325 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %324, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0))
  %326 = load i64, i64* @CURLE_BAD_FUNCTION_ARGUMENT, align 8
  store i64 %326, i64* %7, align 8
  br label %725

327:                                              ; preds = %320
  %328 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 0
  %329 = load i32, i32* %26, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8, i8* %328, i64 %330
  %332 = load i8*, i8** %8, align 8
  %333 = load i64, i64* %29, align 8
  %334 = call i32 @memcpy(i8* %331, i8* %332, i64 %333)
  br label %335

335:                                              ; preds = %327, %317, %304
  %336 = load i64, i64* %29, align 8
  %337 = load i32, i32* %26, align 4
  %338 = sext i32 %337 to i64
  %339 = add i64 %338, %336
  %340 = trunc i64 %339 to i32
  store i32 %340, i32* %26, align 4
  %341 = load i64, i64* %30, align 8
  %342 = trunc i64 %341 to i8
  %343 = load i32, i32* %26, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %26, align 4
  %345 = sext i32 %343 to i64
  %346 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 %345
  store i8 %342, i8* %346, align 1
  %347 = load i8*, i8** %9, align 8
  %348 = icmp ne i8* %347, null
  br i1 %348, label %349, label %367

349:                                              ; preds = %335
  %350 = load i64, i64* %30, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %367

352:                                              ; preds = %349
  %353 = load i64, i64* %30, align 8
  %354 = icmp ugt i64 %353, 255
  br i1 %354, label %355, label %359

355:                                              ; preds = %352
  %356 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %357 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %356, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0))
  %358 = load i64, i64* @CURLE_BAD_FUNCTION_ARGUMENT, align 8
  store i64 %358, i64* %7, align 8
  br label %725

359:                                              ; preds = %352
  %360 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 0
  %361 = load i32, i32* %26, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8, i8* %360, i64 %362
  %364 = load i8*, i8** %9, align 8
  %365 = load i64, i64* %30, align 8
  %366 = call i32 @memcpy(i8* %363, i8* %364, i64 %365)
  br label %367

367:                                              ; preds = %359, %349, %335
  %368 = load i64, i64* %30, align 8
  %369 = load i32, i32* %26, align 4
  %370 = sext i32 %369 to i64
  %371 = add i64 %370, %368
  %372 = trunc i64 %371 to i32
  store i32 %372, i32* %26, align 4
  %373 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %374 = load i32, i32* %21, align 4
  %375 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 0
  %376 = load i32, i32* %26, align 4
  %377 = call i64 @Curl_write_plain(%struct.connectdata* %373, i32 %374, i8* %375, i32 %376, i32* %18)
  store i64 %377, i64* %20, align 8
  %378 = load i64, i64* %20, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %384, label %380

380:                                              ; preds = %367
  %381 = load i32, i32* %26, align 4
  %382 = load i32, i32* %18, align 4
  %383 = icmp ne i32 %381, %382
  br i1 %383, label %384, label %388

384:                                              ; preds = %380, %367
  %385 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %386 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %385, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0))
  %387 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %387, i64* %7, align 8
  br label %725

388:                                              ; preds = %380
  %389 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %390 = load i32, i32* %21, align 4
  %391 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 0
  %392 = call i32 @Curl_blockread_all(%struct.connectdata* %389, i32 %390, i8* %391, i32 2, i32* %17)
  store i32 %392, i32* %19, align 4
  %393 = load i32, i32* %19, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %398, label %395

395:                                              ; preds = %388
  %396 = load i32, i32* %17, align 4
  %397 = icmp ne i32 %396, 2
  br i1 %397, label %398, label %402

398:                                              ; preds = %395, %388
  %399 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %400 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %399, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i64 0, i64 0))
  %401 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %401, i64* %7, align 8
  br label %725

402:                                              ; preds = %395
  %403 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 1
  %404 = load i8, i8* %403, align 1
  %405 = zext i8 %404 to i32
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %417

407:                                              ; preds = %402
  %408 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %409 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 0
  %410 = load i8, i8* %409, align 16
  %411 = zext i8 %410 to i32
  %412 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 1
  %413 = load i8, i8* %412, align 1
  %414 = zext i8 %413 to i32
  %415 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %408, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0), i32 %411, i32 %414)
  %416 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %416, i64* %7, align 8
  br label %725

417:                                              ; preds = %402
  br label %454

418:                                              ; preds = %285
  %419 = load i32, i32* %28, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %430, label %421

421:                                              ; preds = %418
  %422 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 1
  %423 = load i8, i8* %422, align 1
  %424 = zext i8 %423 to i32
  %425 = icmp eq i32 %424, 1
  br i1 %425, label %426, label %430

426:                                              ; preds = %421
  %427 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %428 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %427, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i64 0, i64 0))
  %429 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %429, i64* %7, align 8
  br label %725

430:                                              ; preds = %421, %418
  %431 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 1
  %432 = load i8, i8* %431, align 1
  %433 = zext i8 %432 to i32
  %434 = icmp eq i32 %433, 255
  br i1 %434, label %435, label %450

435:                                              ; preds = %430
  %436 = load i8*, i8** %8, align 8
  %437 = icmp ne i8* %436, null
  br i1 %437, label %438, label %442

438:                                              ; preds = %435
  %439 = load i8*, i8** %8, align 8
  %440 = load i8, i8* %439, align 1
  %441 = icmp ne i8 %440, 0
  br i1 %441, label %445, label %442

442:                                              ; preds = %438, %435
  %443 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %444 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %443, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.20, i64 0, i64 0))
  br label %448

445:                                              ; preds = %438
  %446 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %447 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %446, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0))
  br label %448

448:                                              ; preds = %445, %442
  %449 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %449, i64* %7, align 8
  br label %725

450:                                              ; preds = %430
  %451 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %452 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %451, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i64 0, i64 0))
  %453 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %453, i64* %7, align 8
  br label %725

454:                                              ; preds = %417
  br label %455

455:                                              ; preds = %454, %284
  store i32 0, i32* %26, align 4
  %456 = load i32, i32* %26, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %26, align 4
  %458 = sext i32 %456 to i64
  %459 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 %458
  store i8 5, i8* %459, align 1
  %460 = load i32, i32* %26, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %26, align 4
  %462 = sext i32 %460 to i64
  %463 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 %462
  store i8 1, i8* %463, align 1
  %464 = load i32, i32* %26, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %26, align 4
  %466 = sext i32 %464 to i64
  %467 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 %466
  store i8 0, i8* %467, align 1
  %468 = load i32, i32* %24, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %499, label %470

470:                                              ; preds = %455
  %471 = load i32, i32* %26, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %26, align 4
  %473 = sext i32 %471 to i64
  %474 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 %473
  store i8 3, i8* %474, align 1
  %475 = load i64, i64* %25, align 8
  %476 = trunc i64 %475 to i8
  %477 = load i32, i32* %26, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %26, align 4
  %479 = sext i32 %477 to i64
  %480 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 %479
  store i8 %476, i8* %480, align 1
  %481 = load i32, i32* %26, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 %482
  %484 = load i8*, i8** %10, align 8
  %485 = load i64, i64* %25, align 8
  %486 = call i32 @memcpy(i8* %483, i8* %484, i64 %485)
  %487 = load i64, i64* %25, align 8
  %488 = load i32, i32* %26, align 4
  %489 = sext i32 %488 to i64
  %490 = add i64 %489, %487
  %491 = trunc i64 %490 to i32
  store i32 %491, i32* %26, align 4
  %492 = getelementptr inbounds [600 x i8], [600 x i8]* %15, i64 0, i64 0
  %493 = load i8*, i8** %10, align 8
  %494 = load i32, i32* %11, align 4
  %495 = call i32 (i8*, i32, i8*, ...) @msnprintf(i8* %492, i32 600, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* %493, i32 %494)
  %496 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %497 = getelementptr inbounds [600 x i8], [600 x i8]* %15, i64 0, i64 0
  %498 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %496, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i64 0, i64 0), i8* %497)
  br label %608

499:                                              ; preds = %455
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %32, align 8
  %500 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %501 = load i8*, i8** %10, align 8
  %502 = load i32, i32* %11, align 4
  %503 = load i32, i32* @FALSE, align 4
  %504 = call i32 @Curl_resolv(%struct.connectdata* %500, i8* %501, i32 %502, i32 %503, %struct.Curl_dns_entry** %31)
  store i32 %504, i32* %33, align 4
  %505 = load i32, i32* %33, align 4
  %506 = load i32, i32* @CURLRESOLV_ERROR, align 4
  %507 = icmp eq i32 %505, %506
  br i1 %507, label %508, label %510

508:                                              ; preds = %499
  %509 = load i64, i64* @CURLE_COULDNT_RESOLVE_HOST, align 8
  store i64 %509, i64* %7, align 8
  br label %725

510:                                              ; preds = %499
  %511 = load i32, i32* %33, align 4
  %512 = load i32, i32* @CURLRESOLV_PENDING, align 4
  %513 = icmp eq i32 %511, %512
  br i1 %513, label %514, label %522

514:                                              ; preds = %510
  %515 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %516 = call i64 @Curl_resolver_wait_resolv(%struct.connectdata* %515, %struct.Curl_dns_entry** %31)
  store i64 %516, i64* %20, align 8
  %517 = load i64, i64* %20, align 8
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %521

519:                                              ; preds = %514
  %520 = load i64, i64* %20, align 8
  store i64 %520, i64* %7, align 8
  br label %725

521:                                              ; preds = %514
  br label %522

522:                                              ; preds = %521, %510
  %523 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %31, align 8
  %524 = icmp ne %struct.Curl_dns_entry* %523, null
  br i1 %524, label %525, label %529

525:                                              ; preds = %522
  %526 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %31, align 8
  %527 = getelementptr inbounds %struct.Curl_dns_entry, %struct.Curl_dns_entry* %526, i32 0, i32 0
  %528 = load %struct.TYPE_13__*, %struct.TYPE_13__** %527, align 8
  store %struct.TYPE_13__* %528, %struct.TYPE_13__** %32, align 8
  br label %529

529:                                              ; preds = %525, %522
  %530 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %531 = icmp ne %struct.TYPE_13__* %530, null
  br i1 %531, label %532, label %599

532:                                              ; preds = %529
  %533 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %534 = getelementptr inbounds [600 x i8], [600 x i8]* %15, i64 0, i64 0
  %535 = call i64 @Curl_printable_address(%struct.TYPE_13__* %533, i8* %534, i32 600)
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %537, label %549

537:                                              ; preds = %532
  %538 = getelementptr inbounds [600 x i8], [600 x i8]* %15, i64 0, i64 0
  %539 = call i8* @strlen(i8* %538)
  %540 = ptrtoint i8* %539 to i64
  store i64 %540, i64* %34, align 8
  %541 = getelementptr inbounds [600 x i8], [600 x i8]* %15, i64 0, i64 0
  %542 = load i64, i64* %34, align 8
  %543 = getelementptr inbounds i8, i8* %541, i64 %542
  %544 = load i64, i64* %34, align 8
  %545 = sub i64 600, %544
  %546 = trunc i64 %545 to i32
  %547 = load i32, i32* %11, align 4
  %548 = call i32 (i8*, i32, i8*, ...) @msnprintf(i8* %543, i32 %546, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i32 %547)
  br label %552

549:                                              ; preds = %532
  %550 = getelementptr inbounds [600 x i8], [600 x i8]* %15, i64 0, i64 0
  %551 = call i32 @strcpy(i8* %550, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  br label %552

552:                                              ; preds = %549, %537
  %553 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %554 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %553, i32 0, i32 0
  %555 = load i64, i64* %554, align 8
  %556 = load i64, i64* @AF_INET, align 8
  %557 = icmp eq i64 %555, %556
  br i1 %557, label %558, label %591

558:                                              ; preds = %552
  %559 = load i32, i32* %26, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %26, align 4
  %561 = sext i32 %559 to i64
  %562 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 %561
  store i8 1, i8* %562, align 1
  %563 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %564 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %563, i32 0, i32 1
  %565 = load i64, i64* %564, align 8
  %566 = inttoptr i64 %565 to i8*
  %567 = bitcast i8* %566 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %567, %struct.sockaddr_in** %36, align 8
  store i32 0, i32* %35, align 4
  br label %568

568:                                              ; preds = %584, %558
  %569 = load i32, i32* %35, align 4
  %570 = icmp slt i32 %569, 4
  br i1 %570, label %571, label %587

571:                                              ; preds = %568
  %572 = load %struct.sockaddr_in*, %struct.sockaddr_in** %36, align 8
  %573 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %572, i32 0, i32 0
  %574 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %573, i32 0, i32 0
  %575 = bitcast i32* %574 to i8*
  %576 = load i32, i32* %35, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds i8, i8* %575, i64 %577
  %579 = load i8, i8* %578, align 1
  %580 = load i32, i32* %26, align 4
  %581 = add nsw i32 %580, 1
  store i32 %581, i32* %26, align 4
  %582 = sext i32 %580 to i64
  %583 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 %582
  store i8 %579, i8* %583, align 1
  br label %584

584:                                              ; preds = %571
  %585 = load i32, i32* %35, align 4
  %586 = add nsw i32 %585, 1
  store i32 %586, i32* %35, align 4
  br label %568

587:                                              ; preds = %568
  %588 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %589 = getelementptr inbounds [600 x i8], [600 x i8]* %15, i64 0, i64 0
  %590 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %588, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i64 0, i64 0), i8* %589)
  br label %595

591:                                              ; preds = %552
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %32, align 8
  %592 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %593 = getelementptr inbounds [600 x i8], [600 x i8]* %15, i64 0, i64 0
  %594 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %592, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0), i8* %593)
  br label %595

595:                                              ; preds = %591, %587
  %596 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %597 = load %struct.Curl_dns_entry*, %struct.Curl_dns_entry** %31, align 8
  %598 = call i32 @Curl_resolv_unlock(%struct.Curl_easy* %596, %struct.Curl_dns_entry* %597)
  br label %599

599:                                              ; preds = %595, %529
  %600 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %601 = icmp ne %struct.TYPE_13__* %600, null
  br i1 %601, label %607, label %602

602:                                              ; preds = %599
  %603 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %604 = load i8*, i8** %10, align 8
  %605 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %603, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.29, i64 0, i64 0), i8* %604)
  %606 = load i64, i64* @CURLE_COULDNT_RESOLVE_HOST, align 8
  store i64 %606, i64* %7, align 8
  br label %725

607:                                              ; preds = %599
  br label %608

608:                                              ; preds = %607, %470
  %609 = load i32, i32* %11, align 4
  %610 = ashr i32 %609, 8
  %611 = and i32 %610, 255
  %612 = trunc i32 %611 to i8
  %613 = load i32, i32* %26, align 4
  %614 = add nsw i32 %613, 1
  store i32 %614, i32* %26, align 4
  %615 = sext i32 %613 to i64
  %616 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 %615
  store i8 %612, i8* %616, align 1
  %617 = load i32, i32* %11, align 4
  %618 = and i32 %617, 255
  %619 = trunc i32 %618 to i8
  %620 = load i32, i32* %26, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %26, align 4
  %622 = sext i32 %620 to i64
  %623 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 %622
  store i8 %619, i8* %623, align 1
  %624 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %625 = load i32, i32* %21, align 4
  %626 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 0
  %627 = load i32, i32* %26, align 4
  %628 = call i64 @Curl_write_plain(%struct.connectdata* %624, i32 %625, i8* %626, i32 %627, i32* %18)
  store i64 %628, i64* %20, align 8
  %629 = load i64, i64* %20, align 8
  %630 = icmp ne i64 %629, 0
  br i1 %630, label %635, label %631

631:                                              ; preds = %608
  %632 = load i32, i32* %26, align 4
  %633 = load i32, i32* %18, align 4
  %634 = icmp ne i32 %632, %633
  br i1 %634, label %635, label %639

635:                                              ; preds = %631, %608
  %636 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %637 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %636, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0))
  %638 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %638, i64* %7, align 8
  br label %725

639:                                              ; preds = %631
  store i32 10, i32* %26, align 4
  %640 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %641 = load i32, i32* %21, align 4
  %642 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 0
  %643 = load i32, i32* %26, align 4
  %644 = call i32 @Curl_blockread_all(%struct.connectdata* %640, i32 %641, i8* %642, i32 %643, i32* %17)
  store i32 %644, i32* %19, align 4
  %645 = load i32, i32* %19, align 4
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %651, label %647

647:                                              ; preds = %639
  %648 = load i32, i32* %26, align 4
  %649 = load i32, i32* %17, align 4
  %650 = icmp ne i32 %648, %649
  br i1 %650, label %651, label %655

651:                                              ; preds = %647, %639
  %652 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %653 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %652, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i64 0, i64 0))
  %654 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %654, i64* %7, align 8
  br label %725

655:                                              ; preds = %647
  %656 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 0
  %657 = load i8, i8* %656, align 16
  %658 = zext i8 %657 to i32
  %659 = icmp ne i32 %658, 5
  br i1 %659, label %660, label %664

660:                                              ; preds = %655
  %661 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %662 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %661, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.32, i64 0, i64 0))
  %663 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %663, i64* %7, align 8
  br label %725

664:                                              ; preds = %655
  %665 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 3
  %666 = load i8, i8* %665, align 1
  %667 = zext i8 %666 to i32
  %668 = icmp eq i32 %667, 3
  br i1 %668, label %669, label %676

669:                                              ; preds = %664
  %670 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 4
  %671 = load i8, i8* %670, align 4
  %672 = zext i8 %671 to i32
  store i32 %672, i32* %37, align 4
  %673 = load i32, i32* %37, align 4
  %674 = add nsw i32 5, %673
  %675 = add nsw i32 %674, 2
  store i32 %675, i32* %26, align 4
  br label %683

676:                                              ; preds = %664
  %677 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 3
  %678 = load i8, i8* %677, align 1
  %679 = zext i8 %678 to i32
  %680 = icmp eq i32 %679, 4
  br i1 %680, label %681, label %682

681:                                              ; preds = %676
  store i32 22, i32* %26, align 4
  br label %682

682:                                              ; preds = %681, %676
  br label %683

683:                                              ; preds = %682, %669
  %684 = load i32, i32* %26, align 4
  %685 = icmp sgt i32 %684, 10
  br i1 %685, label %686, label %705

686:                                              ; preds = %683
  %687 = load %struct.connectdata*, %struct.connectdata** %13, align 8
  %688 = load i32, i32* %21, align 4
  %689 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 10
  %690 = load i32, i32* %26, align 4
  %691 = sub nsw i32 %690, 10
  %692 = call i32 @Curl_blockread_all(%struct.connectdata* %687, i32 %688, i8* %689, i32 %691, i32* %17)
  store i32 %692, i32* %19, align 4
  %693 = load i32, i32* %19, align 4
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %700, label %695

695:                                              ; preds = %686
  %696 = load i32, i32* %26, align 4
  %697 = sub nsw i32 %696, 10
  %698 = load i32, i32* %17, align 4
  %699 = icmp ne i32 %697, %698
  br i1 %699, label %700, label %704

700:                                              ; preds = %695, %686
  %701 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %702 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %701, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i64 0, i64 0))
  %703 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %703, i64* %7, align 8
  br label %725

704:                                              ; preds = %695
  br label %705

705:                                              ; preds = %704, %683
  %706 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 1
  %707 = load i8, i8* %706, align 1
  %708 = zext i8 %707 to i32
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %710, label %718

710:                                              ; preds = %705
  %711 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %712 = getelementptr inbounds [600 x i8], [600 x i8]* %15, i64 0, i64 0
  %713 = getelementptr inbounds [600 x i8], [600 x i8]* %14, i64 0, i64 1
  %714 = load i8, i8* %713, align 1
  %715 = zext i8 %714 to i32
  %716 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %711, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.33, i64 0, i64 0), i8* %712, i32 %715)
  %717 = load i64, i64* @CURLE_COULDNT_CONNECT, align 8
  store i64 %717, i64* %7, align 8
  br label %725

718:                                              ; preds = %705
  %719 = load %struct.Curl_easy*, %struct.Curl_easy** %22, align 8
  %720 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %719, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0))
  %721 = load i32, i32* %21, align 4
  %722 = load i32, i32* @TRUE, align 4
  %723 = call i32 @curlx_nonblock(i32 %721, i32 %722)
  %724 = load i64, i64* @CURLE_OK, align 8
  store i64 %724, i64* %7, align 8
  br label %725

725:                                              ; preds = %718, %710, %700, %660, %651, %635, %602, %519, %508, %450, %448, %426, %407, %398, %384, %355, %323, %275, %266, %247, %236, %227, %214, %133, %122, %113, %100
  %726 = load i64, i64* %7, align 8
  ret i64 %726
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strlen(i8*) #2

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, ...) #2

declare dso_local i64 @Curl_timeleft(%struct.Curl_easy*, i32*, i32) #2

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, ...) #2

declare dso_local i32 @curlx_nonblock(i32, i32) #2

declare dso_local i32 @SOCKET_WRITABLE(i32, i64) #2

declare dso_local i64 @Curl_write_plain(%struct.connectdata*, i32, i8*, i32, i32*) #2

declare dso_local i32 @SOCKET_READABLE(i32, i64) #2

declare dso_local i32 @Curl_blockread_all(%struct.connectdata*, i32, i8*, i32, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @msnprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @Curl_resolv(%struct.connectdata*, i8*, i32, i32, %struct.Curl_dns_entry**) #2

declare dso_local i64 @Curl_resolver_wait_resolv(%struct.connectdata*, %struct.Curl_dns_entry**) #2

declare dso_local i64 @Curl_printable_address(%struct.TYPE_13__*, i8*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @Curl_resolv_unlock(%struct.Curl_easy*, %struct.Curl_dns_entry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
