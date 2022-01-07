; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_mbedtls.c_esp_create_mbedtls_handle.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_mbedtls.c_esp_create_mbedtls_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@ESP_FAIL = common dso_local global i64 0, align 8
@ESP_TLS_CLIENT = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to set client configurations\00", align 1
@ESP_TLS_SERVER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"ESP_TLS_SERVER Not enabled in Kconfig\00", align 1
@mbedtls_entropy_func = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"mbedtls_ctr_drbg_seed returned -0x%x\00", align 1
@ERR_TYPE_MBEDTLS = common dso_local global i32 0, align 4
@ESP_ERR_MBEDTLS_CTR_DRBG_SEED_FAILED = common dso_local global i64 0, align 8
@mbedtls_ctr_drbg_random = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"mbedtls_ssl_setup returned -0x%x\00", align 1
@ESP_ERR_MBEDTLS_SSL_SETUP_FAILED = common dso_local global i64 0, align 8
@mbedtls_net_send = common dso_local global i32 0, align 4
@mbedtls_net_recv = common dso_local global i32 0, align 4
@CONFIG_MBEDTLS_DEBUG_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_create_mbedtls_handle(i8* %0, i64 %1, i8* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i64, i64* @ESP_FAIL, align 8
  store i64 %20, i64* %11, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = call i32 @mbedtls_ssl_init(i32* %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 5
  %32 = call i32 @mbedtls_ctr_drbg_init(i32* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  %35 = call i32 @mbedtls_ssl_config_init(i32* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 6
  %38 = call i32 @mbedtls_entropy_init(i32* %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ESP_TLS_CLIENT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %4
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = call i64 @set_client_config(i8* %45, i64 %46, i32* %48, %struct.TYPE_7__* %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @ESP_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @TAG, align 4
  %56 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %124

57:                                               ; preds = %44
  br label %68

58:                                               ; preds = %4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ESP_TLS_SERVER, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @TAG, align 4
  %66 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %124

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %57
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 5
  %71 = load i32, i32* @mbedtls_entropy_func, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 6
  %74 = call i32 @mbedtls_ctr_drbg_seed(i32* %70, i32 %71, i32* %73, i32* null, i32 0)
  store i32 %74, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %68
  %77 = load i32, i32* @TAG, align 4
  %78 = load i32, i32* %10, align 4
  %79 = sub nsw i32 0, %78
  %80 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ERR_TYPE_MBEDTLS, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 0, %85
  %87 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %83, i32 %84, i32 %86)
  %88 = load i64, i64* @ESP_ERR_MBEDTLS_CTR_DRBG_SEED_FAILED, align 8
  store i64 %88, i64* %11, align 8
  br label %124

89:                                               ; preds = %68
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  %92 = load i32, i32* @mbedtls_ctr_drbg_random, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 5
  %95 = call i32 @mbedtls_ssl_conf_rng(i32* %91, i32 %92, i32* %94)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 4
  %100 = call i32 @mbedtls_ssl_setup(i32* %97, i32* %99)
  store i32 %100, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %89
  %103 = load i32, i32* @TAG, align 4
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 0, %104
  %106 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @ERR_TYPE_MBEDTLS, align 4
  %111 = load i32, i32* %10, align 4
  %112 = sub nsw i32 0, %111
  %113 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %109, i32 %110, i32 %112)
  %114 = load i64, i64* @ESP_ERR_MBEDTLS_SSL_SETUP_FAILED, align 8
  store i64 %114, i64* %11, align 8
  br label %124

115:                                              ; preds = %89
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32, i32* @mbedtls_net_send, align 4
  %121 = load i32, i32* @mbedtls_net_recv, align 4
  %122 = call i32 @mbedtls_ssl_set_bio(i32* %117, %struct.TYPE_8__* %119, i32 %120, i32 %121, i32* null)
  %123 = load i64, i64* @ESP_OK, align 8
  store i64 %123, i64* %5, align 8
  br label %128

124:                                              ; preds = %102, %76, %64, %54
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %126 = call i32 @esp_mbedtls_cleanup(%struct.TYPE_7__* %125)
  %127 = load i64, i64* %11, align 8
  store i64 %127, i64* %5, align 8
  br label %128

128:                                              ; preds = %124, %115
  %129 = load i64, i64* %5, align 8
  ret i64 %129
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mbedtls_ssl_init(i32*) #1

declare dso_local i32 @mbedtls_ctr_drbg_init(i32*) #1

declare dso_local i32 @mbedtls_ssl_config_init(i32*) #1

declare dso_local i32 @mbedtls_entropy_init(i32*) #1

declare dso_local i64 @set_client_config(i8*, i64, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32, i32, i32) #1

declare dso_local i32 @mbedtls_ssl_conf_rng(i32*, i32, i32*) #1

declare dso_local i32 @mbedtls_ssl_setup(i32*, i32*) #1

declare dso_local i32 @mbedtls_ssl_set_bio(i32*, %struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @esp_mbedtls_cleanup(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
