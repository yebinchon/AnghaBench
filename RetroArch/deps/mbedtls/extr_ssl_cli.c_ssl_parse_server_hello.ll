; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_parse_server_hello.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_parse_server_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i8*, i64, i64, i64, i32, i64, i64, i64, i64, %struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_24__*, i64, %struct.TYPE_23__* }
%struct.TYPE_26__ = type { i64, i64, i64, i64, i64, i64, i32**, i64, i64 }
%struct.TYPE_25__ = type { i32, i8, i64, i64, i32 }
%struct.TYPE_24__ = type { i64, i64, i64, i32* }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_28__ = type { i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"=> parse server hello\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"mbedtls_ssl_read_record\00", align 1
@MBEDTLS_SSL_MSG_HANDSHAKE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"bad server hello message\00", align 1
@MBEDTLS_SSL_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_HS_SERVER_HELLO = common dso_local global i8 0, align 1
@MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"server hello, version\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"server version out of bounds -  min: [%d:%d], server: [%d:%d], max: [%d:%d]\00", align 1
@MBEDTLS_SSL_ALERT_MSG_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_BAD_HS_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"server hello, random bytes\00", align 1
@MBEDTLS_SSL_COMPRESS_NULL = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"server hello, bad compression: %d\00", align 1
@MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"ciphersuite info for %04x not found\00", align 1
@MBEDTLS_SSL_ALERT_MSG_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"server hello, session id len.: %d\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"server hello, session id\00", align 1
@MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"mbedtls_ssl_derive_keys\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"%s session has been resumed\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"server hello, chosen ciphersuite: %04x\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"server hello, compress alg.: %d\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"server hello, chosen ciphersuite: %s\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"server hello, total extension length: %d\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"found renegotiation extension\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"unknown extension found: %d (ignoring)\00", align 1
@MBEDTLS_SSL_LEGACY_RENEGOTIATION = common dso_local global i64 0, align 8
@MBEDTLS_SSL_LEGACY_BREAK_HANDSHAKE = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [45 x i8] c"legacy renegotiation, breaking off handshake\00", align 1
@MBEDTLS_SSL_ALERT_MSG_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [22 x i8] c"<= parse server hello\00", align 1
@MBEDTLS_CIPHER_ARC4_128 = common dso_local global i64 0, align 8
@MBEDTLS_ERR_SSL_WAITING_SERVER_HELLO_RENEGO = common dso_local global i32 0, align 4
@MBEDTLS_SSL_COMPRESS_DEFLATE = common dso_local global i8 0, align 1
@MBEDTLS_SSL_HS_HELLO_VERIFY_REQUEST = common dso_local global i8 0, align 1
@MBEDTLS_SSL_INITIAL_HANDSHAKE = common dso_local global i64 0, align 8
@MBEDTLS_SSL_LEGACY_NO_RENEGOTIATION = common dso_local global i64 0, align 8
@MBEDTLS_SSL_RENEGOTIATION_IN_PROGRESS = common dso_local global i64 0, align 8
@MBEDTLS_SSL_SECURE_RENEGOTIATION = common dso_local global i64 0, align 8
@MBEDTLS_SSL_TRANSPORT_DATAGRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*)* @ssl_parse_server_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_server_hello(%struct.TYPE_27__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store i32 0, i32* %11, align 4
  %15 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %20 = call i32 @mbedtls_ssl_read_record(%struct.TYPE_27__* %19)
  store i32 %20, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %639

26:                                               ; preds = %1
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MBEDTLS_SSL_MSG_HANDSHAKE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %35 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %36 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE, align 4
  %37 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_27__* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE, align 4
  store i32 %38, i32* %2, align 4
  br label %639

39:                                               ; preds = %26
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %44 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_27__* %43)
  %45 = add nsw i64 38, %44
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @MBEDTLS_SSL_HS_SERVER_HELLO, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %47, %39
  %56 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %58 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %59 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %60 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_27__* %57, i32 %58, i32 %59)
  %61 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO, align 4
  store i32 %61, i32* %2, align 4
  br label %639

62:                                               ; preds = %47
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %64 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_27__* %63)
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 %64
  store i8* %66, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %68, i64 2)
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 6
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 7
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 9
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = call i32 @mbedtls_ssl_read_version(i64* %71, i64* %73, i64 %78, i8* %80)
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 9
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %84, %89
  br i1 %90, label %121, label %91

91:                                               ; preds = %62
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 7
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 9
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ult i64 %94, %99
  br i1 %100, label %121, label %101

101:                                              ; preds = %91
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 9
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %104, %109
  br i1 %110, label %121, label %111

111:                                              ; preds = %101
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 7
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 9
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = icmp ugt i64 %114, %119
  br i1 %120, label %121, label %155

121:                                              ; preds = %111, %101, %91, %62
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 9
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 9
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 6
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 7
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 9
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 9
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* %148)
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %151 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %152 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_PROTOCOL_VERSION, align 4
  %153 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_27__* %150, i32 %151, i32 %152)
  %154 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_PROTOCOL_VERSION, align 4
  store i32 %154, i32* %2, align 4
  br label %639

155:                                              ; preds = %111
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 11
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, 32
  %162 = load i8*, i8** %8, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 2
  %164 = call i32 @memcpy(i64 %161, i8* %163, i64 32)
  %165 = load i8*, i8** %8, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 34
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i64
  store i64 %168, i64* %6, align 8
  %169 = load i8*, i8** %8, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 2
  %171 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %170, i64 32)
  %172 = load i64, i64* %6, align 8
  %173 = icmp ugt i64 %172, 32
  br i1 %173, label %174, label %181

174:                                              ; preds = %155
  %175 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %177 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %178 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %179 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_27__* %176, i32 %177, i32 %178)
  %180 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO, align 4
  store i32 %180, i32* %2, align 4
  br label %639

181:                                              ; preds = %155
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %186 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_27__* %185)
  %187 = add nsw i64 %186, 39
  %188 = load i64, i64* %6, align 8
  %189 = add i64 %187, %188
  %190 = icmp ugt i64 %184, %189
  br i1 %190, label %191, label %232

191:                                              ; preds = %181
  %192 = load i8*, i8** %8, align 8
  %193 = load i64, i64* %6, align 8
  %194 = add i64 38, %193
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = shl i32 %197, 8
  %199 = load i8*, i8** %8, align 8
  %200 = load i64, i64* %6, align 8
  %201 = add i64 39, %200
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = or i32 %198, %204
  %206 = sext i32 %205 to i64
  store i64 %206, i64* %7, align 8
  %207 = load i64, i64* %7, align 8
  %208 = icmp ugt i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %191
  %210 = load i64, i64* %7, align 8
  %211 = icmp ult i64 %210, 4
  br i1 %211, label %224, label %212

212:                                              ; preds = %209, %191
  %213 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %213, i32 0, i32 5
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %217 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_27__* %216)
  %218 = add nsw i64 %217, 40
  %219 = load i64, i64* %6, align 8
  %220 = add i64 %218, %219
  %221 = load i64, i64* %7, align 8
  %222 = add i64 %220, %221
  %223 = icmp ne i64 %215, %222
  br i1 %223, label %224, label %231

224:                                              ; preds = %212, %209
  %225 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %227 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %228 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %229 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_27__* %226, i32 %227, i32 %228)
  %230 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO, align 4
  store i32 %230, i32* %2, align 4
  br label %639

231:                                              ; preds = %212
  br label %251

232:                                              ; preds = %181
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 5
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %237 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_27__* %236)
  %238 = add nsw i64 %237, 38
  %239 = load i64, i64* %6, align 8
  %240 = add i64 %238, %239
  %241 = icmp eq i64 %235, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %232
  store i64 0, i64* %7, align 8
  br label %250

243:                                              ; preds = %232
  %244 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %245 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %246 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %247 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %248 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_27__* %245, i32 %246, i32 %247)
  %249 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO, align 4
  store i32 %249, i32* %2, align 4
  br label %639

250:                                              ; preds = %242
  br label %251

251:                                              ; preds = %250, %231
  %252 = load i8*, i8** %8, align 8
  %253 = load i64, i64* %6, align 8
  %254 = add i64 35, %253
  %255 = getelementptr inbounds i8, i8* %252, i64 %254
  %256 = load i8, i8* %255, align 1
  %257 = zext i8 %256 to i32
  %258 = shl i32 %257, 8
  %259 = load i8*, i8** %8, align 8
  %260 = load i64, i64* %6, align 8
  %261 = add i64 36, %260
  %262 = getelementptr inbounds i8, i8* %259, i64 %261
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = or i32 %258, %264
  store i32 %265, i32* %5, align 4
  %266 = load i8*, i8** %8, align 8
  %267 = load i64, i64* %6, align 8
  %268 = add i64 37, %267
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i8, i8* %269, align 1
  store i8 %270, i8* %10, align 1
  %271 = load i8, i8* %10, align 1
  %272 = zext i8 %271 to i32
  %273 = load i8, i8* @MBEDTLS_SSL_COMPRESS_NULL, align 1
  %274 = zext i8 %273 to i32
  %275 = icmp ne i32 %272, %274
  br i1 %275, label %276, label %286

276:                                              ; preds = %251
  %277 = load i8, i8* %10, align 1
  %278 = zext i8 %277 to i64
  %279 = inttoptr i64 %278 to i8*
  %280 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* %279)
  %281 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %282 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %283 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER, align 4
  %284 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_27__* %281, i32 %282, i32 %283)
  %285 = load i32, i32* @MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE, align 4
  store i32 %285, i32* %2, align 4
  br label %639

286:                                              ; preds = %251
  %287 = load i32, i32* %5, align 4
  %288 = call i8* @mbedtls_ssl_ciphersuite_from_id(i32 %287)
  %289 = bitcast i8* %288 to i32*
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 13
  %292 = load %struct.TYPE_23__*, %struct.TYPE_23__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %292, i32 0, i32 0
  store i32* %289, i32** %293, align 8
  %294 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %294, i32 0, i32 13
  %296 = load %struct.TYPE_23__*, %struct.TYPE_23__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = icmp eq i32* %298, null
  br i1 %299, label %300, label %310

300:                                              ; preds = %286
  %301 = load i32, i32* %5, align 4
  %302 = sext i32 %301 to i64
  %303 = inttoptr i64 %302 to i8*
  %304 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* %303)
  %305 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %306 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %307 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_INTERNAL_ERROR, align 4
  %308 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_27__* %305, i32 %306, i32 %307)
  %309 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_INPUT_DATA, align 4
  store i32 %309, i32* %2, align 4
  br label %639

310:                                              ; preds = %286
  %311 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %312 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %312, i32 0, i32 13
  %314 = load %struct.TYPE_23__*, %struct.TYPE_23__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = call i32 @mbedtls_ssl_optimize_checksum(%struct.TYPE_27__* %311, i32* %316)
  %318 = load i64, i64* %6, align 8
  %319 = inttoptr i64 %318 to i8*
  %320 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %319)
  %321 = load i8*, i8** %8, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 35
  %323 = load i64, i64* %6, align 8
  %324 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %322, i64 %323)
  %325 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %325, i32 0, i32 11
  %327 = load %struct.TYPE_24__*, %struct.TYPE_24__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %371, label %331

331:                                              ; preds = %310
  %332 = load i64, i64* %6, align 8
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %371, label %334

334:                                              ; preds = %331
  %335 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %335, i32 0, i32 10
  %337 = load %struct.TYPE_25__*, %struct.TYPE_25__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* %5, align 4
  %341 = icmp ne i32 %339, %340
  br i1 %341, label %371, label %342

342:                                              ; preds = %334
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %343, i32 0, i32 10
  %345 = load %struct.TYPE_25__*, %struct.TYPE_25__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %345, i32 0, i32 1
  %347 = load i8, i8* %346, align 4
  %348 = zext i8 %347 to i32
  %349 = load i8, i8* %10, align 1
  %350 = zext i8 %349 to i32
  %351 = icmp ne i32 %348, %350
  br i1 %351, label %371, label %352

352:                                              ; preds = %342
  %353 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %353, i32 0, i32 10
  %355 = load %struct.TYPE_25__*, %struct.TYPE_25__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %355, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* %6, align 8
  %359 = icmp ne i64 %357, %358
  br i1 %359, label %371, label %360

360:                                              ; preds = %352
  %361 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %361, i32 0, i32 10
  %363 = load %struct.TYPE_25__*, %struct.TYPE_25__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %363, i32 0, i32 3
  %365 = load i64, i64* %364, align 8
  %366 = load i8*, i8** %8, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 35
  %368 = load i64, i64* %6, align 8
  %369 = call i64 @memcmp(i64 %365, i8* %367, i64 %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %404

371:                                              ; preds = %360, %352, %342, %334, %331, %310
  %372 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %373 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %372, i32 0, i32 12
  %374 = load i64, i64* %373, align 8
  %375 = add nsw i64 %374, 1
  store i64 %375, i64* %373, align 8
  %376 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %376, i32 0, i32 11
  %378 = load %struct.TYPE_24__*, %struct.TYPE_24__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %378, i32 0, i32 0
  store i64 0, i64* %379, align 8
  %380 = load i32, i32* %5, align 4
  %381 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %381, i32 0, i32 10
  %383 = load %struct.TYPE_25__*, %struct.TYPE_25__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %383, i32 0, i32 0
  store i32 %380, i32* %384, align 8
  %385 = load i8, i8* %10, align 1
  %386 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %386, i32 0, i32 10
  %388 = load %struct.TYPE_25__*, %struct.TYPE_25__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %388, i32 0, i32 1
  store i8 %385, i8* %389, align 4
  %390 = load i64, i64* %6, align 8
  %391 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %391, i32 0, i32 10
  %393 = load %struct.TYPE_25__*, %struct.TYPE_25__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %393, i32 0, i32 2
  store i64 %390, i64* %394, align 8
  %395 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %396 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %395, i32 0, i32 10
  %397 = load %struct.TYPE_25__*, %struct.TYPE_25__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %397, i32 0, i32 3
  %399 = load i64, i64* %398, align 8
  %400 = load i8*, i8** %8, align 8
  %401 = getelementptr inbounds i8, i8* %400, i64 35
  %402 = load i64, i64* %6, align 8
  %403 = call i32 @memcpy(i64 %399, i8* %401, i64 %402)
  br label %420

404:                                              ; preds = %360
  %405 = load i64, i64* @MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC, align 8
  %406 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %407 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %406, i32 0, i32 12
  store i64 %405, i64* %407, align 8
  %408 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %409 = call i32 @mbedtls_ssl_derive_keys(%struct.TYPE_27__* %408)
  store i32 %409, i32* %4, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %419

411:                                              ; preds = %404
  %412 = load i32, i32* %4, align 4
  %413 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %412)
  %414 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %415 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %416 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_INTERNAL_ERROR, align 4
  %417 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_27__* %414, i32 %415, i32 %416)
  %418 = load i32, i32* %4, align 4
  store i32 %418, i32* %2, align 4
  br label %639

419:                                              ; preds = %404
  br label %420

420:                                              ; preds = %419, %371
  %421 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %422 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %421, i32 0, i32 11
  %423 = load %struct.TYPE_24__*, %struct.TYPE_24__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %425, 0
  %427 = zext i1 %426 to i64
  %428 = select i1 %426, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)
  %429 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %428)
  %430 = load i32, i32* %5, align 4
  %431 = sext i32 %430 to i64
  %432 = inttoptr i64 %431 to i8*
  %433 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %432)
  %434 = load i8*, i8** %8, align 8
  %435 = load i64, i64* %6, align 8
  %436 = add i64 37, %435
  %437 = getelementptr inbounds i8, i8* %434, i64 %436
  %438 = load i8, i8* %437, align 1
  %439 = zext i8 %438 to i64
  %440 = inttoptr i64 %439 to i8*
  %441 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %440)
  %442 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %443 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %442, i32 0, i32 10
  %444 = load %struct.TYPE_25__*, %struct.TYPE_25__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = call i8* @mbedtls_ssl_ciphersuite_from_id(i32 %446)
  %448 = bitcast i8* %447 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %448, %struct.TYPE_28__** %12, align 8
  %449 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %450 = icmp eq %struct.TYPE_28__* %449, null
  br i1 %450, label %451, label %458

451:                                              ; preds = %420
  %452 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %453 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %454 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %455 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER, align 4
  %456 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_27__* %453, i32 %454, i32 %455)
  %457 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO, align 4
  store i32 %457, i32* %2, align 4
  br label %639

458:                                              ; preds = %420
  %459 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %460 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 8
  %462 = sext i32 %461 to i64
  %463 = inttoptr i64 %462 to i8*
  %464 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %463)
  store i32 0, i32* %5, align 4
  br label %465

465:                                              ; preds = %458, %511
  %466 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %467 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %466, i32 0, i32 9
  %468 = load %struct.TYPE_26__*, %struct.TYPE_26__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %468, i32 0, i32 6
  %470 = load i32**, i32*** %469, align 8
  %471 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %472 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %471, i32 0, i32 7
  %473 = load i64, i64* %472, align 8
  %474 = getelementptr inbounds i32*, i32** %470, i64 %473
  %475 = load i32*, i32** %474, align 8
  %476 = load i32, i32* %5, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %475, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %488

481:                                              ; preds = %465
  %482 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %483 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %484 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %485 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER, align 4
  %486 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_27__* %483, i32 %484, i32 %485)
  %487 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO, align 4
  store i32 %487, i32* %2, align 4
  br label %639

488:                                              ; preds = %465
  %489 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %490 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %489, i32 0, i32 9
  %491 = load %struct.TYPE_26__*, %struct.TYPE_26__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %491, i32 0, i32 6
  %493 = load i32**, i32*** %492, align 8
  %494 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %495 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %494, i32 0, i32 7
  %496 = load i64, i64* %495, align 8
  %497 = getelementptr inbounds i32*, i32** %493, i64 %496
  %498 = load i32*, i32** %497, align 8
  %499 = load i32, i32* %5, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %5, align 4
  %501 = sext i32 %499 to i64
  %502 = getelementptr inbounds i32, i32* %498, i64 %501
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %505 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %504, i32 0, i32 10
  %506 = load %struct.TYPE_25__*, %struct.TYPE_25__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = icmp eq i32 %503, %508
  br i1 %509, label %510, label %511

510:                                              ; preds = %488
  br label %512

511:                                              ; preds = %488
  br label %465

512:                                              ; preds = %510
  %513 = load i8, i8* %10, align 1
  %514 = zext i8 %513 to i32
  %515 = load i8, i8* @MBEDTLS_SSL_COMPRESS_NULL, align 1
  %516 = zext i8 %515 to i32
  %517 = icmp ne i32 %514, %516
  br i1 %517, label %518, label %525

518:                                              ; preds = %512
  %519 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %520 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %521 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %522 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER, align 4
  %523 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_27__* %520, i32 %521, i32 %522)
  %524 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO, align 4
  store i32 %524, i32* %2, align 4
  br label %639

525:                                              ; preds = %512
  %526 = load i8, i8* %10, align 1
  %527 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %528 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %527, i32 0, i32 10
  %529 = load %struct.TYPE_25__*, %struct.TYPE_25__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %529, i32 0, i32 1
  store i8 %526, i8* %530, align 4
  %531 = load i8*, i8** %8, align 8
  %532 = getelementptr inbounds i8, i8* %531, i64 40
  %533 = load i64, i64* %6, align 8
  %534 = getelementptr inbounds i8, i8* %532, i64 %533
  store i8* %534, i8** %9, align 8
  %535 = load i64, i64* %7, align 8
  %536 = inttoptr i64 %535 to i8*
  %537 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* %536)
  br label %538

538:                                              ; preds = %611, %525
  %539 = load i64, i64* %7, align 8
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %541, label %612

541:                                              ; preds = %538
  %542 = load i8*, i8** %9, align 8
  %543 = getelementptr inbounds i8, i8* %542, i64 0
  %544 = load i8, i8* %543, align 1
  %545 = zext i8 %544 to i32
  %546 = shl i32 %545, 8
  %547 = load i8*, i8** %9, align 8
  %548 = getelementptr inbounds i8, i8* %547, i64 1
  %549 = load i8, i8* %548, align 1
  %550 = zext i8 %549 to i32
  %551 = or i32 %546, %550
  store i32 %551, i32* %13, align 4
  %552 = load i8*, i8** %9, align 8
  %553 = getelementptr inbounds i8, i8* %552, i64 2
  %554 = load i8, i8* %553, align 1
  %555 = zext i8 %554 to i32
  %556 = shl i32 %555, 8
  %557 = load i8*, i8** %9, align 8
  %558 = getelementptr inbounds i8, i8* %557, i64 3
  %559 = load i8, i8* %558, align 1
  %560 = zext i8 %559 to i32
  %561 = or i32 %556, %560
  store i32 %561, i32* %14, align 4
  %562 = load i32, i32* %14, align 4
  %563 = add i32 %562, 4
  %564 = zext i32 %563 to i64
  %565 = load i64, i64* %7, align 8
  %566 = icmp ugt i64 %564, %565
  br i1 %566, label %567, label %574

567:                                              ; preds = %541
  %568 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %569 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %570 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %571 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %572 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_27__* %569, i32 %570, i32 %571)
  %573 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO, align 4
  store i32 %573, i32* %2, align 4
  br label %639

574:                                              ; preds = %541
  %575 = load i32, i32* %13, align 4
  switch i32 %575, label %587 [
    i32 131, label %576
  ]

576:                                              ; preds = %574
  %577 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  %578 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %579 = load i8*, i8** %9, align 8
  %580 = getelementptr inbounds i8, i8* %579, i64 4
  %581 = load i32, i32* %14, align 4
  %582 = call i32 @ssl_parse_renegotiation_info(%struct.TYPE_27__* %578, i8* %580, i32 %581)
  store i32 %582, i32* %4, align 4
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %584, label %586

584:                                              ; preds = %576
  %585 = load i32, i32* %4, align 4
  store i32 %585, i32* %2, align 4
  br label %639

586:                                              ; preds = %576
  br label %592

587:                                              ; preds = %574
  %588 = load i32, i32* %13, align 4
  %589 = zext i32 %588 to i64
  %590 = inttoptr i64 %589 to i8*
  %591 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %590)
  br label %592

592:                                              ; preds = %587, %586
  %593 = load i32, i32* %14, align 4
  %594 = add i32 4, %593
  %595 = zext i32 %594 to i64
  %596 = load i64, i64* %7, align 8
  %597 = sub i64 %596, %595
  store i64 %597, i64* %7, align 8
  %598 = load i32, i32* %14, align 4
  %599 = add i32 4, %598
  %600 = load i8*, i8** %9, align 8
  %601 = zext i32 %599 to i64
  %602 = getelementptr inbounds i8, i8* %600, i64 %601
  store i8* %602, i8** %9, align 8
  %603 = load i64, i64* %7, align 8
  %604 = icmp ugt i64 %603, 0
  br i1 %604, label %605, label %611

605:                                              ; preds = %592
  %606 = load i64, i64* %7, align 8
  %607 = icmp ult i64 %606, 4
  br i1 %607, label %608, label %611

608:                                              ; preds = %605
  %609 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %610 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO, align 4
  store i32 %610, i32* %2, align 4
  br label %639

611:                                              ; preds = %605, %592
  br label %538

612:                                              ; preds = %538
  %613 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %614 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %613, i32 0, i32 8
  %615 = load i64, i64* %614, align 8
  %616 = load i64, i64* @MBEDTLS_SSL_LEGACY_RENEGOTIATION, align 8
  %617 = icmp eq i64 %615, %616
  br i1 %617, label %618, label %628

618:                                              ; preds = %612
  %619 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %620 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %619, i32 0, i32 9
  %621 = load %struct.TYPE_26__*, %struct.TYPE_26__** %620, align 8
  %622 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %621, i32 0, i32 7
  %623 = load i64, i64* %622, align 8
  %624 = load i64, i64* @MBEDTLS_SSL_LEGACY_BREAK_HANDSHAKE, align 8
  %625 = icmp eq i64 %623, %624
  br i1 %625, label %626, label %628

626:                                              ; preds = %618
  %627 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %628

628:                                              ; preds = %626, %618, %612
  %629 = load i32, i32* %11, align 4
  %630 = icmp eq i32 %629, 1
  br i1 %630, label %631, label %637

631:                                              ; preds = %628
  %632 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %633 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %634 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_HANDSHAKE_FAILURE, align 4
  %635 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_27__* %632, i32 %633, i32 %634)
  %636 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO, align 4
  store i32 %636, i32* %2, align 4
  br label %639

637:                                              ; preds = %628
  %638 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %639

639:                                              ; preds = %637, %631, %608, %584, %567, %518, %481, %451, %411, %300, %276, %243, %224, %174, %121, %55, %32, %22
  %640 = load i32, i32* %2, align 4
  ret i32 %640
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_read_record(%struct.TYPE_27__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_RET(i32, i8*, i32) #1

declare dso_local i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i64 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_27__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_BUF(i32, i8*, i8*, i64) #1

declare dso_local i32 @mbedtls_ssl_read_version(i64*, i64*, i64, i8*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i8* @mbedtls_ssl_ciphersuite_from_id(i32) #1

declare dso_local i32 @mbedtls_ssl_optimize_checksum(%struct.TYPE_27__*, i32*) #1

declare dso_local i64 @memcmp(i64, i8*, i64) #1

declare dso_local i32 @mbedtls_ssl_derive_keys(%struct.TYPE_27__*) #1

declare dso_local i32 @ssl_parse_renegotiation_info(%struct.TYPE_27__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
