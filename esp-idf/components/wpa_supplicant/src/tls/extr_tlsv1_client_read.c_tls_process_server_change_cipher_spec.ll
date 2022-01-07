; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_read.c_tls_process_server_change_cipher_spec.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_read.c_tls_process_server_change_cipher_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32 (i32, i32*, i32, i32*, i32*, i32*)*, i32, i32, i32, i64 }

@TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"TLSv1: Expected ChangeCipherSpec; received content type 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"TLSv1: Server may have rejected SessionTicket\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"TLSv1: SessionTicket callback indicated failure\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"[Debug] set the state to server certificate \0A\00", align 1
@SERVER_CERTIFICATE = common dso_local global i32 0, align 4
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"TLSv1: Too short ChangeCipherSpec\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@TLS_CHANGE_CIPHER_SPEC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c"TLSv1: Expected ChangeCipherSpec; received data 0x%x\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"TLSv1: Received ChangeCipherSpec\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"TLSv1: Failed to change read cipher for record layer\00", align 1
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SERVER_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i64, i64*, i64*)* @tls_process_server_change_cipher_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_server_change_cipher_spec(%struct.tlsv1_client* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tlsv1_client*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %4
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load i64, i64* %7, align 8
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %21 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %16
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %28 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %30 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %29, i32 0, i32 0
  %31 = load i32 (i32, i32*, i32, i32*, i32*, i32*)*, i32 (i32, i32*, i32, i32*, i32*, i32*)** %30, align 8
  %32 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %33 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %31(i32 %34, i32* null, i32 0, i32* null, i32* null, i32* null)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %24
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %42 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %43 = load i32, i32* @TLS_ALERT_HANDSHAKE_FAILURE, align 4
  %44 = call i32 @tls_alert(%struct.tlsv1_client* %41, i32 %42, i32 %43)
  store i32 -1, i32* %5, align 4
  br label %113

45:                                               ; preds = %24
  %46 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @SERVER_CERTIFICATE, align 4
  %48 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %49 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64*, i64** %8, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = call i32 @tls_process_certificate(%struct.tlsv1_client* %50, i64 %51, i64* %52, i64* %53)
  store i32 %54, i32* %5, align 4
  br label %113

55:                                               ; preds = %16
  %56 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %57 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %58 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %59 = call i32 @tls_alert(%struct.tlsv1_client* %56, i32 %57, i32 %58)
  store i32 -1, i32* %5, align 4
  br label %113

60:                                               ; preds = %4
  %61 = load i64*, i64** %8, align 8
  store i64* %61, i64** %10, align 8
  %62 = load i64*, i64** %9, align 8
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp ult i64 %64, 1
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %69 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %70 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %71 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %72 = call i32 @tls_alert(%struct.tlsv1_client* %69, i32 %70, i32 %71)
  store i32 -1, i32* %5, align 4
  br label %113

73:                                               ; preds = %60
  %74 = load i64*, i64** %10, align 8
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @TLS_CHANGE_CIPHER_SPEC, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i32, i32* @MSG_DEBUG, align 4
  %80 = load i64*, i64** %10, align 8
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %79, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i64 %81)
  %83 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %84 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %85 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %86 = call i32 @tls_alert(%struct.tlsv1_client* %83, i32 %84, i32 %85)
  store i32 -1, i32* %5, align 4
  br label %113

87:                                               ; preds = %73
  %88 = load i32, i32* @MSG_DEBUG, align 4
  %89 = call i32 (i32, i8*, ...) @wpa_printf(i32 %88, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %90 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %91 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %90, i32 0, i32 2
  %92 = call i64 @tlsv1_record_change_read_cipher(i32* %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = call i32 (i32, i8*, ...) @wpa_printf(i32 %95, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %97 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %98 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %99 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %100 = call i32 @tls_alert(%struct.tlsv1_client* %97, i32 %98, i32 %99)
  store i32 -1, i32* %5, align 4
  br label %113

101:                                              ; preds = %87
  %102 = load i64*, i64** %10, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 1
  %104 = load i64*, i64** %8, align 8
  %105 = ptrtoint i64* %103 to i64
  %106 = ptrtoint i64* %104 to i64
  %107 = sub i64 %105, %106
  %108 = sdiv exact i64 %107, 8
  %109 = load i64*, i64** %9, align 8
  store i64 %108, i64* %109, align 8
  %110 = load i32, i32* @SERVER_FINISHED, align 4
  %111 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %112 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %101, %94, %78, %66, %55, %45, %38
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @tls_process_certificate(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i64 @tlsv1_record_change_read_cipher(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
