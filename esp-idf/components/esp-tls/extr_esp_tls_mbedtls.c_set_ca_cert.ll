; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_mbedtls.c_set_ca_cert.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_mbedtls.c_set_ca_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"mbedtls_x509_crt_parse returned -0x%x\00", align 1
@ERR_TYPE_MBEDTLS = common dso_local global i32 0, align 4
@ESP_ERR_MBEDTLS_X509_CRT_PARSE_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_SSL_VERIFY_REQUIRED = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i64)* @set_ca_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ca_cert(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = call i32 @assert(%struct.TYPE_4__* %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32* %12, i32** %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @mbedtls_x509_crt_init(i32* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @mbedtls_x509_crt_parse(i32* %21, i8* %22, i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %3
  %28 = load i32, i32* @TAG, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i32 @ESP_LOGE(i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ERR_TYPE_MBEDTLS, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %34, i32 %35, i32 %37)
  %39 = load i32, i32* @ESP_ERR_MBEDTLS_X509_CRT_PARSE_FAILED, align 4
  store i32 %39, i32* %4, align 4
  br label %52

40:                                               ; preds = %3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* @MBEDTLS_SSL_VERIFY_REQUIRED, align 4
  %44 = call i32 @mbedtls_ssl_conf_authmode(i32* %42, i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @mbedtls_ssl_conf_ca_chain(i32* %46, i32* %49, i32* null)
  %51 = load i32, i32* @ESP_OK, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %40, %27
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @mbedtls_x509_crt_init(i32*) #1

declare dso_local i32 @mbedtls_x509_crt_parse(i32*, i8*, i64) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32, i32, i32) #1

declare dso_local i32 @mbedtls_ssl_conf_authmode(i32*, i32) #1

declare dso_local i32 @mbedtls_ssl_conf_ca_chain(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
