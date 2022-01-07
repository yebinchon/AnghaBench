; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_tls_params_from_conf.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_tls_params_from_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i64 }
%struct.eap_ssl_data = type { i64 }
%struct.tls_connection_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.eap_peer_config = type { i32 }

@EAP_TYPE_FAST = common dso_local global i64 0, align 8
@TLS_CONN_DISABLE_SESSION_TICKET = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"TLS: using phase1 config options\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"SSL: Failed to get configuration blobs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_ssl_data*, %struct.tls_connection_params*, %struct.eap_peer_config*)* @eap_tls_params_from_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_tls_params_from_conf(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, %struct.tls_connection_params* %2, %struct.eap_peer_config* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_ssl_data*, align 8
  %8 = alloca %struct.tls_connection_params*, align 8
  %9 = alloca %struct.eap_peer_config*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %7, align 8
  store %struct.tls_connection_params* %2, %struct.tls_connection_params** %8, align 8
  store %struct.eap_peer_config* %3, %struct.eap_peer_config** %9, align 8
  %10 = load %struct.tls_connection_params*, %struct.tls_connection_params** %8, align 8
  %11 = call i32 @os_memset(%struct.tls_connection_params* %10, i32 0, i32 40)
  %12 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %13 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %4
  %17 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %18 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EAP_TYPE_FAST, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i32, i32* @TLS_CONN_DISABLE_SESSION_TICKET, align 4
  %24 = load %struct.tls_connection_params*, %struct.tls_connection_params** %8, align 8
  %25 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %16, %4
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.tls_connection_params*, %struct.tls_connection_params** %8, align 8
  %32 = load %struct.eap_peer_config*, %struct.eap_peer_config** %9, align 8
  %33 = call i32 @eap_tls_params_from_conf1(%struct.tls_connection_params* %31, %struct.eap_peer_config* %32)
  %34 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %35 = load %struct.tls_connection_params*, %struct.tls_connection_params** %8, align 8
  %36 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %35, i32 0, i32 8
  %37 = load %struct.tls_connection_params*, %struct.tls_connection_params** %8, align 8
  %38 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %37, i32 0, i32 7
  %39 = load %struct.tls_connection_params*, %struct.tls_connection_params** %8, align 8
  %40 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %39, i32 0, i32 6
  %41 = call i64 @eap_tls_check_blob(%struct.eap_sm* %34, i32* %36, i32* %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %63, label %43

43:                                               ; preds = %28
  %44 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %45 = load %struct.tls_connection_params*, %struct.tls_connection_params** %8, align 8
  %46 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %45, i32 0, i32 5
  %47 = load %struct.tls_connection_params*, %struct.tls_connection_params** %8, align 8
  %48 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %47, i32 0, i32 4
  %49 = load %struct.tls_connection_params*, %struct.tls_connection_params** %8, align 8
  %50 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %49, i32 0, i32 3
  %51 = call i64 @eap_tls_check_blob(%struct.eap_sm* %44, i32* %46, i32* %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %43
  %54 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %55 = load %struct.tls_connection_params*, %struct.tls_connection_params** %8, align 8
  %56 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %55, i32 0, i32 2
  %57 = load %struct.tls_connection_params*, %struct.tls_connection_params** %8, align 8
  %58 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %57, i32 0, i32 1
  %59 = load %struct.tls_connection_params*, %struct.tls_connection_params** %8, align 8
  %60 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %59, i32 0, i32 0
  %61 = call i64 @eap_tls_check_blob(%struct.eap_sm* %54, i32* %56, i32* %58, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53, %43, %28
  %64 = load i32, i32* @MSG_INFO, align 4
  %65 = call i32 @wpa_printf(i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %67

66:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @os_memset(%struct.tls_connection_params*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_tls_params_from_conf1(%struct.tls_connection_params*, %struct.eap_peer_config*) #1

declare dso_local i64 @eap_tls_check_blob(%struct.eap_sm*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
