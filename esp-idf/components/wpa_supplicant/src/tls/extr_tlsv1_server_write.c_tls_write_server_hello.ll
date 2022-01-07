; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_write.c_tls_write_server_hello.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_write.c_tls_write_server_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32 (i32, i64, i32, i32, i32, i32)*, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.os_time = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"TLSv1: Send ServerHello\00", align 1
@TLS_RECORD_HEADER_LEN = common dso_local global i32 0, align 4
@TLS_RANDOM_LEN = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"TLSv1: Could not generate server_random\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"TLSv1: server_random\00", align 1
@TLS_SESSION_ID_MAX_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"TLSv1: Could not generate session_id\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"TLSv1: session_id\00", align 1
@TLS_HANDSHAKE_TYPE_SERVER_HELLO = common dso_local global i32 0, align 4
@TLS_COMPRESSION_NULL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"TLSv1: SessionTicket callback indicated failure\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"TLSv1: Failed to derive keys\00", align 1
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"TLSv1: Failed to create TLS record\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i32**, i32*)* @tls_write_server_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_write_server_hello(%struct.tlsv1_server* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_server*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.os_time, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32**, i32*** %6, align 8
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %8, align 8
  store i32* %19, i32** %9, align 8
  %20 = load i32, i32* @TLS_RECORD_HEADER_LEN, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %8, align 8
  %24 = call i32 @os_get_time(%struct.os_time* %12)
  %25 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %26 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.os_time, %struct.os_time* %12, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WPA_PUT_BE32(i32 %27, i32 %29)
  %31 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %32 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 4
  %35 = load i64, i64* @TLS_RANDOM_LEN, align 8
  %36 = sub nsw i64 %35, 4
  %37 = call i64 @random_get_bytes(i32 %34, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %3
  %40 = load i32, i32* @MSG_ERROR, align 4
  %41 = call i32 @wpa_printf(i32 %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %244

42:                                               ; preds = %3
  %43 = load i32, i32* @MSG_MSGDUMP, align 4
  %44 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %45 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* @TLS_RANDOM_LEN, align 8
  %48 = call i32 @wpa_hexdump(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %46, i64 %47)
  %49 = load i64, i64* @TLS_SESSION_ID_MAX_LEN, align 8
  %50 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %51 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %50, i32 0, i32 11
  store i64 %49, i64* %51, align 8
  %52 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %53 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %52, i32 0, i32 12
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %56 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %55, i32 0, i32 11
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @random_get_bytes(i32 %54, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %42
  %61 = load i32, i32* @MSG_ERROR, align 4
  %62 = call i32 @wpa_printf(i32 %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %244

63:                                               ; preds = %42
  %64 = load i32, i32* @MSG_MSGDUMP, align 4
  %65 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %66 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %65, i32 0, i32 12
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %69 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %68, i32 0, i32 11
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @wpa_hexdump(i32 %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %67, i64 %70)
  %72 = load i32*, i32** %8, align 8
  store i32* %72, i32** %10, align 8
  %73 = load i32, i32* @TLS_HANDSHAKE_TYPE_SERVER_HELLO, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %8, align 8
  store i32 %73, i32* %74, align 4
  %76 = load i32*, i32** %8, align 8
  store i32* %76, i32** %11, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  store i32* %78, i32** %8, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %81 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @WPA_PUT_BE16(i32* %79, i32 %83)
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  store i32* %86, i32** %8, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %89 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = load i64, i64* @TLS_RANDOM_LEN, align 8
  %92 = call i32 @os_memcpy(i32* %87, i32 %90, i64 %91)
  %93 = load i64, i64* @TLS_RANDOM_LEN, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 %93
  store i32* %95, i32** %8, align 8
  %96 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %97 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %96, i32 0, i32 11
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %8, align 8
  store i32 %99, i32* %100, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %104 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %103, i32 0, i32 12
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %107 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %106, i32 0, i32 11
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @os_memcpy(i32* %102, i32 %105, i64 %108)
  %110 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %111 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %110, i32 0, i32 11
  %112 = load i64, i64* %111, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 %112
  store i32* %114, i32** %8, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %117 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %116, i32 0, i32 10
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @WPA_PUT_BE16(i32* %115, i32 %118)
  %120 = load i32*, i32** %8, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  store i32* %121, i32** %8, align 8
  %122 = load i64, i64* @TLS_COMPRESSION_NULL, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i32*, i32** %8, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %8, align 8
  store i32 %123, i32* %124, align 4
  %126 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %127 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %126, i32 0, i32 8
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %188

130:                                              ; preds = %63
  %131 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %132 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %131, i32 0, i32 0
  %133 = load i32 (i32, i64, i32, i32, i32, i32)*, i32 (i32, i64, i32, i32, i32, i32)** %132, align 8
  %134 = icmp ne i32 (i32, i64, i32, i32, i32, i32)* %133, null
  br i1 %134, label %135, label %188

135:                                              ; preds = %130
  %136 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %137 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %136, i32 0, i32 0
  %138 = load i32 (i32, i64, i32, i32, i32, i32)*, i32 (i32, i64, i32, i32, i32, i32)** %137, align 8
  %139 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %140 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %143 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %142, i32 0, i32 8
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %146 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %149 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %152 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %155 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = call i32 %138(i32 %141, i64 %144, i32 %147, i32 %150, i32 %153, i32 %156)
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %14, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %135
  %161 = load i32, i32* @MSG_DEBUG, align 4
  %162 = call i32 @wpa_printf(i32 %161, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %163 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %164 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %165 = load i32, i32* @TLS_ALERT_HANDSHAKE_FAILURE, align 4
  %166 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %163, i32 %164, i32 %165)
  store i32 -1, i32* %4, align 4
  br label %244

167:                                              ; preds = %135
  %168 = load i32, i32* %14, align 4
  %169 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %170 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 8
  %171 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %172 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %167
  %176 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %177 = call i64 @tlsv1_server_derive_keys(%struct.tlsv1_server* %176, i32* null, i32 0)
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = load i32, i32* @MSG_DEBUG, align 4
  %181 = call i32 @wpa_printf(i32 %180, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %182 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %183 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %184 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %185 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %182, i32 %183, i32 %184)
  store i32 -1, i32* %4, align 4
  br label %244

186:                                              ; preds = %175
  br label %187

187:                                              ; preds = %186, %167
  br label %188

188:                                              ; preds = %187, %130, %63
  %189 = load i32*, i32** %11, align 8
  %190 = load i32*, i32** %8, align 8
  %191 = load i32*, i32** %11, align 8
  %192 = ptrtoint i32* %190 to i64
  %193 = ptrtoint i32* %191 to i64
  %194 = sub i64 %192, %193
  %195 = sdiv exact i64 %194, 4
  %196 = sub nsw i64 %195, 3
  %197 = trunc i64 %196 to i32
  %198 = call i32 @WPA_PUT_BE24(i32* %189, i32 %197)
  %199 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %200 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %199, i32 0, i32 3
  %201 = load i32*, i32** %10, align 8
  %202 = load i32*, i32** %8, align 8
  %203 = load i32*, i32** %10, align 8
  %204 = ptrtoint i32* %202 to i64
  %205 = ptrtoint i32* %203 to i64
  %206 = sub i64 %204, %205
  %207 = sdiv exact i64 %206, 4
  %208 = trunc i64 %207 to i32
  %209 = call i32 @tls_verify_hash_add(i32* %200, i32* %201, i32 %208)
  %210 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %211 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %210, i32 0, i32 2
  %212 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %213 = load i32*, i32** %9, align 8
  %214 = load i32*, i32** %7, align 8
  %215 = load i32*, i32** %9, align 8
  %216 = ptrtoint i32* %214 to i64
  %217 = ptrtoint i32* %215 to i64
  %218 = sub i64 %216, %217
  %219 = sdiv exact i64 %218, 4
  %220 = trunc i64 %219 to i32
  %221 = load i32*, i32** %10, align 8
  %222 = load i32*, i32** %8, align 8
  %223 = load i32*, i32** %10, align 8
  %224 = ptrtoint i32* %222 to i64
  %225 = ptrtoint i32* %223 to i64
  %226 = sub i64 %224, %225
  %227 = sdiv exact i64 %226, 4
  %228 = trunc i64 %227 to i32
  %229 = call i64 @tlsv1_record_send(%struct.TYPE_2__* %211, i32 %212, i32* %213, i32 %220, i32* %221, i32 %228, i64* %13)
  %230 = icmp slt i64 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %188
  %232 = load i32, i32* @MSG_DEBUG, align 4
  %233 = call i32 @wpa_printf(i32 %232, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %234 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %235 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %236 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %237 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %234, i32 %235, i32 %236)
  store i32 -1, i32* %4, align 4
  br label %244

238:                                              ; preds = %188
  %239 = load i32*, i32** %9, align 8
  %240 = load i64, i64* %13, align 8
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32* %241, i32** %8, align 8
  %242 = load i32*, i32** %8, align 8
  %243 = load i32**, i32*** %6, align 8
  store i32* %242, i32** %243, align 8
  store i32 0, i32* %4, align 4
  br label %244

244:                                              ; preds = %238, %231, %179, %160, %60, %39
  %245 = load i32, i32* %4, align 4
  ret i32 %245
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_get_time(%struct.os_time*) #1

declare dso_local i32 @WPA_PUT_BE32(i32, i32) #1

declare dso_local i64 @random_get_bytes(i32, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i64) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32, i64) #1

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #1

declare dso_local i64 @tlsv1_server_derive_keys(%struct.tlsv1_server*, i32*, i32) #1

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i32 @tls_verify_hash_add(i32*, i32*, i32) #1

declare dso_local i64 @tlsv1_record_send(%struct.TYPE_2__*, i32, i32*, i32, i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
