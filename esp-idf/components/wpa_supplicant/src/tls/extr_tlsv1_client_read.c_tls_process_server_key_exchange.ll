; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_read.c_tls_process_server_key_exchange.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_read.c_tls_process_server_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tls_cipher_suite = type { i64 }

@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"TLSv1: Expected Handshake; received content type 0x%x\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"TLSv1: Too short ServerKeyExchange (Left=%lu)\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"TLSv1: Mismatch in ServerKeyExchange length (len=%lu != left=%lu)\00", align 1
@TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST = common dso_local global i64 0, align 8
@TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE = common dso_local global i64 0, align 8
@TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [112 x i8] c"TLSv1: Received unexpected handshake message %d (expected ServerKeyExchange/CertificateRequest/ServerHelloDone)\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"TLSv1: Received ServerKeyExchange\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"TLSv1: ServerKeyExchange not allowed with the selected cipher suite\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"TLSv1: ServerKeyExchange\00", align 1
@TLS_KEY_X_DH_anon = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"TLSv1: UnexpectedServerKeyExchange\00", align 1
@SERVER_CERTIFICATE_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i64, i64*, i64*)* @tls_process_server_key_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_server_key_exchange(%struct.tlsv1_client* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tlsv1_client*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.tls_cipher_suite*, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @TLS_CONTENT_TYPE_HANDSHAKE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %24 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %25 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %26 = call i32 @tls_alert(%struct.tlsv1_client* %23, i32 %24, i32 %25)
  store i32 -1, i32* %5, align 4
  br label %162

27:                                               ; preds = %4
  %28 = load i64*, i64** %8, align 8
  store i64* %28, i64** %10, align 8
  %29 = load i64*, i64** %9, align 8
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp ult i64 %31, 4
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = load i64, i64* %12, align 8
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %38 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %39 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %40 = call i32 @tls_alert(%struct.tlsv1_client* %37, i32 %38, i32 %39)
  store i32 -1, i32* %5, align 4
  br label %162

41:                                               ; preds = %27
  %42 = load i64*, i64** %10, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %10, align 8
  %44 = load i64, i64* %42, align 8
  store i64 %44, i64* %14, align 8
  %45 = load i64*, i64** %10, align 8
  %46 = call i64 @WPA_GET_BE24(i64* %45)
  store i64 %46, i64* %13, align 8
  %47 = load i64*, i64** %10, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 3
  store i64* %48, i64** %10, align 8
  %49 = load i64, i64* %12, align 8
  %50 = sub i64 %49, 4
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %41
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i64 %56, i64 %57)
  %59 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %60 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %61 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %62 = call i32 @tls_alert(%struct.tlsv1_client* %59, i32 %60, i32 %61)
  store i32 -1, i32* %5, align 4
  br label %162

63:                                               ; preds = %41
  %64 = load i64*, i64** %10, align 8
  %65 = load i64, i64* %13, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64* %66, i64** %11, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* @TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64*, i64** %8, align 8
  %74 = load i64*, i64** %9, align 8
  %75 = call i32 @tls_process_certificate_request(%struct.tlsv1_client* %71, i64 %72, i64* %73, i64* %74)
  store i32 %75, i32* %5, align 4
  br label %162

76:                                               ; preds = %63
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* @TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i64*, i64** %8, align 8
  %84 = load i64*, i64** %9, align 8
  %85 = call i32 @tls_process_server_hello_done(%struct.tlsv1_client* %81, i64 %82, i64* %83, i64* %84)
  store i32 %85, i32* %5, align 4
  br label %162

86:                                               ; preds = %76
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* @TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = load i64, i64* %14, align 8
  %93 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.3, i64 0, i64 0), i64 %92)
  %94 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %95 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %96 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %97 = call i32 @tls_alert(%struct.tlsv1_client* %94, i32 %95, i32 %96)
  store i32 -1, i32* %5, align 4
  br label %162

98:                                               ; preds = %86
  %99 = load i32, i32* @MSG_DEBUG, align 4
  %100 = call i32 (i32, i8*, ...) @wpa_printf(i32 %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %101 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %102 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @tls_server_key_exchange_allowed(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %98
  %108 = load i32, i32* @MSG_DEBUG, align 4
  %109 = call i32 (i32, i8*, ...) @wpa_printf(i32 %108, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  %110 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %111 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %112 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %113 = call i32 @tls_alert(%struct.tlsv1_client* %110, i32 %111, i32 %112)
  store i32 -1, i32* %5, align 4
  br label %162

114:                                              ; preds = %98
  %115 = load i32, i32* @MSG_DEBUG, align 4
  %116 = load i64*, i64** %10, align 8
  %117 = load i64, i64* %13, align 8
  %118 = call i32 @wpa_hexdump(i32 %115, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64* %116, i64 %117)
  %119 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %120 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call %struct.tls_cipher_suite* @tls_get_cipher_suite(i32 %122)
  store %struct.tls_cipher_suite* %123, %struct.tls_cipher_suite** %15, align 8
  %124 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %15, align 8
  %125 = icmp ne %struct.tls_cipher_suite* %124, null
  br i1 %125, label %126, label %144

126:                                              ; preds = %114
  %127 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %15, align 8
  %128 = getelementptr inbounds %struct.tls_cipher_suite, %struct.tls_cipher_suite* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @TLS_KEY_X_DH_anon, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %126
  %133 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %134 = load i64*, i64** %10, align 8
  %135 = load i64, i64* %13, align 8
  %136 = call i64 @tlsv1_process_diffie_hellman(%struct.tlsv1_client* %133, i64* %134, i64 %135)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %140 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %141 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %142 = call i32 @tls_alert(%struct.tlsv1_client* %139, i32 %140, i32 %141)
  store i32 -1, i32* %5, align 4
  br label %162

143:                                              ; preds = %132
  br label %151

144:                                              ; preds = %126, %114
  %145 = load i32, i32* @MSG_DEBUG, align 4
  %146 = call i32 (i32, i8*, ...) @wpa_printf(i32 %145, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %147 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %148 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %149 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %150 = call i32 @tls_alert(%struct.tlsv1_client* %147, i32 %148, i32 %149)
  store i32 -1, i32* %5, align 4
  br label %162

151:                                              ; preds = %143
  %152 = load i64*, i64** %11, align 8
  %153 = load i64*, i64** %8, align 8
  %154 = ptrtoint i64* %152 to i64
  %155 = ptrtoint i64* %153 to i64
  %156 = sub i64 %154, %155
  %157 = sdiv exact i64 %156, 8
  %158 = load i64*, i64** %9, align 8
  store i64 %157, i64* %158, align 8
  %159 = load i32, i32* @SERVER_CERTIFICATE_REQUEST, align 4
  %160 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %161 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %151, %144, %138, %107, %90, %80, %70, %54, %33, %19
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i64 @WPA_GET_BE24(i64*) #1

declare dso_local i32 @tls_process_certificate_request(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i32 @tls_process_server_hello_done(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i32 @tls_server_key_exchange_allowed(i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

declare dso_local %struct.tls_cipher_suite* @tls_get_cipher_suite(i32) #1

declare dso_local i64 @tlsv1_process_diffie_hellman(%struct.tlsv1_client*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
