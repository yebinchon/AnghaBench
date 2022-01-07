; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/https_mbedtls/main/extr_https_mbedtls_example_main.c_https_get_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/https_mbedtls/main/extr_https_mbedtls_example_main.c_https_get_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Seeding the random number generator\00", align 1
@mbedtls_entropy_func = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"mbedtls_ctr_drbg_seed returned %d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Loading the CA root certificate...\00", align 1
@server_root_cert_pem_start = common dso_local global i64 0, align 8
@server_root_cert_pem_end = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"mbedtls_x509_crt_parse returned -0x%x\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Setting hostname for TLS session...\00", align 1
@WEB_SERVER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"mbedtls_ssl_set_hostname returned -0x%x\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Setting up the SSL/TLS structure...\00", align 1
@MBEDTLS_SSL_IS_CLIENT = common dso_local global i32 0, align 4
@MBEDTLS_SSL_TRANSPORT_STREAM = common dso_local global i32 0, align 4
@MBEDTLS_SSL_PRESET_DEFAULT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"mbedtls_ssl_config_defaults returned %d\00", align 1
@MBEDTLS_SSL_VERIFY_OPTIONAL = common dso_local global i32 0, align 4
@mbedtls_ctr_drbg_random = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"mbedtls_ssl_setup returned -0x%x\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Connecting to %s:%s...\00", align 1
@WEB_PORT = common dso_local global i32 0, align 4
@MBEDTLS_NET_PROTO_TCP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"mbedtls_net_connect returned -%x\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Connected.\00", align 1
@mbedtls_net_send = common dso_local global i32 0, align 4
@mbedtls_net_recv = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"Performing the SSL/TLS handshake...\00", align 1
@MBEDTLS_ERR_SSL_WANT_READ = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_WANT_WRITE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"mbedtls_ssl_handshake returned -0x%x\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Verifying peer X.509 certificate...\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Failed to verify peer certificate!\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"  ! \00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"verification info: %s\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Certificate verified.\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Cipher suite is %s\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Writing HTTP request...\00", align 1
@REQUEST = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [17 x i8] c"%d bytes written\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"mbedtls_ssl_write returned -0x%x\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"Reading HTTP response...\00", align 1
@MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [32 x i8] c"mbedtls_ssl_read returned -0x%x\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"connection closed\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"%d bytes read\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Last error was: -0x%x - %s\00", align 1
@https_get_task.request_count = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [22 x i8] c"Completed %d requests\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"%d...\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [16 x i8] c"Starting again!\00", align 1
@CONFIG_MBEDTLS_DEBUG_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @https_get_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @https_get_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [512 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %16 = call i32 @mbedtls_ssl_init(i32* %9)
  %17 = call i32 @mbedtls_x509_crt_init(i32* %10)
  %18 = call i32 @mbedtls_ctr_drbg_init(i32* %8)
  %19 = load i32, i32* @TAG, align 4
  %20 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @mbedtls_ssl_config_init(i32* %11)
  %22 = call i32 @mbedtls_entropy_init(i32* %7)
  %23 = load i32, i32* @mbedtls_entropy_func, align 4
  %24 = call i32 @mbedtls_ctr_drbg_seed(i32* %8, i32 %23, i32* %7, i32* null, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load i32, i32* @TAG, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (i32, i8*, i32, ...) @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = call i32 (...) @abort() #3
  unreachable

31:                                               ; preds = %1
  %32 = load i32, i32* @TAG, align 4
  %33 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i64, i64* @server_root_cert_pem_start, align 8
  %35 = load i64, i64* @server_root_cert_pem_end, align 8
  %36 = load i64, i64* @server_root_cert_pem_start, align 8
  %37 = sub nsw i64 %35, %36
  %38 = call i32 @mbedtls_x509_crt_parse(i32* %10, i64 %34, i64 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load i32, i32* @TAG, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 0, %43
  %45 = call i32 (i32, i8*, i32, ...) @ESP_LOGE(i32 %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = call i32 (...) @abort() #3
  unreachable

47:                                               ; preds = %31
  %48 = load i32, i32* @TAG, align 4
  %49 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* @WEB_SERVER, align 4
  %51 = call i32 @mbedtls_ssl_set_hostname(i32* %9, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i32, i32* @TAG, align 4
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 0, %55
  %57 = call i32 (i32, i8*, i32, ...) @ESP_LOGE(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = call i32 (...) @abort() #3
  unreachable

59:                                               ; preds = %47
  %60 = load i32, i32* @TAG, align 4
  %61 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %62 = load i32, i32* @MBEDTLS_SSL_IS_CLIENT, align 4
  %63 = load i32, i32* @MBEDTLS_SSL_TRANSPORT_STREAM, align 4
  %64 = load i32, i32* @MBEDTLS_SSL_PRESET_DEFAULT, align 4
  %65 = call i32 @mbedtls_ssl_config_defaults(i32* %11, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* @TAG, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 (i32, i8*, i32, ...) @ESP_LOGE(i32 %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %69)
  br label %249

71:                                               ; preds = %59
  %72 = load i32, i32* @MBEDTLS_SSL_VERIFY_OPTIONAL, align 4
  %73 = call i32 @mbedtls_ssl_conf_authmode(i32* %11, i32 %72)
  %74 = call i32 @mbedtls_ssl_conf_ca_chain(i32* %11, i32* %10, i32* null)
  %75 = load i32, i32* @mbedtls_ctr_drbg_random, align 4
  %76 = call i32 @mbedtls_ssl_conf_rng(i32* %11, i32 %75, i32* %8)
  %77 = call i32 @mbedtls_ssl_setup(i32* %9, i32* %11)
  store i32 %77, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load i32, i32* @TAG, align 4
  %81 = load i32, i32* %4, align 4
  %82 = sub nsw i32 0, %81
  %83 = call i32 (i32, i8*, i32, ...) @ESP_LOGE(i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %82)
  br label %249

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %282
  %86 = call i32 @mbedtls_net_init(i32* %12)
  %87 = load i32, i32* @TAG, align 4
  %88 = load i32, i32* @WEB_SERVER, align 4
  %89 = load i32, i32* @WEB_PORT, align 4
  %90 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load i32, i32* @WEB_SERVER, align 4
  %92 = load i32, i32* @WEB_PORT, align 4
  %93 = load i32, i32* @MBEDTLS_NET_PROTO_TCP, align 4
  %94 = call i32 @mbedtls_net_connect(i32* %12, i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %85
  %97 = load i32, i32* @TAG, align 4
  %98 = load i32, i32* %4, align 4
  %99 = sub nsw i32 0, %98
  %100 = call i32 (i32, i8*, i32, ...) @ESP_LOGE(i32 %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %99)
  br label %249

101:                                              ; preds = %85
  %102 = load i32, i32* @TAG, align 4
  %103 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %104 = load i32, i32* @mbedtls_net_send, align 4
  %105 = load i32, i32* @mbedtls_net_recv, align 4
  %106 = call i32 @mbedtls_ssl_set_bio(i32* %9, i32* %12, i32 %104, i32 %105, i32* null)
  %107 = load i32, i32* @TAG, align 4
  %108 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %107, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  br label %109

109:                                              ; preds = %125, %101
  %110 = call i32 @mbedtls_ssl_handshake(i32* %9)
  store i32 %110, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_READ, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_WRITE, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i32, i32* @TAG, align 4
  %122 = load i32, i32* %4, align 4
  %123 = sub nsw i32 0, %122
  %124 = call i32 (i32, i8*, i32, ...) @ESP_LOGE(i32 %121, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 %123)
  br label %249

125:                                              ; preds = %116, %112
  br label %109

126:                                              ; preds = %109
  %127 = load i32, i32* @TAG, align 4
  %128 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %127, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  %129 = call i32 @mbedtls_ssl_get_verify_result(i32* %9)
  store i32 %129, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %126
  %132 = load i32, i32* @TAG, align 4
  %133 = call i32 (i32, i8*, ...) @ESP_LOGW(i32 %132, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  %134 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %135 = call i32 @bzero(i8* %134, i32 512)
  %136 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @mbedtls_x509_crt_verify_info(i8* %136, i32 512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @TAG, align 4
  %140 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %141 = call i32 (i32, i8*, ...) @ESP_LOGW(i32 %139, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* %140)
  br label %145

142:                                              ; preds = %126
  %143 = load i32, i32* @TAG, align 4
  %144 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %143, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142, %131
  %146 = load i32, i32* @TAG, align 4
  %147 = call i32 @mbedtls_ssl_get_ciphersuite(i32* %9)
  %148 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %146, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* @TAG, align 4
  %150 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %149, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  store i64 0, i64* %13, align 8
  br label %151

151:                                              ; preds = %186, %145
  %152 = load i64, i64* @REQUEST, align 8
  %153 = inttoptr i64 %152 to i8*
  %154 = load i64, i64* %13, align 8
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  %156 = load i64, i64* @REQUEST, align 8
  %157 = call i64 @strlen(i64 %156)
  %158 = load i64, i64* %13, align 8
  %159 = sub i64 %157, %158
  %160 = call i32 @mbedtls_ssl_write(i32* %9, i8* %155, i64 %159)
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* %4, align 4
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %151
  %164 = load i32, i32* @TAG, align 4
  %165 = load i32, i32* %4, align 4
  %166 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %164, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = load i64, i64* %13, align 8
  %170 = add i64 %169, %168
  store i64 %170, i64* %13, align 8
  br label %185

171:                                              ; preds = %151
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_WRITE, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %171
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_READ, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = load i32, i32* @TAG, align 4
  %181 = load i32, i32* %4, align 4
  %182 = sub nsw i32 0, %181
  %183 = call i32 (i32, i8*, i32, ...) @ESP_LOGE(i32 %180, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i32 %182)
  br label %249

184:                                              ; preds = %175, %171
  br label %185

185:                                              ; preds = %184, %163
  br label %186

186:                                              ; preds = %185
  %187 = load i64, i64* %13, align 8
  %188 = load i64, i64* @REQUEST, align 8
  %189 = call i64 @strlen(i64 %188)
  %190 = icmp ult i64 %187, %189
  br i1 %190, label %151, label %191

191:                                              ; preds = %186
  %192 = load i32, i32* @TAG, align 4
  %193 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0))
  br label %194

194:                                              ; preds = %246, %191
  store i32 511, i32* %6, align 4
  %195 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %196 = call i32 @bzero(i8* %195, i32 512)
  %197 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %198 = load i32, i32* %6, align 4
  %199 = call i32 @mbedtls_ssl_read(i32* %9, i8* %197, i32 %198)
  store i32 %199, i32* %4, align 4
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_READ, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %207, label %203

203:                                              ; preds = %194
  %204 = load i32, i32* %4, align 4
  %205 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_WRITE, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %203, %194
  br label %246

208:                                              ; preds = %203
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* @MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  store i32 0, i32* %4, align 4
  br label %247

213:                                              ; preds = %208
  %214 = load i32, i32* %4, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %213
  %217 = load i32, i32* @TAG, align 4
  %218 = load i32, i32* %4, align 4
  %219 = sub nsw i32 0, %218
  %220 = call i32 (i32, i8*, i32, ...) @ESP_LOGE(i32 %217, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i32 %219)
  br label %247

221:                                              ; preds = %213
  %222 = load i32, i32* %4, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i32, i32* @TAG, align 4
  %226 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %225, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0))
  br label %247

227:                                              ; preds = %221
  %228 = load i32, i32* %4, align 4
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* @TAG, align 4
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @ESP_LOGD(i32 %229, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i32 %230)
  store i32 0, i32* %14, align 4
  br label %232

232:                                              ; preds = %242, %227
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* %6, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %245

236:                                              ; preds = %232
  %237 = load i32, i32* %14, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = call i32 @putchar(i8 signext %240)
  br label %242

242:                                              ; preds = %236
  %243 = load i32, i32* %14, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %14, align 4
  br label %232

245:                                              ; preds = %232
  br label %246

246:                                              ; preds = %245, %207
  br i1 true, label %194, label %247

247:                                              ; preds = %246, %224, %216, %212
  %248 = call i32 @mbedtls_ssl_close_notify(i32* %9)
  br label %249

249:                                              ; preds = %247, %179, %120, %96, %79, %67
  %250 = call i32 @mbedtls_ssl_session_reset(i32* %9)
  %251 = call i32 @mbedtls_net_free(i32* %12)
  %252 = load i32, i32* %4, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %249
  %255 = load i32, i32* %4, align 4
  %256 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %257 = call i32 @mbedtls_strerror(i32 %255, i8* %256, i32 100)
  %258 = load i32, i32* @TAG, align 4
  %259 = load i32, i32* %4, align 4
  %260 = sub nsw i32 0, %259
  %261 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %262 = call i32 (i32, i8*, i32, ...) @ESP_LOGE(i32 %258, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 %260, i8* %261)
  br label %263

263:                                              ; preds = %254, %249
  %264 = call i32 @putchar(i8 signext 10)
  %265 = load i32, i32* @TAG, align 4
  %266 = load i32, i32* @https_get_task.request_count, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* @https_get_task.request_count, align 4
  %268 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %265, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), i32 %267)
  store i32 10, i32* %15, align 4
  br label %269

269:                                              ; preds = %279, %263
  %270 = load i32, i32* %15, align 4
  %271 = icmp sge i32 %270, 0
  br i1 %271, label %272, label %282

272:                                              ; preds = %269
  %273 = load i32, i32* @TAG, align 4
  %274 = load i32, i32* %15, align 4
  %275 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %273, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i32 %274)
  %276 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %277 = sdiv i32 1000, %276
  %278 = call i32 @vTaskDelay(i32 %277)
  br label %279

279:                                              ; preds = %272
  %280 = load i32, i32* %15, align 4
  %281 = add nsw i32 %280, -1
  store i32 %281, i32* %15, align 4
  br label %269

282:                                              ; preds = %269
  %283 = load i32, i32* @TAG, align 4
  %284 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %283, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0))
  br label %85
}

declare dso_local i32 @mbedtls_ssl_init(i32*) #1

declare dso_local i32 @mbedtls_x509_crt_init(i32*) #1

declare dso_local i32 @mbedtls_ctr_drbg_init(i32*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @mbedtls_ssl_config_init(i32*) #1

declare dso_local i32 @mbedtls_entropy_init(i32*) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @mbedtls_x509_crt_parse(i32*, i64, i64) #1

declare dso_local i32 @mbedtls_ssl_set_hostname(i32*, i32) #1

declare dso_local i32 @mbedtls_ssl_config_defaults(i32*, i32, i32, i32) #1

declare dso_local i32 @mbedtls_ssl_conf_authmode(i32*, i32) #1

declare dso_local i32 @mbedtls_ssl_conf_ca_chain(i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_ssl_conf_rng(i32*, i32, i32*) #1

declare dso_local i32 @mbedtls_ssl_setup(i32*, i32*) #1

declare dso_local i32 @mbedtls_net_init(i32*) #1

declare dso_local i32 @mbedtls_net_connect(i32*, i32, i32, i32) #1

declare dso_local i32 @mbedtls_ssl_set_bio(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @mbedtls_ssl_handshake(i32*) #1

declare dso_local i32 @mbedtls_ssl_get_verify_result(i32*) #1

declare dso_local i32 @ESP_LOGW(i32, i8*, ...) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @mbedtls_x509_crt_verify_info(i8*, i32, i8*, i32) #1

declare dso_local i32 @mbedtls_ssl_get_ciphersuite(i32*) #1

declare dso_local i32 @mbedtls_ssl_write(i32*, i8*, i64) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @mbedtls_ssl_read(i32*, i8*, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @mbedtls_ssl_close_notify(i32*) #1

declare dso_local i32 @mbedtls_ssl_session_reset(i32*) #1

declare dso_local i32 @mbedtls_net_free(i32*) #1

declare dso_local i32 @mbedtls_strerror(i32, i8*, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
