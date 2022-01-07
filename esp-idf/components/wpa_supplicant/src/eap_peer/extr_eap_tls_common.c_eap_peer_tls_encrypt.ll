; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_encrypt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ssl_data = type { i32*, i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"SSL: Failed to encrypt Phase 2 data (in_len=%lu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_peer_tls_encrypt(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, i32 %2, i32 %3, i32 %4, %struct.wpabuf* %5, %struct.wpabuf** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.eap_sm*, align 8
  %10 = alloca %struct.eap_ssl_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca %struct.wpabuf**, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %9, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.wpabuf* %5, %struct.wpabuf** %14, align 8
  store %struct.wpabuf** %6, %struct.wpabuf*** %15, align 8
  %16 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %17 = icmp ne %struct.wpabuf* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %7
  %19 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %20 = call i32 @eap_peer_tls_reset_output(%struct.eap_ssl_data* %19)
  %21 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %22 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %25 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %28 = call i32* @tls_connection_encrypt(i32 %23, i32 %26, %struct.wpabuf* %27)
  %29 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %30 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %32 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %18
  %36 = load i32, i32* @MSG_INFO, align 4
  %37 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %38 = call i64 @wpabuf_len(%struct.wpabuf* %37)
  %39 = call i32 @wpa_printf(i32 %36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %41 = call i32 @eap_peer_tls_reset_output(%struct.eap_ssl_data* %40)
  store i32 -1, i32* %8, align 4
  br label %50

42:                                               ; preds = %18
  br label %43

43:                                               ; preds = %42, %7
  %44 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.wpabuf**, %struct.wpabuf*** %15, align 8
  %49 = call i32 @eap_tls_process_output(%struct.eap_ssl_data* %44, i32 %45, i32 %46, i32 %47, i32 0, %struct.wpabuf** %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %43, %35
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @eap_peer_tls_reset_output(%struct.eap_ssl_data*) #1

declare dso_local i32* @tls_connection_encrypt(i32, i32, %struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @eap_tls_process_output(%struct.eap_ssl_data*, i32, i32, i32, i32, %struct.wpabuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
