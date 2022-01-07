; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_write.c_tls_write_server_key_exchange.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_write.c_tls_write_server_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i64*, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64*, i64*, i64, i64 }
%struct.tls_cipher_suite = type { i64 }

@TLS_KEY_X_NULL = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"TLSv1: No ServerKeyExchange needed\00", align 1
@TLS_KEY_X_DH_anon = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [69 x i8] c"TLSv1: ServerKeyExchange not yet supported with key exchange type %d\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"TLSv1: No DH parameters available for ServerKeyExhcange\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"TLSv1: Failed to allocate memory for secret (Diffie-Hellman)\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"TLSv1: Failed to get random data for Diffie-Hellman\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"TLSv1: DH server's secret value\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"TLSv1: Failed to allocate memory for Diffie-Hellman\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"TLSv1: DH Ys (server's public value)\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"TLSv1: Send ServerKeyExchange\00", align 1
@TLS_RECORD_HEADER_LEN = common dso_local global i32 0, align 4
@TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"TLSv1: Not enough buffer space for dh_p\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"TLSv1: Not enough buffer space for dh_g\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"TLSv1: Not enough buffer space for dh_Ys\00", align 1
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"TLSv1: Failed to generate a record\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i64**, i64*)* @tls_write_server_key_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_write_server_key_exchange(%struct.tlsv1_server* %0, i64** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_server*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tls_cipher_suite*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %5, align 8
  store i64** %1, i64*** %6, align 8
  store i64* %2, i64** %7, align 8
  %17 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %18 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.tls_cipher_suite* @tls_get_cipher_suite(i32 %20)
  store %struct.tls_cipher_suite* %21, %struct.tls_cipher_suite** %9, align 8
  %22 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %9, align 8
  %23 = icmp eq %struct.tls_cipher_suite* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i64, i64* @TLS_KEY_X_NULL, align 8
  store i64 %25, i64* %8, align 8
  br label %30

26:                                               ; preds = %3
  %27 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %9, align 8
  %28 = getelementptr inbounds %struct.tls_cipher_suite, %struct.tls_cipher_suite* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  br label %30

30:                                               ; preds = %26, %24
  %31 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %32 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @tls_server_key_exchange_allowed(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %470

40:                                               ; preds = %30
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @TLS_KEY_X_DH_anon, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = load i64, i64* %8, align 8
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  store i32 -1, i32* %4, align 4
  br label %470

48:                                               ; preds = %40
  %49 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %50 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %49, i32 0, i32 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = icmp eq %struct.TYPE_3__* %51, null
  br i1 %52, label %67, label %53

53:                                               ; preds = %48
  %54 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %55 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %54, i32 0, i32 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = icmp eq i64* %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %62 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %61, i32 0, i32 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = icmp eq i64* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %60, %53, %48
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %470

70:                                               ; preds = %60
  %71 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %72 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = call i32 @os_free(i64* %73)
  %75 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %76 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %75, i32 0, i32 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %81 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %83 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i8* @os_malloc(i64 %84)
  %86 = bitcast i8* %85 to i64*
  %87 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %88 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %87, i32 0, i32 0
  store i64* %86, i64** %88, align 8
  %89 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %90 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = icmp eq i64* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %70
  %94 = load i32, i32* @MSG_DEBUG, align 4
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %94, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %96 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %97 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %98 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %99 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %96, i32 %97, i32 %98)
  store i32 -1, i32* %4, align 4
  br label %470

100:                                              ; preds = %70
  %101 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %102 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %105 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @random_get_bytes(i64* %103, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %100
  %110 = load i32, i32* @MSG_DEBUG, align 4
  %111 = call i32 (i32, i8*, ...) @wpa_printf(i32 %110, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %112 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %113 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %114 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %115 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %112, i32 %113, i32 %114)
  %116 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %117 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = call i32 @os_free(i64* %118)
  %120 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %121 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %120, i32 0, i32 0
  store i64* null, i64** %121, align 8
  store i32 -1, i32* %4, align 4
  br label %470

122:                                              ; preds = %100
  %123 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %124 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %127 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %126, i32 0, i32 4
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %132 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @os_memcmp(i64* %125, i64* %130, i64 %133)
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %122
  %137 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %138 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 0
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %136, %122
  %142 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %143 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  store i64* %144, i64** %10, align 8
  br label %145

145:                                              ; preds = %162, %141
  %146 = load i64*, i64** %10, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 1
  %148 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %149 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %148, i32 0, i32 0
  %150 = load i64*, i64** %149, align 8
  %151 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %152 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds i64, i64* %150, i64 %153
  %155 = icmp ult i64* %147, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %145
  %157 = load i64*, i64** %10, align 8
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br label %160

160:                                              ; preds = %156, %145
  %161 = phi i1 [ false, %145 ], [ %159, %156 ]
  br i1 %161, label %162, label %165

162:                                              ; preds = %160
  %163 = load i64*, i64** %10, align 8
  %164 = getelementptr inbounds i64, i64* %163, i32 1
  store i64* %164, i64** %10, align 8
  br label %145

165:                                              ; preds = %160
  %166 = load i64*, i64** %10, align 8
  %167 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %168 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = icmp ne i64* %166, %169
  br i1 %170, label %171, label %202

171:                                              ; preds = %165
  %172 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %173 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %172, i32 0, i32 0
  %174 = load i64*, i64** %173, align 8
  %175 = load i64*, i64** %10, align 8
  %176 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %177 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64*, i64** %10, align 8
  %180 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %181 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %180, i32 0, i32 0
  %182 = load i64*, i64** %181, align 8
  %183 = ptrtoint i64* %179 to i64
  %184 = ptrtoint i64* %182 to i64
  %185 = sub i64 %183, %184
  %186 = sdiv exact i64 %185, 8
  %187 = sub i64 %178, %186
  %188 = trunc i64 %187 to i32
  %189 = call i32 @os_memmove(i64* %174, i64* %175, i32 %188)
  %190 = load i64*, i64** %10, align 8
  %191 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %192 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %191, i32 0, i32 0
  %193 = load i64*, i64** %192, align 8
  %194 = ptrtoint i64* %190 to i64
  %195 = ptrtoint i64* %193 to i64
  %196 = sub i64 %194, %195
  %197 = sdiv exact i64 %196, 8
  %198 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %199 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = sub i64 %200, %197
  store i64 %201, i64* %199, align 8
  br label %202

202:                                              ; preds = %171, %165
  %203 = load i32, i32* @MSG_DEBUG, align 4
  %204 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %205 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %204, i32 0, i32 0
  %206 = load i64*, i64** %205, align 8
  %207 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %208 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = trunc i64 %209 to i32
  %211 = call i32 @wpa_hexdump_key(i32 %203, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64* %206, i32 %210)
  %212 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %213 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %212, i32 0, i32 4
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %16, align 8
  %217 = load i64, i64* %16, align 8
  %218 = call i8* @os_malloc(i64 %217)
  %219 = bitcast i8* %218 to i64*
  store i64* %219, i64** %15, align 8
  %220 = load i64*, i64** %15, align 8
  %221 = icmp eq i64* %220, null
  br i1 %221, label %222, label %229

222:                                              ; preds = %202
  %223 = load i32, i32* @MSG_DEBUG, align 4
  %224 = call i32 (i32, i8*, ...) @wpa_printf(i32 %223, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %225 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %226 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %227 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %228 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %225, i32 %226, i32 %227)
  store i32 -1, i32* %4, align 4
  br label %470

229:                                              ; preds = %202
  %230 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %231 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %230, i32 0, i32 4
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 1
  %234 = load i64*, i64** %233, align 8
  %235 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %236 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %235, i32 0, i32 4
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %241 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %240, i32 0, i32 0
  %242 = load i64*, i64** %241, align 8
  %243 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %244 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = trunc i64 %245 to i32
  %247 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %248 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %247, i32 0, i32 4
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 0
  %251 = load i64*, i64** %250, align 8
  %252 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %253 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %252, i32 0, i32 4
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = load i64*, i64** %15, align 8
  %258 = call i64 @crypto_mod_exp(i64* %234, i64 %239, i64* %242, i32 %246, i64* %251, i64 %256, i64* %257, i64* %16)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %229
  %261 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %262 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %263 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %264 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %261, i32 %262, i32 %263)
  %265 = load i64*, i64** %15, align 8
  %266 = call i32 @os_free(i64* %265)
  store i32 -1, i32* %4, align 4
  br label %470

267:                                              ; preds = %229
  %268 = load i32, i32* @MSG_DEBUG, align 4
  %269 = load i64*, i64** %15, align 8
  %270 = load i64, i64* %16, align 8
  %271 = call i32 @wpa_hexdump(i32 %268, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64* %269, i64 %270)
  %272 = load i64**, i64*** %6, align 8
  %273 = load i64*, i64** %272, align 8
  store i64* %273, i64** %10, align 8
  %274 = load i32, i32* @MSG_DEBUG, align 4
  %275 = call i32 (i32, i8*, ...) @wpa_printf(i32 %274, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %276 = load i64*, i64** %10, align 8
  store i64* %276, i64** %11, align 8
  %277 = load i32, i32* @TLS_RECORD_HEADER_LEN, align 4
  %278 = load i64*, i64** %10, align 8
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i64, i64* %278, i64 %279
  store i64* %280, i64** %10, align 8
  %281 = load i64*, i64** %10, align 8
  store i64* %281, i64** %12, align 8
  %282 = load i32, i32* @TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE, align 4
  %283 = sext i32 %282 to i64
  %284 = load i64*, i64** %10, align 8
  %285 = getelementptr inbounds i64, i64* %284, i32 1
  store i64* %285, i64** %10, align 8
  store i64 %283, i64* %284, align 8
  %286 = load i64*, i64** %10, align 8
  store i64* %286, i64** %13, align 8
  %287 = load i64*, i64** %10, align 8
  %288 = getelementptr inbounds i64, i64* %287, i64 3
  store i64* %288, i64** %10, align 8
  %289 = load i64*, i64** %10, align 8
  %290 = getelementptr inbounds i64, i64* %289, i64 2
  %291 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %292 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %291, i32 0, i32 4
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = getelementptr inbounds i64, i64* %290, i64 %295
  %297 = load i64*, i64** %7, align 8
  %298 = icmp ugt i64* %296, %297
  br i1 %298, label %299, label %308

299:                                              ; preds = %267
  %300 = load i32, i32* @MSG_DEBUG, align 4
  %301 = call i32 (i32, i8*, ...) @wpa_printf(i32 %300, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %302 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %303 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %304 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %305 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %302, i32 %303, i32 %304)
  %306 = load i64*, i64** %15, align 8
  %307 = call i32 @os_free(i64* %306)
  store i32 -1, i32* %4, align 4
  br label %470

308:                                              ; preds = %267
  %309 = load i64*, i64** %10, align 8
  %310 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %311 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %310, i32 0, i32 4
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 2
  %314 = load i64, i64* %313, align 8
  %315 = call i32 @WPA_PUT_BE16(i64* %309, i64 %314)
  %316 = load i64*, i64** %10, align 8
  %317 = getelementptr inbounds i64, i64* %316, i64 2
  store i64* %317, i64** %10, align 8
  %318 = load i64*, i64** %10, align 8
  %319 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %320 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %319, i32 0, i32 4
  %321 = load %struct.TYPE_3__*, %struct.TYPE_3__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 0
  %323 = load i64*, i64** %322, align 8
  %324 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %325 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %324, i32 0, i32 4
  %326 = load %struct.TYPE_3__*, %struct.TYPE_3__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = call i32 @os_memcpy(i64* %318, i64* %323, i64 %328)
  %330 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %331 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %330, i32 0, i32 4
  %332 = load %struct.TYPE_3__*, %struct.TYPE_3__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = load i64*, i64** %10, align 8
  %336 = getelementptr inbounds i64, i64* %335, i64 %334
  store i64* %336, i64** %10, align 8
  %337 = load i64*, i64** %10, align 8
  %338 = getelementptr inbounds i64, i64* %337, i64 2
  %339 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %340 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %339, i32 0, i32 4
  %341 = load %struct.TYPE_3__*, %struct.TYPE_3__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 3
  %343 = load i64, i64* %342, align 8
  %344 = getelementptr inbounds i64, i64* %338, i64 %343
  %345 = load i64*, i64** %7, align 8
  %346 = icmp ugt i64* %344, %345
  br i1 %346, label %347, label %356

347:                                              ; preds = %308
  %348 = load i32, i32* @MSG_DEBUG, align 4
  %349 = call i32 (i32, i8*, ...) @wpa_printf(i32 %348, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %350 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %351 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %352 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %353 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %350, i32 %351, i32 %352)
  %354 = load i64*, i64** %15, align 8
  %355 = call i32 @os_free(i64* %354)
  store i32 -1, i32* %4, align 4
  br label %470

356:                                              ; preds = %308
  %357 = load i64*, i64** %10, align 8
  %358 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %359 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %358, i32 0, i32 4
  %360 = load %struct.TYPE_3__*, %struct.TYPE_3__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %360, i32 0, i32 3
  %362 = load i64, i64* %361, align 8
  %363 = call i32 @WPA_PUT_BE16(i64* %357, i64 %362)
  %364 = load i64*, i64** %10, align 8
  %365 = getelementptr inbounds i64, i64* %364, i64 2
  store i64* %365, i64** %10, align 8
  %366 = load i64*, i64** %10, align 8
  %367 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %368 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %367, i32 0, i32 4
  %369 = load %struct.TYPE_3__*, %struct.TYPE_3__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i32 0, i32 1
  %371 = load i64*, i64** %370, align 8
  %372 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %373 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %372, i32 0, i32 4
  %374 = load %struct.TYPE_3__*, %struct.TYPE_3__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 3
  %376 = load i64, i64* %375, align 8
  %377 = call i32 @os_memcpy(i64* %366, i64* %371, i64 %376)
  %378 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %379 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %378, i32 0, i32 4
  %380 = load %struct.TYPE_3__*, %struct.TYPE_3__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 3
  %382 = load i64, i64* %381, align 8
  %383 = load i64*, i64** %10, align 8
  %384 = getelementptr inbounds i64, i64* %383, i64 %382
  store i64* %384, i64** %10, align 8
  %385 = load i64*, i64** %10, align 8
  %386 = getelementptr inbounds i64, i64* %385, i64 2
  %387 = load i64, i64* %16, align 8
  %388 = getelementptr inbounds i64, i64* %386, i64 %387
  %389 = load i64*, i64** %7, align 8
  %390 = icmp ugt i64* %388, %389
  br i1 %390, label %391, label %400

391:                                              ; preds = %356
  %392 = load i32, i32* @MSG_DEBUG, align 4
  %393 = call i32 (i32, i8*, ...) @wpa_printf(i32 %392, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %394 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %395 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %396 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %397 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %394, i32 %395, i32 %396)
  %398 = load i64*, i64** %15, align 8
  %399 = call i32 @os_free(i64* %398)
  store i32 -1, i32* %4, align 4
  br label %470

400:                                              ; preds = %356
  %401 = load i64*, i64** %10, align 8
  %402 = load i64, i64* %16, align 8
  %403 = call i32 @WPA_PUT_BE16(i64* %401, i64 %402)
  %404 = load i64*, i64** %10, align 8
  %405 = getelementptr inbounds i64, i64* %404, i64 2
  store i64* %405, i64** %10, align 8
  %406 = load i64*, i64** %10, align 8
  %407 = load i64*, i64** %15, align 8
  %408 = load i64, i64* %16, align 8
  %409 = call i32 @os_memcpy(i64* %406, i64* %407, i64 %408)
  %410 = load i64, i64* %16, align 8
  %411 = load i64*, i64** %10, align 8
  %412 = getelementptr inbounds i64, i64* %411, i64 %410
  store i64* %412, i64** %10, align 8
  %413 = load i64*, i64** %15, align 8
  %414 = call i32 @os_free(i64* %413)
  %415 = load i64*, i64** %13, align 8
  %416 = load i64*, i64** %10, align 8
  %417 = load i64*, i64** %13, align 8
  %418 = ptrtoint i64* %416 to i64
  %419 = ptrtoint i64* %417 to i64
  %420 = sub i64 %418, %419
  %421 = sdiv exact i64 %420, 8
  %422 = sub nsw i64 %421, 3
  %423 = trunc i64 %422 to i32
  %424 = call i32 @WPA_PUT_BE24(i64* %415, i32 %423)
  %425 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %426 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %425, i32 0, i32 3
  %427 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %428 = load i64*, i64** %11, align 8
  %429 = load i64*, i64** %7, align 8
  %430 = load i64*, i64** %11, align 8
  %431 = ptrtoint i64* %429 to i64
  %432 = ptrtoint i64* %430 to i64
  %433 = sub i64 %431, %432
  %434 = sdiv exact i64 %433, 8
  %435 = trunc i64 %434 to i32
  %436 = load i64*, i64** %12, align 8
  %437 = load i64*, i64** %10, align 8
  %438 = load i64*, i64** %12, align 8
  %439 = ptrtoint i64* %437 to i64
  %440 = ptrtoint i64* %438 to i64
  %441 = sub i64 %439, %440
  %442 = sdiv exact i64 %441, 8
  %443 = trunc i64 %442 to i32
  %444 = call i64 @tlsv1_record_send(%struct.TYPE_4__* %426, i32 %427, i64* %428, i32 %435, i64* %436, i32 %443, i64* %14)
  %445 = icmp slt i64 %444, 0
  br i1 %445, label %446, label %453

446:                                              ; preds = %400
  %447 = load i32, i32* @MSG_DEBUG, align 4
  %448 = call i32 (i32, i8*, ...) @wpa_printf(i32 %447, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %449 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %450 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %451 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %452 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %449, i32 %450, i32 %451)
  store i32 -1, i32* %4, align 4
  br label %470

453:                                              ; preds = %400
  %454 = load i64*, i64** %11, align 8
  %455 = load i64, i64* %14, align 8
  %456 = getelementptr inbounds i64, i64* %454, i64 %455
  store i64* %456, i64** %10, align 8
  %457 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %458 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %457, i32 0, i32 2
  %459 = load i64*, i64** %12, align 8
  %460 = load i64*, i64** %10, align 8
  %461 = load i64*, i64** %12, align 8
  %462 = ptrtoint i64* %460 to i64
  %463 = ptrtoint i64* %461 to i64
  %464 = sub i64 %462, %463
  %465 = sdiv exact i64 %464, 8
  %466 = trunc i64 %465 to i32
  %467 = call i32 @tls_verify_hash_add(i32* %458, i64* %459, i32 %466)
  %468 = load i64*, i64** %10, align 8
  %469 = load i64**, i64*** %6, align 8
  store i64* %468, i64** %469, align 8
  store i32 0, i32* %4, align 4
  br label %470

470:                                              ; preds = %453, %446, %391, %347, %299, %260, %222, %109, %93, %67, %44, %37
  %471 = load i32, i32* %4, align 4
  ret i32 %471
}

declare dso_local %struct.tls_cipher_suite* @tls_get_cipher_suite(i32) #1

declare dso_local i32 @tls_server_key_exchange_allowed(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_free(i64*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #1

declare dso_local i64 @random_get_bytes(i64*, i64) #1

declare dso_local i64 @os_memcmp(i64*, i64*, i64) #1

declare dso_local i32 @os_memmove(i64*, i64*, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i64*, i32) #1

declare dso_local i64 @crypto_mod_exp(i64*, i64, i64*, i32, i64*, i64, i64*, i64*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

declare dso_local i32 @WPA_PUT_BE16(i64*, i64) #1

declare dso_local i32 @os_memcpy(i64*, i64*, i64) #1

declare dso_local i32 @WPA_PUT_BE24(i64*, i32) #1

declare dso_local i64 @tlsv1_record_send(%struct.TYPE_4__*, i32, i64*, i32, i64*, i32, i64*) #1

declare dso_local i32 @tls_verify_hash_add(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
