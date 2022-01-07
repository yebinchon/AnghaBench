; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_mbedtls_ssl_config_defaults.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_mbedtls_ssl_config_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32*, i32*, i8*, i8*, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MBEDTLS_SSL_MAJOR_VERSION_3 = common dso_local global i8* null, align 8
@MBEDTLS_SSL_MINOR_VERSION_3 = common dso_local global i64 0, align 8
@MBEDTLS_SSL_MAX_MAJOR_VERSION = common dso_local global i8* null, align 8
@MBEDTLS_SSL_MAX_MINOR_VERSION = common dso_local global i8* null, align 8
@ssl_preset_suiteb_ciphersuites = common dso_local global i32 0, align 4
@MBEDTLS_SSL_MINOR_VERSION_2 = common dso_local global i64 0, align 8
@MBEDTLS_SSL_MINOR_VERSION_1 = common dso_local global i64 0, align 8
@MBEDTLS_SSL_MINOR_VERSION_0 = common dso_local global i64 0, align 8
@MBEDTLS_DHM_RFC5114_MODP_2048_G = common dso_local global i32 0, align 4
@MBEDTLS_DHM_RFC5114_MODP_2048_P = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ANTI_REPLAY_ENABLED = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ARC4_DISABLED = common dso_local global i32 0, align 4
@MBEDTLS_SSL_CBC_RECORD_SPLITTING_ENABLED = common dso_local global i32 0, align 4
@MBEDTLS_SSL_CERT_REQ_CA_LIST_ENABLED = common dso_local global i32 0, align 4
@MBEDTLS_SSL_DTLS_TIMEOUT_DFL_MAX = common dso_local global i32 0, align 4
@MBEDTLS_SSL_DTLS_TIMEOUT_DFL_MIN = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ETM_ENABLED = common dso_local global i32 0, align 4
@MBEDTLS_SSL_EXTENDED_MS_ENABLED = common dso_local global i32 0, align 4
@MBEDTLS_SSL_IS_CLIENT = common dso_local global i32 0, align 4
@MBEDTLS_SSL_IS_SERVER = common dso_local global i32 0, align 4
@MBEDTLS_SSL_RENEGO_MAX_RECORDS_DEFAULT = common dso_local global i32 0, align 4
@MBEDTLS_SSL_SESSION_TICKETS_ENABLED = common dso_local global i32 0, align 4
@MBEDTLS_SSL_TRANSPORT_DATAGRAM = common dso_local global i32 0, align 4
@MBEDTLS_SSL_VERIFY_REQUIRED = common dso_local global i32 0, align 4
@mbedtls_x509_crt_profile_default = common dso_local global i32 0, align 4
@mbedtls_x509_crt_profile_suiteb = common dso_local global i32 0, align 4
@ssl_cookie_check_dummy = common dso_local global i32 0, align 4
@ssl_cookie_write_dummy = common dso_local global i32 0, align 4
@ssl_preset_default_hashes = common dso_local global i32 0, align 4
@ssl_preset_suiteb_curves = common dso_local global i32 0, align 4
@ssl_preset_suiteb_hashes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_config_defaults(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @mbedtls_ssl_conf_endpoint(%struct.TYPE_6__* %9, i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @mbedtls_ssl_conf_transport(%struct.TYPE_6__* %12, i32 %13)
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %50 [
    i32 128, label %16
  ]

16:                                               ; preds = %4
  %17 = load i8*, i8** @MBEDTLS_SSL_MAJOR_VERSION_3, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 8
  store i8* %17, i8** %19, align 8
  %20 = load i64, i64* @MBEDTLS_SSL_MINOR_VERSION_3, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i8*, i8** @MBEDTLS_SSL_MAX_MAJOR_VERSION, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @MBEDTLS_SSL_MAX_MINOR_VERSION, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 6
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @ssl_preset_suiteb_ciphersuites, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @MBEDTLS_SSL_MINOR_VERSION_3, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 %29, i32* %34, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @MBEDTLS_SSL_MINOR_VERSION_2, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %29, i32* %39, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @MBEDTLS_SSL_MINOR_VERSION_1, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %29, i32* %44, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @MBEDTLS_SSL_MINOR_VERSION_0, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %29, i32* %49, align 4
  br label %84

50:                                               ; preds = %4
  %51 = load i8*, i8** @MBEDTLS_SSL_MAJOR_VERSION_3, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 8
  store i8* %51, i8** %53, align 8
  %54 = load i64, i64* @MBEDTLS_SSL_MINOR_VERSION_1, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i8*, i8** @MBEDTLS_SSL_MAX_MAJOR_VERSION, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @MBEDTLS_SSL_MAX_MINOR_VERSION, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  %63 = call i32 (...) @mbedtls_ssl_list_ciphersuites()
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @MBEDTLS_SSL_MINOR_VERSION_3, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %63, i32* %68, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @MBEDTLS_SSL_MINOR_VERSION_2, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 %63, i32* %73, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @MBEDTLS_SSL_MINOR_VERSION_1, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 %63, i32* %78, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 5
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @MBEDTLS_SSL_MINOR_VERSION_0, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 %63, i32* %83, align 4
  br label %84

84:                                               ; preds = %50, %16
  ret i32 0
}

declare dso_local i32 @mbedtls_ssl_conf_endpoint(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mbedtls_ssl_conf_transport(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mbedtls_ssl_list_ciphersuites(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
