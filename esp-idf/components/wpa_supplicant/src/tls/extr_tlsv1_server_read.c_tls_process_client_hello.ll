; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_read.c_tls_process_client_hello.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_read.c_tls_process_client_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, i64*, i64, i32*, i32, i64*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"TLSv1: Expected Handshake; received content type 0x%x\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@TLS_HANDSHAKE_TYPE_CLIENT_HELLO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"TLSv1: Received unexpected handshake message %d (expected ClientHello)\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"TLSv1: Received ClientHello\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"TLSv1: ClientHello\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"TLSv1: Client version %d.%d\00", align 1
@TLS_VERSION_1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"TLSv1: Unexpected protocol version in ClientHello %u.%u\00", align 1
@TLS_ALERT_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@TLS_VERSION = common dso_local global i32 0, align 4
@TLS_VERSION_1_1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"TLSv1: Using TLS v%s\00", align 1
@TLS_RANDOM_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"TLSv1: client_random\00", align 1
@TLS_SESSION_ID_MAX_LEN = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"TLSv1: client session_id\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"TLSv1: client cipher suites\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [43 x i8] c"TLSv1: No supported cipher suite available\00", align 1
@TLS_ALERT_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [50 x i8] c"TLSv1: Failed to set CipherSuite for record layer\00", align 1
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"TLSv1: client compression_methods\00", align 1
@TLS_COMPRESSION_NULL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [47 x i8] c"TLSv1: Client does not accept NULL compression\00", align 1
@.str.14 = private unnamed_addr constant [64 x i8] c"TLSv1: Unexpected extra octet in the end of ClientHello: 0x%02x\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"TLSv1: %u bytes of ClientHello extensions\00", align 1
@.str.16 = private unnamed_addr constant [66 x i8] c"TLSv1: Invalid ClientHello extension list length %u (expected %u)\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"TLSv1: Invalid extension_type field\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"TLSv1: Invalid extension_data length field\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"TLSv1: Invalid extension_data field\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"TLSv1: ClientHello Extension type %u\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"TLSv1: ClientHello Extension data\00", align 1
@TLS_EXT_SESSION_TICKET = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [47 x i8] c"TLSv1: ClientHello OK - proceed to ServerHello\00", align 1
@SERVER_HELLO = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [36 x i8] c"TLSv1: Failed to decode ClientHello\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@TLS_VERSION_1_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i64, i64*, i64*)* @tls_process_client_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_client_hello(%struct.tlsv1_server* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tlsv1_server*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @TLS_CONTENT_TYPE_HANDSHAKE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %31 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %32 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %33 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %30, i32 %31, i32 %32)
  store i32 -1, i32* %5, align 4
  br label %557

34:                                               ; preds = %4
  %35 = load i64*, i64** %8, align 8
  store i64* %35, i64** %10, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %13, align 8
  %39 = icmp ult i64 %38, 4
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %550

41:                                               ; preds = %34
  %42 = load i64*, i64** %10, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TLS_HANDSHAKE_TYPE_CLIENT_HELLO, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = load i64*, i64** %10, align 8
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %52 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %53 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %54 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %51, i32 %52, i32 %53)
  store i32 -1, i32* %5, align 4
  br label %557

55:                                               ; preds = %41
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = call i32 (i32, i8*, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i64*, i64** %10, align 8
  %59 = getelementptr inbounds i64, i64* %58, i32 1
  store i64* %59, i64** %10, align 8
  %60 = load i64*, i64** %10, align 8
  %61 = call i64 @WPA_GET_BE24(i64* %60)
  store i64 %61, i64* %14, align 8
  %62 = load i64*, i64** %10, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 3
  store i64* %63, i64** %10, align 8
  %64 = load i64, i64* %13, align 8
  %65 = sub i64 %64, 4
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %13, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %550

70:                                               ; preds = %55
  %71 = load i32, i32* @MSG_MSGDUMP, align 4
  %72 = load i64*, i64** %10, align 8
  %73 = load i64, i64* %14, align 8
  %74 = call i32 @wpa_hexdump(i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64* %72, i64 %73)
  %75 = load i64*, i64** %10, align 8
  %76 = load i64, i64* %14, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  store i64* %77, i64** %11, align 8
  %78 = load i64*, i64** %11, align 8
  %79 = load i64*, i64** %10, align 8
  %80 = ptrtoint i64* %78 to i64
  %81 = ptrtoint i64* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 8
  %84 = icmp slt i64 %83, 2
  br i1 %84, label %85, label %86

85:                                               ; preds = %70
  br label %550

86:                                               ; preds = %70
  %87 = load i64*, i64** %10, align 8
  %88 = call i8* @WPA_GET_BE16(i64* %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %91 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %94 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = ashr i32 %95, 8
  %97 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %98 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, 255
  %101 = call i32 (i32, i8*, ...) @wpa_printf(i32 %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %96, i32 %100)
  %102 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %103 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @TLS_VERSION_1, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %86
  %108 = load i32, i32* @MSG_DEBUG, align 4
  %109 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %110 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = ashr i32 %111, 8
  %113 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %114 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, 255
  %117 = call i32 (i32, i8*, ...) @wpa_printf(i32 %108, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %112, i32 %116)
  %118 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %119 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %120 = load i32, i32* @TLS_ALERT_PROTOCOL_VERSION, align 4
  %121 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %118, i32 %119, i32 %120)
  store i32 -1, i32* %5, align 4
  br label %557

122:                                              ; preds = %86
  %123 = load i64*, i64** %10, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 2
  store i64* %124, i64** %10, align 8
  %125 = load i32, i32* @TLS_VERSION, align 4
  %126 = load i32, i32* @TLS_VERSION_1, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load i32, i32* @TLS_VERSION_1, align 4
  %130 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %131 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %130, i32 0, i32 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  br label %152

133:                                              ; preds = %122
  %134 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %135 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @TLS_VERSION_1_1, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load i32, i32* @TLS_VERSION_1_1, align 4
  %141 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %142 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %141, i32 0, i32 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 8
  br label %151

144:                                              ; preds = %133
  %145 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %146 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %149 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %148, i32 0, i32 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  br label %151

151:                                              ; preds = %144, %139
  br label %152

152:                                              ; preds = %151, %128
  %153 = load i32, i32* @MSG_DEBUG, align 4
  %154 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %155 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %154, i32 0, i32 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @tls_version_str(i32 %157)
  %159 = call i32 (i32, i8*, ...) @wpa_printf(i32 %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %158)
  %160 = load i64*, i64** %11, align 8
  %161 = load i64*, i64** %10, align 8
  %162 = ptrtoint i64* %160 to i64
  %163 = ptrtoint i64* %161 to i64
  %164 = sub i64 %162, %163
  %165 = sdiv exact i64 %164, 8
  %166 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %167 = sext i32 %166 to i64
  %168 = icmp slt i64 %165, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %152
  br label %550

170:                                              ; preds = %152
  %171 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %172 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %171, i32 0, i32 1
  %173 = load i64*, i64** %172, align 8
  %174 = load i64*, i64** %10, align 8
  %175 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %176 = call i32 @os_memcpy(i64* %173, i64* %174, i32 %175)
  %177 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %178 = load i64*, i64** %10, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  store i64* %180, i64** %10, align 8
  %181 = load i32, i32* @MSG_MSGDUMP, align 4
  %182 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %183 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %182, i32 0, i32 1
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %186 = sext i32 %185 to i64
  %187 = call i32 @wpa_hexdump(i32 %181, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i64* %184, i64 %186)
  %188 = load i64*, i64** %11, align 8
  %189 = load i64*, i64** %10, align 8
  %190 = ptrtoint i64* %188 to i64
  %191 = ptrtoint i64* %189 to i64
  %192 = sub i64 %190, %191
  %193 = sdiv exact i64 %192, 8
  %194 = icmp slt i64 %193, 1
  br i1 %194, label %195, label %196

195:                                              ; preds = %170
  br label %550

196:                                              ; preds = %170
  %197 = load i64*, i64** %11, align 8
  %198 = load i64*, i64** %10, align 8
  %199 = ptrtoint i64* %197 to i64
  %200 = ptrtoint i64* %198 to i64
  %201 = sub i64 %199, %200
  %202 = sdiv exact i64 %201, 8
  %203 = load i64*, i64** %10, align 8
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 1, %204
  %206 = icmp slt i64 %202, %205
  br i1 %206, label %212, label %207

207:                                              ; preds = %196
  %208 = load i64*, i64** %10, align 8
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @TLS_SESSION_ID_MAX_LEN, align 8
  %211 = icmp sgt i64 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %207, %196
  br label %550

213:                                              ; preds = %207
  %214 = load i32, i32* @MSG_MSGDUMP, align 4
  %215 = load i64*, i64** %10, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 1
  %217 = load i64*, i64** %10, align 8
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @wpa_hexdump(i32 %214, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i64* %216, i64 %218)
  %220 = load i64*, i64** %10, align 8
  %221 = load i64, i64* %220, align 8
  %222 = add nsw i64 1, %221
  %223 = load i64*, i64** %10, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 %222
  store i64* %224, i64** %10, align 8
  %225 = load i64*, i64** %11, align 8
  %226 = load i64*, i64** %10, align 8
  %227 = ptrtoint i64* %225 to i64
  %228 = ptrtoint i64* %226 to i64
  %229 = sub i64 %227, %228
  %230 = sdiv exact i64 %229, 8
  %231 = icmp slt i64 %230, 2
  br i1 %231, label %232, label %233

232:                                              ; preds = %213
  br label %550

233:                                              ; preds = %213
  %234 = load i64*, i64** %10, align 8
  %235 = call i8* @WPA_GET_BE16(i64* %234)
  %236 = ptrtoint i8* %235 to i32
  store i32 %236, i32* %18, align 4
  %237 = load i64*, i64** %10, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 2
  store i64* %238, i64** %10, align 8
  %239 = load i64*, i64** %11, align 8
  %240 = load i64*, i64** %10, align 8
  %241 = ptrtoint i64* %239 to i64
  %242 = ptrtoint i64* %240 to i64
  %243 = sub i64 %241, %242
  %244 = sdiv exact i64 %243, 8
  %245 = load i32, i32* %18, align 4
  %246 = sext i32 %245 to i64
  %247 = icmp slt i64 %244, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %233
  br label %550

249:                                              ; preds = %233
  %250 = load i32, i32* @MSG_MSGDUMP, align 4
  %251 = load i64*, i64** %10, align 8
  %252 = load i32, i32* %18, align 4
  %253 = sext i32 %252 to i64
  %254 = call i32 @wpa_hexdump(i32 %250, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i64* %251, i64 %253)
  %255 = load i32, i32* %18, align 4
  %256 = and i32 %255, 1
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %249
  br label %550

259:                                              ; preds = %249
  %260 = load i32, i32* %18, align 4
  %261 = sdiv i32 %260, 2
  store i32 %261, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i64 0, i64* %15, align 8
  br label %262

262:                                              ; preds = %304, %259
  %263 = load i32, i32* %17, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %271, label %265

265:                                              ; preds = %262
  %266 = load i64, i64* %15, align 8
  %267 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %268 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = icmp ult i64 %266, %269
  br label %271

271:                                              ; preds = %265, %262
  %272 = phi i1 [ false, %262 ], [ %270, %265 ]
  br i1 %272, label %273, label %307

273:                                              ; preds = %271
  %274 = load i64*, i64** %10, align 8
  store i64* %274, i64** %12, align 8
  store i64 0, i64* %16, align 8
  br label %275

275:                                              ; preds = %300, %273
  %276 = load i64, i64* %16, align 8
  %277 = load i32, i32* %18, align 4
  %278 = sext i32 %277 to i64
  %279 = icmp ult i64 %276, %278
  br i1 %279, label %280, label %303

280:                                              ; preds = %275
  %281 = load i64*, i64** %12, align 8
  %282 = call i8* @WPA_GET_BE16(i64* %281)
  %283 = ptrtoint i8* %282 to i32
  store i32 %283, i32* %22, align 4
  %284 = load i64*, i64** %12, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 2
  store i64* %285, i64** %12, align 8
  %286 = load i32, i32* %17, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %299, label %288

288:                                              ; preds = %280
  %289 = load i32, i32* %22, align 4
  %290 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %291 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %290, i32 0, i32 3
  %292 = load i32*, i32** %291, align 8
  %293 = load i64, i64* %15, align 8
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = icmp eq i32 %289, %295
  br i1 %296, label %297, label %299

297:                                              ; preds = %288
  %298 = load i32, i32* %22, align 4
  store i32 %298, i32* %17, align 4
  br label %303

299:                                              ; preds = %288, %280
  br label %300

300:                                              ; preds = %299
  %301 = load i64, i64* %16, align 8
  %302 = add i64 %301, 1
  store i64 %302, i64* %16, align 8
  br label %275

303:                                              ; preds = %297, %275
  br label %304

304:                                              ; preds = %303
  %305 = load i64, i64* %15, align 8
  %306 = add i64 %305, 1
  store i64 %306, i64* %15, align 8
  br label %262

307:                                              ; preds = %271
  %308 = load i32, i32* %18, align 4
  %309 = mul nsw i32 %308, 2
  %310 = load i64*, i64** %10, align 8
  %311 = sext i32 %309 to i64
  %312 = getelementptr inbounds i64, i64* %310, i64 %311
  store i64* %312, i64** %10, align 8
  %313 = load i32, i32* %17, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %322, label %315

315:                                              ; preds = %307
  %316 = load i32, i32* @MSG_INFO, align 4
  %317 = call i32 (i32, i8*, ...) @wpa_printf(i32 %316, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %318 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %319 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %320 = load i32, i32* @TLS_ALERT_ILLEGAL_PARAMETER, align 4
  %321 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %318, i32 %319, i32 %320)
  store i32 -1, i32* %5, align 4
  br label %557

322:                                              ; preds = %307
  %323 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %324 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %323, i32 0, i32 8
  %325 = load i32, i32* %17, align 4
  %326 = call i64 @tlsv1_record_set_cipher_suite(%struct.TYPE_2__* %324, i32 %325)
  %327 = icmp slt i64 %326, 0
  br i1 %327, label %328, label %335

328:                                              ; preds = %322
  %329 = load i32, i32* @MSG_DEBUG, align 4
  %330 = call i32 (i32, i8*, ...) @wpa_printf(i32 %329, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  %331 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %332 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %333 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %334 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %331, i32 %332, i32 %333)
  store i32 -1, i32* %5, align 4
  br label %557

335:                                              ; preds = %322
  %336 = load i32, i32* %17, align 4
  %337 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %338 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %337, i32 0, i32 4
  store i32 %336, i32* %338, align 8
  %339 = load i64*, i64** %11, align 8
  %340 = load i64*, i64** %10, align 8
  %341 = ptrtoint i64* %339 to i64
  %342 = ptrtoint i64* %340 to i64
  %343 = sub i64 %341, %342
  %344 = sdiv exact i64 %343, 8
  %345 = icmp slt i64 %344, 1
  br i1 %345, label %346, label %347

346:                                              ; preds = %335
  br label %550

347:                                              ; preds = %335
  %348 = load i64*, i64** %10, align 8
  %349 = getelementptr inbounds i64, i64* %348, i32 1
  store i64* %349, i64** %10, align 8
  %350 = load i64, i64* %348, align 8
  %351 = trunc i64 %350 to i32
  store i32 %351, i32* %18, align 4
  %352 = load i64*, i64** %11, align 8
  %353 = load i64*, i64** %10, align 8
  %354 = ptrtoint i64* %352 to i64
  %355 = ptrtoint i64* %353 to i64
  %356 = sub i64 %354, %355
  %357 = sdiv exact i64 %356, 8
  %358 = load i32, i32* %18, align 4
  %359 = sext i32 %358 to i64
  %360 = icmp slt i64 %357, %359
  br i1 %360, label %361, label %362

361:                                              ; preds = %347
  br label %550

362:                                              ; preds = %347
  %363 = load i32, i32* @MSG_MSGDUMP, align 4
  %364 = load i64*, i64** %10, align 8
  %365 = load i32, i32* %18, align 4
  %366 = sext i32 %365 to i64
  %367 = call i32 @wpa_hexdump(i32 %363, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i64* %364, i64 %366)
  store i32 0, i32* %19, align 4
  store i64 0, i64* %15, align 8
  br label %368

368:                                              ; preds = %382, %362
  %369 = load i64, i64* %15, align 8
  %370 = load i32, i32* %18, align 4
  %371 = sext i32 %370 to i64
  %372 = icmp ult i64 %369, %371
  br i1 %372, label %373, label %385

373:                                              ; preds = %368
  %374 = load i64*, i64** %10, align 8
  %375 = getelementptr inbounds i64, i64* %374, i32 1
  store i64* %375, i64** %10, align 8
  %376 = load i64, i64* %374, align 8
  %377 = load i32, i32* @TLS_COMPRESSION_NULL, align 4
  %378 = sext i32 %377 to i64
  %379 = icmp eq i64 %376, %378
  br i1 %379, label %380, label %381

380:                                              ; preds = %373
  store i32 1, i32* %19, align 4
  br label %381

381:                                              ; preds = %380, %373
  br label %382

382:                                              ; preds = %381
  %383 = load i64, i64* %15, align 8
  %384 = add i64 %383, 1
  store i64 %384, i64* %15, align 8
  br label %368

385:                                              ; preds = %368
  %386 = load i32, i32* %19, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %395, label %388

388:                                              ; preds = %385
  %389 = load i32, i32* @MSG_INFO, align 4
  %390 = call i32 (i32, i8*, ...) @wpa_printf(i32 %389, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0))
  %391 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %392 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %393 = load i32, i32* @TLS_ALERT_ILLEGAL_PARAMETER, align 4
  %394 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %391, i32 %392, i32 %393)
  store i32 -1, i32* %5, align 4
  br label %557

395:                                              ; preds = %385
  %396 = load i64*, i64** %11, align 8
  %397 = load i64*, i64** %10, align 8
  %398 = ptrtoint i64* %396 to i64
  %399 = ptrtoint i64* %397 to i64
  %400 = sub i64 %398, %399
  %401 = sdiv exact i64 %400, 8
  %402 = icmp eq i64 %401, 1
  br i1 %402, label %403, label %408

403:                                              ; preds = %395
  %404 = load i32, i32* @MSG_DEBUG, align 4
  %405 = load i64*, i64** %10, align 8
  %406 = load i64, i64* %405, align 8
  %407 = call i32 (i32, i8*, ...) @wpa_printf(i32 %404, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.14, i64 0, i64 0), i64 %406)
  br label %550

408:                                              ; preds = %395
  %409 = load i64*, i64** %11, align 8
  %410 = load i64*, i64** %10, align 8
  %411 = ptrtoint i64* %409 to i64
  %412 = ptrtoint i64* %410 to i64
  %413 = sub i64 %411, %412
  %414 = sdiv exact i64 %413, 8
  %415 = icmp sge i64 %414, 2
  br i1 %415, label %416, label %537

416:                                              ; preds = %408
  %417 = load i64*, i64** %10, align 8
  %418 = call i8* @WPA_GET_BE16(i64* %417)
  %419 = ptrtoint i8* %418 to i32
  store i32 %419, i32* %21, align 4
  %420 = load i64*, i64** %10, align 8
  %421 = getelementptr inbounds i64, i64* %420, i64 2
  store i64* %421, i64** %10, align 8
  %422 = load i32, i32* @MSG_DEBUG, align 4
  %423 = load i32, i32* %21, align 4
  %424 = call i32 (i32, i8*, ...) @wpa_printf(i32 %422, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 %423)
  %425 = load i64*, i64** %11, align 8
  %426 = load i64*, i64** %10, align 8
  %427 = ptrtoint i64* %425 to i64
  %428 = ptrtoint i64* %426 to i64
  %429 = sub i64 %427, %428
  %430 = sdiv exact i64 %429, 8
  %431 = load i32, i32* %21, align 4
  %432 = sext i32 %431 to i64
  %433 = icmp ne i64 %430, %432
  br i1 %433, label %434, label %445

434:                                              ; preds = %416
  %435 = load i32, i32* @MSG_DEBUG, align 4
  %436 = load i32, i32* %21, align 4
  %437 = load i64*, i64** %11, align 8
  %438 = load i64*, i64** %10, align 8
  %439 = ptrtoint i64* %437 to i64
  %440 = ptrtoint i64* %438 to i64
  %441 = sub i64 %439, %440
  %442 = sdiv exact i64 %441, 8
  %443 = trunc i64 %442 to i32
  %444 = call i32 (i32, i8*, ...) @wpa_printf(i32 %435, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.16, i64 0, i64 0), i32 %436, i32 %443)
  br label %550

445:                                              ; preds = %416
  br label %446

446:                                              ; preds = %531, %445
  %447 = load i64*, i64** %10, align 8
  %448 = load i64*, i64** %11, align 8
  %449 = icmp ult i64* %447, %448
  br i1 %449, label %450, label %536

450:                                              ; preds = %446
  %451 = load i64*, i64** %11, align 8
  %452 = load i64*, i64** %10, align 8
  %453 = ptrtoint i64* %451 to i64
  %454 = ptrtoint i64* %452 to i64
  %455 = sub i64 %453, %454
  %456 = sdiv exact i64 %455, 8
  %457 = icmp slt i64 %456, 2
  br i1 %457, label %458, label %461

458:                                              ; preds = %450
  %459 = load i32, i32* @MSG_DEBUG, align 4
  %460 = call i32 (i32, i8*, ...) @wpa_printf(i32 %459, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0))
  br label %550

461:                                              ; preds = %450
  %462 = load i64*, i64** %10, align 8
  %463 = call i8* @WPA_GET_BE16(i64* %462)
  %464 = ptrtoint i8* %463 to i32
  store i32 %464, i32* %20, align 4
  %465 = load i64*, i64** %10, align 8
  %466 = getelementptr inbounds i64, i64* %465, i64 2
  store i64* %466, i64** %10, align 8
  %467 = load i64*, i64** %11, align 8
  %468 = load i64*, i64** %10, align 8
  %469 = ptrtoint i64* %467 to i64
  %470 = ptrtoint i64* %468 to i64
  %471 = sub i64 %469, %470
  %472 = sdiv exact i64 %471, 8
  %473 = icmp slt i64 %472, 2
  br i1 %473, label %474, label %477

474:                                              ; preds = %461
  %475 = load i32, i32* @MSG_DEBUG, align 4
  %476 = call i32 (i32, i8*, ...) @wpa_printf(i32 %475, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0))
  br label %550

477:                                              ; preds = %461
  %478 = load i64*, i64** %10, align 8
  %479 = call i8* @WPA_GET_BE16(i64* %478)
  %480 = ptrtoint i8* %479 to i32
  store i32 %480, i32* %21, align 4
  %481 = load i64*, i64** %10, align 8
  %482 = getelementptr inbounds i64, i64* %481, i64 2
  store i64* %482, i64** %10, align 8
  %483 = load i64*, i64** %11, align 8
  %484 = load i64*, i64** %10, align 8
  %485 = ptrtoint i64* %483 to i64
  %486 = ptrtoint i64* %484 to i64
  %487 = sub i64 %485, %486
  %488 = sdiv exact i64 %487, 8
  %489 = load i32, i32* %21, align 4
  %490 = sext i32 %489 to i64
  %491 = icmp slt i64 %488, %490
  br i1 %491, label %492, label %495

492:                                              ; preds = %477
  %493 = load i32, i32* @MSG_DEBUG, align 4
  %494 = call i32 (i32, i8*, ...) @wpa_printf(i32 %493, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0))
  br label %550

495:                                              ; preds = %477
  %496 = load i32, i32* @MSG_DEBUG, align 4
  %497 = load i32, i32* %20, align 4
  %498 = call i32 (i32, i8*, ...) @wpa_printf(i32 %496, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), i32 %497)
  %499 = load i32, i32* @MSG_MSGDUMP, align 4
  %500 = load i64*, i64** %10, align 8
  %501 = load i32, i32* %21, align 4
  %502 = sext i32 %501 to i64
  %503 = call i32 @wpa_hexdump(i32 %499, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i64* %500, i64 %502)
  %504 = load i32, i32* %20, align 4
  %505 = load i32, i32* @TLS_EXT_SESSION_TICKET, align 4
  %506 = icmp eq i32 %504, %505
  br i1 %506, label %507, label %531

507:                                              ; preds = %495
  %508 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %509 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %508, i32 0, i32 5
  %510 = load i64*, i64** %509, align 8
  %511 = call i32 @os_free(i64* %510)
  %512 = load i32, i32* %21, align 4
  %513 = call i64* @os_malloc(i32 %512)
  %514 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %515 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %514, i32 0, i32 5
  store i64* %513, i64** %515, align 8
  %516 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %517 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %516, i32 0, i32 5
  %518 = load i64*, i64** %517, align 8
  %519 = icmp ne i64* %518, null
  br i1 %519, label %520, label %530

520:                                              ; preds = %507
  %521 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %522 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %521, i32 0, i32 5
  %523 = load i64*, i64** %522, align 8
  %524 = load i64*, i64** %10, align 8
  %525 = load i32, i32* %21, align 4
  %526 = call i32 @os_memcpy(i64* %523, i64* %524, i32 %525)
  %527 = load i32, i32* %21, align 4
  %528 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %529 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %528, i32 0, i32 6
  store i32 %527, i32* %529, align 8
  br label %530

530:                                              ; preds = %520, %507
  br label %531

531:                                              ; preds = %530, %495
  %532 = load i32, i32* %21, align 4
  %533 = load i64*, i64** %10, align 8
  %534 = sext i32 %532 to i64
  %535 = getelementptr inbounds i64, i64* %533, i64 %534
  store i64* %535, i64** %10, align 8
  br label %446

536:                                              ; preds = %446
  br label %537

537:                                              ; preds = %536, %408
  %538 = load i64*, i64** %11, align 8
  %539 = load i64*, i64** %8, align 8
  %540 = ptrtoint i64* %538 to i64
  %541 = ptrtoint i64* %539 to i64
  %542 = sub i64 %540, %541
  %543 = sdiv exact i64 %542, 8
  %544 = load i64*, i64** %9, align 8
  store i64 %543, i64* %544, align 8
  %545 = load i32, i32* @MSG_DEBUG, align 4
  %546 = call i32 (i32, i8*, ...) @wpa_printf(i32 %545, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i64 0, i64 0))
  %547 = load i32, i32* @SERVER_HELLO, align 4
  %548 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %549 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %548, i32 0, i32 7
  store i32 %547, i32* %549, align 4
  store i32 0, i32* %5, align 4
  br label %557

550:                                              ; preds = %492, %474, %458, %434, %403, %361, %346, %258, %248, %232, %212, %195, %169, %85, %69, %40
  %551 = load i32, i32* @MSG_DEBUG, align 4
  %552 = call i32 (i32, i8*, ...) @wpa_printf(i32 %551, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0))
  %553 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %554 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %555 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %556 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %553, i32 %554, i32 %555)
  store i32 -1, i32* %5, align 4
  br label %557

557:                                              ; preds = %550, %537, %388, %328, %315, %107, %46, %26
  %558 = load i32, i32* %5, align 4
  ret i32 %558
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #1

declare dso_local i64 @WPA_GET_BE24(i64*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

declare dso_local i8* @WPA_GET_BE16(i64*) #1

declare dso_local i32 @tls_version_str(i32) #1

declare dso_local i32 @os_memcpy(i64*, i64*, i32) #1

declare dso_local i64 @tlsv1_record_set_cipher_suite(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @os_free(i64*) #1

declare dso_local i64* @os_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
