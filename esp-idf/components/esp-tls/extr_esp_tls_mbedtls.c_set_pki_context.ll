; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_mbedtls.c_set_pki_context.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_mbedtls.c_set_pki_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32*, i32, i32, i32*, i32, i32* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"mbedtls_x509_crt_parse returned -0x%x\00", align 1
@ERR_TYPE_MBEDTLS = common dso_local global i32 0, align 4
@ESP_ERR_MBEDTLS_X509_CRT_PARSE_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"mbedtls_pk_parse_keyfile returned -0x%x\00", align 1
@ESP_ERR_MBEDTLS_PK_PARSE_KEY_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"mbedtls_ssl_conf_own_cert returned -0x%x\00", align 1
@ESP_ERR_MBEDTLS_SSL_CONF_OWN_CERT_FAILED = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_6__*)* @set_pki_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pki_context(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_6__* %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = call i32 @assert(%struct.TYPE_6__* %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 7
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %116

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %116

20:                                               ; preds = %15
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %116

25:                                               ; preds = %20
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %116

30:                                               ; preds = %25
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @mbedtls_x509_crt_init(i32* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @mbedtls_pk_init(i32* %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 7
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @mbedtls_x509_crt_parse(i32* %41, i32* %44, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %30
  %52 = load i32, i32* @TAG, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 0, %53
  %55 = call i32 @ESP_LOGE(i32 %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ERR_TYPE_MBEDTLS, align 4
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 0, %60
  %62 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %58, i32 %59, i32 %61)
  %63 = load i32, i32* @ESP_ERR_MBEDTLS_X509_CRT_PARSE_FAILED, align 4
  store i32 %63, i32* %3, align 4
  br label %120

64:                                               ; preds = %30
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @mbedtls_pk_parse_key(i32* %67, i32* %70, i32 %73, i32* null, i32 0)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %64
  %78 = load i32, i32* @TAG, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 0, %79
  %81 = call i32 @ESP_LOGE(i32 %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ERR_TYPE_MBEDTLS, align 4
  %86 = load i32, i32* %6, align 4
  %87 = sub nsw i32 0, %86
  %88 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %84, i32 %85, i32 %87)
  %89 = load i32, i32* @ESP_ERR_MBEDTLS_PK_PARSE_KEY_FAILED, align 4
  store i32 %89, i32* %3, align 4
  br label %120

90:                                               ; preds = %64
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @mbedtls_ssl_conf_own_cert(i32* %92, i32* %95, i32* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %90
  %103 = load i32, i32* @TAG, align 4
  %104 = load i32, i32* %6, align 4
  %105 = sub nsw i32 0, %104
  %106 = call i32 @ESP_LOGE(i32 %103, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @ERR_TYPE_MBEDTLS, align 4
  %111 = load i32, i32* %6, align 4
  %112 = sub nsw i32 0, %111
  %113 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %109, i32 %110, i32 %112)
  %114 = load i32, i32* @ESP_ERR_MBEDTLS_SSL_CONF_OWN_CERT_FAILED, align 4
  store i32 %114, i32* %3, align 4
  br label %120

115:                                              ; preds = %90
  br label %118

116:                                              ; preds = %25, %20, %15, %2
  %117 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %117, i32* %3, align 4
  br label %120

118:                                              ; preds = %115
  %119 = load i32, i32* @ESP_OK, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %116, %102, %77, %51
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @mbedtls_x509_crt_init(i32*) #1

declare dso_local i32 @mbedtls_pk_init(i32*) #1

declare dso_local i32 @mbedtls_x509_crt_parse(i32*, i32*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32, i32, i32) #1

declare dso_local i32 @mbedtls_pk_parse_key(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @mbedtls_ssl_conf_own_cert(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
