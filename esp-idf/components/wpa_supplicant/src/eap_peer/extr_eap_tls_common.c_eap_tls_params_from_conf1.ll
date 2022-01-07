; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_tls_params_from_conf1.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_tls_params_from_conf1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection_params = type { i8*, i8*, i8*, i8*, i8*, i32 }
%struct.eap_peer_config = type { i32, i64, i64, i64, i64, i64 }

@TLS_CONN_DISABLE_TIME_CHECKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tls_connection_params*, %struct.eap_peer_config*)* @eap_tls_params_from_conf1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_tls_params_from_conf1(%struct.tls_connection_params* %0, %struct.eap_peer_config* %1) #0 {
  %3 = alloca %struct.tls_connection_params*, align 8
  %4 = alloca %struct.eap_peer_config*, align 8
  store %struct.tls_connection_params* %0, %struct.tls_connection_params** %3, align 8
  store %struct.eap_peer_config* %1, %struct.eap_peer_config** %4, align 8
  %5 = load %struct.eap_peer_config*, %struct.eap_peer_config** %4, align 8
  %6 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %10 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = load %struct.eap_peer_config*, %struct.eap_peer_config** %4, align 8
  %12 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %16 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.eap_peer_config*, %struct.eap_peer_config** %4, align 8
  %18 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %22 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.eap_peer_config*, %struct.eap_peer_config** %4, align 8
  %24 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %28 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.eap_peer_config*, %struct.eap_peer_config** %4, align 8
  %30 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %34 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %36 = load %struct.eap_peer_config*, %struct.eap_peer_config** %4, align 8
  %37 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @eap_tls_params_flags(%struct.tls_connection_params* %35, i32 %38)
  %40 = call i64 (...) @wifi_sta_get_enterprise_disable_time_check()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %2
  %43 = load i32, i32* @TLS_CONN_DISABLE_TIME_CHECKS, align 4
  %44 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %45 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %55

48:                                               ; preds = %2
  %49 = load i32, i32* @TLS_CONN_DISABLE_TIME_CHECKS, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.tls_connection_params*, %struct.tls_connection_params** %3, align 8
  %52 = getelementptr inbounds %struct.tls_connection_params, %struct.tls_connection_params* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %48, %42
  ret void
}

declare dso_local i32 @eap_tls_params_flags(%struct.tls_connection_params*, i32) #1

declare dso_local i64 @wifi_sta_get_enterprise_disable_time_check(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
