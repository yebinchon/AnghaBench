; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_mbedtls.c_set_client_config.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_mbedtls.c_set_client_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32, i32*, i32*, i32, i32, i32, i32, %struct.TYPE_11__*, i32, i32*, i64, i32 }
%struct.TYPE_11__ = type { i8*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32*, i32, i32*, i32*, i32* }

@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"mbedtls_ssl_set_hostname returned -0x%x\00", align 1
@ERR_TYPE_MBEDTLS = common dso_local global i32 0, align 4
@ESP_ERR_MBEDTLS_SSL_SET_HOSTNAME_FAILED = common dso_local global i64 0, align 8
@MBEDTLS_SSL_IS_CLIENT = common dso_local global i32 0, align 4
@MBEDTLS_SSL_TRANSPORT_STREAM = common dso_local global i32 0, align 4
@MBEDTLS_SSL_PRESET_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"mbedtls_ssl_config_defaults returned -0x%x\00", align 1
@ESP_ERR_MBEDTLS_SSL_CONFIG_DEFAULTS_FAILED = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [101 x i8] c"psk_hint_key configured but not enabled in menuconfig: Please enable ESP_TLS_PSK_VERIFICATION option\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@MBEDTLS_SSL_VERIFY_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to set client pki context\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"You have to provide both clientcert_buf and clientkey_buf for mutual authentication\00", align 1
@ESP_ERR_MBEDTLS_SSL_CONF_ALPN_PROTOCOLS_FAILED = common dso_local global i64 0, align 8
@ESP_ERR_MBEDTLS_SSL_CONF_PSK_FAILED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @set_client_config(i8* %0, i64 %1, %struct.TYPE_14__* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_13__, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %17 = icmp ne %struct.TYPE_14__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 12
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %75, label %28

28:                                               ; preds = %4
  store i8* null, i8** %11, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = call i8* @strndup(i8* %36, i64 %40)
  store i8* %41, i8** %11, align 8
  br label %46

42:                                               ; preds = %28
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i8* @strndup(i8* %43, i64 %44)
  store i8* %45, i8** %11, align 8
  br label %46

46:                                               ; preds = %42, %33
  %47 = load i8*, i8** %11, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %50, i64* %5, align 8
  br label %220

51:                                               ; preds = %46
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 5
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @mbedtls_ssl_set_hostname(i32* %53, i8* %54)
  store i32 %55, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %51
  %58 = load i32, i32* @TAG, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 0, %59
  %61 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ERR_TYPE_MBEDTLS, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 0, %66
  %68 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %64, i32 %65, i32 %67)
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i64, i64* @ESP_ERR_MBEDTLS_SSL_SET_HOSTNAME_FAILED, align 8
  store i64 %71, i64* %5, align 8
  br label %220

72:                                               ; preds = %51
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @free(i8* %73)
  br label %75

75:                                               ; preds = %72, %4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = load i32, i32* @MBEDTLS_SSL_IS_CLIENT, align 4
  %79 = load i32, i32* @MBEDTLS_SSL_TRANSPORT_STREAM, align 4
  %80 = load i32, i32* @MBEDTLS_SSL_PRESET_DEFAULT, align 4
  %81 = call i32 @mbedtls_ssl_config_defaults(i32* %77, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %75
  %84 = load i32, i32* @TAG, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 0, %85
  %87 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ERR_TYPE_MBEDTLS, align 4
  %92 = load i32, i32* %10, align 4
  %93 = sub nsw i32 0, %92
  %94 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %90, i32 %91, i32 %93)
  %95 = load i64, i64* @ESP_ERR_MBEDTLS_SSL_CONFIG_DEFAULTS_FAILED, align 8
  store i64 %95, i64* %5, align 8
  br label %220

96:                                               ; preds = %75
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %103 = call i64 @set_global_ca_store(%struct.TYPE_12__* %102)
  store i64 %103, i64* %12, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* @ESP_OK, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i64, i64* %12, align 8
  store i64 %108, i64* %5, align 8
  br label %220

109:                                              ; preds = %101
  br label %152

110:                                              ; preds = %96
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 10
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %136

115:                                              ; preds = %110
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 10
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @set_ca_cert(%struct.TYPE_12__* %116, i32* %119, i32 %122)
  store i64 %123, i64* %13, align 8
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* @ESP_OK, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %115
  %128 = load i64, i64* %13, align 8
  store i64 %128, i64* %5, align 8
  br label %220

129:                                              ; preds = %115
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @mbedtls_ssl_conf_ca_chain(i32* %131, i32 %134, i32* null)
  br label %151

136:                                              ; preds = %110
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = icmp ne %struct.TYPE_11__* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i32, i32* @TAG, align 4
  %143 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %142, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0))
  %144 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %144, i64* %5, align 8
  br label %220

145:                                              ; preds = %136
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  %148 = load i32, i32* @MBEDTLS_SSL_VERIFY_NONE, align 4
  %149 = call i32 @mbedtls_ssl_conf_authmode(i32* %147, i32 %148)
  br label %150

150:                                              ; preds = %145
  br label %151

151:                                              ; preds = %150, %129
  br label %152

152:                                              ; preds = %151, %109
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %203

157:                                              ; preds = %152
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %203

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  store i32 %166, i32* %163, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %167, align 4
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %171, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  store i32* %178, i32** %175, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %179, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 5
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  store i32* %186, i32** %183, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 6
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  store i32* %189, i32** %187, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 7
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 1
  store i32* %192, i32** %190, align 8
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %194 = call i64 @set_pki_context(%struct.TYPE_12__* %193, %struct.TYPE_13__* %14)
  store i64 %194, i64* %15, align 8
  %195 = load i64, i64* %15, align 8
  %196 = load i64, i64* @ESP_OK, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %162
  %199 = load i32, i32* @TAG, align 4
  %200 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %199, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %201 = load i64, i64* %15, align 8
  store i64 %201, i64* %5, align 8
  br label %220

202:                                              ; preds = %162
  br label %218

203:                                              ; preds = %157, %152
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %213, label %208

208:                                              ; preds = %203
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %217

213:                                              ; preds = %208, %203
  %214 = load i32, i32* @TAG, align 4
  %215 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %214, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0))
  %216 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %216, i64* %5, align 8
  br label %220

217:                                              ; preds = %208
  br label %218

218:                                              ; preds = %217, %202
  %219 = load i64, i64* @ESP_OK, align 8
  store i64 %219, i64* %5, align 8
  br label %220

220:                                              ; preds = %218, %213, %198, %141, %127, %107, %83, %57, %49
  %221 = load i64, i64* %5, align 8
  ret i64 %221
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @strndup(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mbedtls_ssl_set_hostname(i32*, i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @mbedtls_ssl_config_defaults(i32*, i32, i32, i32) #1

declare dso_local i64 @set_global_ca_store(%struct.TYPE_12__*) #1

declare dso_local i64 @set_ca_cert(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @mbedtls_ssl_conf_ca_chain(i32*, i32, i32*) #1

declare dso_local i32 @mbedtls_ssl_conf_authmode(i32*, i32) #1

declare dso_local i64 @set_pki_context(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
