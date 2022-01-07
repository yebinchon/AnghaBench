; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_tls_process_input.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_tls_common.c_eap_tls_process_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ssl_data = type { i32, i32, %struct.wpabuf* }
%struct.wpabuf = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"SSL: eap_tls_process_input - pending tls_out data even though tls_out_len = 0\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"SSL: Application data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_ssl_data*, i32*, i64, %struct.wpabuf**)* @eap_tls_process_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_tls_process_input(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, i32* %2, i64 %3, %struct.wpabuf** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_ssl_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wpabuf**, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca %struct.wpabuf, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.wpabuf** %4, %struct.wpabuf*** %11, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @wpabuf_set(%struct.wpabuf* %15, i32* %16, i64 %17)
  %19 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %20 = call %struct.wpabuf* @eap_peer_tls_data_reassemble(%struct.eap_ssl_data* %19, %struct.wpabuf* %15, i32* %13)
  store %struct.wpabuf* %20, %struct.wpabuf** %12, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %22 = icmp eq %struct.wpabuf* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 -1
  store i32 %27, i32* %6, align 4
  br label %82

28:                                               ; preds = %5
  %29 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %30 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %29, i32 0, i32 2
  %31 = load %struct.wpabuf*, %struct.wpabuf** %30, align 8
  %32 = icmp ne %struct.wpabuf* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* @MSG_INFO, align 4
  %35 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %37 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %36, i32 0, i32 2
  %38 = load %struct.wpabuf*, %struct.wpabuf** %37, align 8
  %39 = call i32 @wpabuf_free(%struct.wpabuf* %38)
  br label %40

40:                                               ; preds = %33, %28
  store %struct.wpabuf* null, %struct.wpabuf** %14, align 8
  %41 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %42 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %45 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %48 = call %struct.wpabuf* @tls_connection_handshake(i32 %43, i32 %46, %struct.wpabuf* %47, %struct.wpabuf** %14)
  %49 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %50 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %49, i32 0, i32 2
  store %struct.wpabuf* %48, %struct.wpabuf** %50, align 8
  %51 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %52 = call i32 @eap_peer_tls_reset_input(%struct.eap_ssl_data* %51)
  %53 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %54 = icmp ne %struct.wpabuf* %53, null
  br i1 %54, label %55, label %79

55:                                               ; preds = %40
  %56 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %57 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %60 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @tls_connection_established(i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %55
  %65 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %66 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %8, align 8
  %69 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @tls_connection_get_failed(i32 %67, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %64
  %74 = load i32, i32* @MSG_MSGDUMP, align 4
  %75 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %76 = call i32 @wpa_hexdump_buf_key(i32 %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.wpabuf* %75)
  %77 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %78 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  store %struct.wpabuf* %77, %struct.wpabuf** %78, align 8
  store i32 2, i32* %6, align 4
  br label %82

79:                                               ; preds = %64, %55, %40
  %80 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %81 = call i32 @wpabuf_free(%struct.wpabuf* %80)
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %79, %73, %23
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, i32*, i64) #1

declare dso_local %struct.wpabuf* @eap_peer_tls_data_reassemble(%struct.eap_ssl_data*, %struct.wpabuf*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @tls_connection_handshake(i32, i32, %struct.wpabuf*, %struct.wpabuf**) #1

declare dso_local i32 @eap_peer_tls_reset_input(%struct.eap_ssl_data*) #1

declare dso_local i64 @tls_connection_established(i32, i32) #1

declare dso_local i32 @tls_connection_get_failed(i32, i32) #1

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
