; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_read.c_tlsv1_server_process_handshake.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_read.c_tlsv1_server_process_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, i32 }

@TLS_CONTENT_TYPE_ALERT = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"TLSv1: Alert underflow\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"TLSv1: Received alert %d:%d\00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"TLSv1: Unexpected state %d while processing received message\00", align 1
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_server_process_handshake(%struct.tlsv1_server* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tlsv1_server*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @TLS_CONTENT_TYPE_ALERT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %4
  %14 = load i64*, i64** %9, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %15, 2
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %21 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %22 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %23 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %20, i32 %21, i32 %22)
  store i32 -1, i32* %5, align 4
  br label %113

24:                                               ; preds = %13
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = load i64*, i64** %8, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %28, i64 %31)
  %33 = load i64*, i64** %9, align 8
  store i64 2, i64* %33, align 8
  %34 = load i32, i32* @FAILED, align 4
  %35 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %36 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  store i32 -1, i32* %5, align 4
  br label %113

37:                                               ; preds = %4
  %38 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %39 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %95 [
    i32 129, label %41
    i32 131, label %50
    i32 128, label %59
    i32 133, label %68
    i32 132, label %77
    i32 130, label %86
  ]

41:                                               ; preds = %37
  %42 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load i64*, i64** %9, align 8
  %46 = call i32 @tls_process_client_hello(%struct.tlsv1_server* %42, i64 %43, i64* %44, i64* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 -1, i32* %5, align 4
  br label %113

49:                                               ; preds = %41
  br label %101

50:                                               ; preds = %37
  %51 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = load i64*, i64** %9, align 8
  %55 = call i32 @tls_process_certificate(%struct.tlsv1_server* %51, i64 %52, i64* %53, i64* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 -1, i32* %5, align 4
  br label %113

58:                                               ; preds = %50
  br label %101

59:                                               ; preds = %37
  %60 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = load i64*, i64** %9, align 8
  %64 = call i32 @tls_process_client_key_exchange(%struct.tlsv1_server* %60, i64 %61, i64* %62, i64* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 -1, i32* %5, align 4
  br label %113

67:                                               ; preds = %59
  br label %101

68:                                               ; preds = %37
  %69 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64*, i64** %8, align 8
  %72 = load i64*, i64** %9, align 8
  %73 = call i32 @tls_process_certificate_verify(%struct.tlsv1_server* %69, i64 %70, i64* %71, i64* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 -1, i32* %5, align 4
  br label %113

76:                                               ; preds = %68
  br label %101

77:                                               ; preds = %37
  %78 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64*, i64** %8, align 8
  %81 = load i64*, i64** %9, align 8
  %82 = call i32 @tls_process_change_cipher_spec(%struct.tlsv1_server* %78, i64 %79, i64* %80, i64* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 -1, i32* %5, align 4
  br label %113

85:                                               ; preds = %77
  br label %101

86:                                               ; preds = %37
  %87 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i64*, i64** %8, align 8
  %90 = load i64*, i64** %9, align 8
  %91 = call i32 @tls_process_client_finished(%struct.tlsv1_server* %87, i64 %88, i64* %89, i64* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 -1, i32* %5, align 4
  br label %113

94:                                               ; preds = %86
  br label %101

95:                                               ; preds = %37
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %98 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, ...) @wpa_printf(i32 %96, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  store i32 -1, i32* %5, align 4
  br label %113

101:                                              ; preds = %94, %85, %76, %67, %58, %49
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* @TLS_CONTENT_TYPE_HANDSHAKE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %107 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %106, i32 0, i32 1
  %108 = load i64*, i64** %8, align 8
  %109 = load i64*, i64** %9, align 8
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @tls_verify_hash_add(i32* %107, i64* %108, i64 %110)
  br label %112

112:                                              ; preds = %105, %101
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %95, %93, %84, %75, %66, %57, %48, %24, %17
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #1

declare dso_local i32 @tls_process_client_hello(%struct.tlsv1_server*, i64, i64*, i64*) #1

declare dso_local i32 @tls_process_certificate(%struct.tlsv1_server*, i64, i64*, i64*) #1

declare dso_local i32 @tls_process_client_key_exchange(%struct.tlsv1_server*, i64, i64*, i64*) #1

declare dso_local i32 @tls_process_certificate_verify(%struct.tlsv1_server*, i64, i64*, i64*) #1

declare dso_local i32 @tls_process_change_cipher_spec(%struct.tlsv1_server*, i64, i64*, i64*) #1

declare dso_local i32 @tls_process_client_finished(%struct.tlsv1_server*, i64, i64*, i64*) #1

declare dso_local i32 @tls_verify_hash_add(i32*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
