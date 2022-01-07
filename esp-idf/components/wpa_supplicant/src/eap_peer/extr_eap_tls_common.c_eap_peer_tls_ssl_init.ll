; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_ssl_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_ssl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ssl_data = type { i32, i32, i32, i32, %struct.eap_sm* }
%struct.eap_peer_config = type { i64, i32 }
%struct.tls_connection_params = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"include_tls_length=1\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"TLS: Include TLS Message Length in unfragmented packets\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_peer_tls_ssl_init(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, %struct.eap_peer_config* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_ssl_data*, align 8
  %8 = alloca %struct.eap_peer_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tls_connection_params, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %7, align 8
  store %struct.eap_peer_config* %2, %struct.eap_peer_config** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %12 = icmp eq %struct.eap_peer_config* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %61

14:                                               ; preds = %4
  %15 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %16 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %17 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %16, i32 0, i32 4
  store %struct.eap_sm* %15, %struct.eap_sm** %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %20 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %22 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %25 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %27 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %28 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %29 = call i64 @eap_tls_params_from_conf(%struct.eap_sm* %26, %struct.eap_ssl_data* %27, %struct.tls_connection_params* %10, %struct.eap_peer_config* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %14
  store i32 -1, i32* %5, align 4
  br label %61

32:                                               ; preds = %14
  %33 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %34 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %35 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %36 = call i64 @eap_tls_init_connection(%struct.eap_sm* %33, %struct.eap_ssl_data* %34, %struct.eap_peer_config* %35, %struct.tls_connection_params* %10)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 -1, i32* %5, align 4
  br label %61

39:                                               ; preds = %32
  %40 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %41 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %44 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %46 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %39
  %50 = load %struct.eap_peer_config*, %struct.eap_peer_config** %8, align 8
  %51 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @os_strstr(i64 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* @MSG_INFO, align 4
  %57 = call i32 @wpa_printf(i32 %56, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %7, align 8
  %59 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %55, %49, %39
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %38, %31, %13
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @eap_tls_params_from_conf(%struct.eap_sm*, %struct.eap_ssl_data*, %struct.tls_connection_params*, %struct.eap_peer_config*) #1

declare dso_local i64 @eap_tls_init_connection(%struct.eap_sm*, %struct.eap_ssl_data*, %struct.eap_peer_config*, %struct.tls_connection_params*) #1

declare dso_local i64 @os_strstr(i64, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
