; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_tls_init_connection.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_tls_init_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ssl_data = type { i32*, i32 }
%struct.eap_peer_config = type { i32, i32* }
%struct.tls_connection_params = type { i32 }

@TLS_CONN_REQUEST_OCSP = common dso_local global i32 0, align 4
@TLS_CONN_REQUIRE_OCSP = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"SSL: Failed to initialize new TLS connection\00", align 1
@TLS_SET_PARAMS_ENGINE_PRV_INIT_FAILED = common dso_local global i32 0, align 4
@TLS_SET_PARAMS_ENGINE_PRV_VERIFY_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"TLS: Failed to load private key\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"TLS: Failed to set TLS connection parameters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_ssl_data*, %struct.eap_peer_config*, %struct.tls_connection_params*)* @eap_tls_init_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_tls_init_connection(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, %struct.eap_peer_config* %2, %struct.tls_connection_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_ssl_data*, align 8
  %8 = alloca %struct.eap_peer_config*, align 8
  %9 = alloca %struct.tls_connection_params*, align 8
  %10 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %7, align 8
  store %struct.eap_peer_config* %2, %struct.eap_peer_config** %8, align 8
  store %struct.tls_connection_params* %3, %struct.tls_connection_params** %9, align 8
  %11 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %12 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* @TLS_CONN_REQUEST_OCSP, align 4
  %17 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %18 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %15, %4
  %22 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %23 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* @TLS_CONN_REQUIRE_OCSP, align 4
  %28 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %29 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %34 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32* @tls_connection_init(i32 %35)
  %37 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %38 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %40 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @MSG_INFO, align 4
  %45 = call i32 @wpa_printf(i32 %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %105

46:                                               ; preds = %32
  %47 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %48 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %51 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.tls_connection_params*, %struct.tls_connection_params** %9, align 8
  %54 = call i32 @tls_connection_set_params(i32 %49, i32* %52, %struct.tls_connection_params* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @TLS_SET_PARAMS_ENGINE_PRV_INIT_FAILED, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %46
  %59 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %60 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @os_free(i32* %61)
  %63 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %64 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %63, i32 0, i32 1
  store i32* null, i32** %64, align 8
  br label %104

65:                                               ; preds = %46
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @TLS_SET_PARAMS_ENGINE_PRV_VERIFY_FAILED, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = load i32, i32* @MSG_INFO, align 4
  %71 = call i32 @wpa_printf(i32 %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %73 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @os_free(i32* %74)
  %76 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %77 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %76, i32 0, i32 1
  store i32* null, i32** %77, align 8
  %78 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %79 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %82 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @tls_connection_deinit(i32 %80, i32* %83)
  %85 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %86 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  store i32 -1, i32* %5, align 4
  br label %105

87:                                               ; preds = %65
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load i32, i32* @MSG_INFO, align 4
  %92 = call i32 @wpa_printf(i32 %91, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %93 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %94 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %97 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @tls_connection_deinit(i32 %95, i32* %98)
  %100 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %101 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %100, i32 0, i32 0
  store i32* null, i32** %101, align 8
  store i32 -1, i32* %5, align 4
  br label %105

102:                                              ; preds = %87
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103, %58
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %90, %69, %43
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32* @tls_connection_init(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @tls_connection_set_params(i32, i32*, %struct.tls_connection_params*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @tls_connection_deinit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
