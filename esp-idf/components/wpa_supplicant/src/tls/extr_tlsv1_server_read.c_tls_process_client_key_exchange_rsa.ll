; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_read.c_tls_process_client_key_exchange_rsa.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_read.c_tls_process_client_key_exchange_rsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"TLSv1: Invalid ClientKeyExchange format: encr_len=%u left=%u\00", align 1
@TLS_PRE_MASTER_SECRET_LEN = common dso_local global i64 0, align 8
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"TLSv1: Failed to decrypt PreMasterSecret (encr_len=%u outlen=%lu)\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"TLSv1: Unexpected PreMasterSecret length %lu\00", align 1
@.str.3 = private unnamed_addr constant [86 x i8] c"TLSv1: Client version in ClientKeyExchange does not match with version in ClientHello\00", align 1
@.str.4 = private unnamed_addr constant [86 x i8] c"TLSv1: Using random premaster secret to avoid revealing information about private key\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"TLSv1: Failed to get random data\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"TLSv1: Failed to derive keys\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i32*, i32*)* @tls_process_client_key_exchange_rsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_client_key_exchange_rsa(%struct.tlsv1_server* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_server*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = ptrtoint i32* %14 to i64
  %17 = ptrtoint i32* %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 4
  %20 = icmp slt i64 %19, 2
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %23 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %24 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %25 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %22, i32 %23, i32 %24)
  store i32 -1, i32* %4, align 4
  br label %158

26:                                               ; preds = %3
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @WPA_GET_BE16(i32* %27)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ugt i32* %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %26
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = ptrtoint i32* %41 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %47)
  %49 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %50 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %51 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %52 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %49, i32 %50, i32 %51)
  store i32 -1, i32* %4, align 4
  br label %158

53:                                               ; preds = %26
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = ptrtoint i32* %54 to i64
  %57 = ptrtoint i32* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 4
  store i64 %59, i64* %9, align 8
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @TLS_PRE_MASTER_SECRET_LEN, align 8
  %62 = icmp uge i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i64, i64* %9, align 8
  br label %67

65:                                               ; preds = %53
  %66 = load i64, i64* @TLS_PRE_MASTER_SECRET_LEN, align 8
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i64 [ %64, %63 ], [ %66, %65 ]
  %69 = call i32* @os_malloc(i64 %68)
  store i32* %69, i32** %8, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %74 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %75 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %76 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %73, i32 %74, i32 %75)
  store i32 -1, i32* %4, align 4
  br label %158

77:                                               ; preds = %67
  %78 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %79 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = call i64 @crypto_private_key_decrypt_pkcs1_v15(i32 %82, i32* %83, i32 %84, i32* %85, i64* %9)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i64, i64* %9, align 8
  %92 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %90, i64 %91)
  store i32 1, i32* %13, align 4
  br label %93

93:                                               ; preds = %88, %77
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* @TLS_PRE_MASTER_SECRET_LEN, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = load i64, i64* %9, align 8
  %103 = call i32 (i32, i8*, ...) @wpa_printf(i32 %101, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %102)
  store i32 1, i32* %13, align 4
  br label %104

104:                                              ; preds = %100, %96, %93
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %104
  %108 = load i32*, i32** %8, align 8
  %109 = call i64 @WPA_GET_BE16(i32* %108)
  %110 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %111 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %109, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i32, i32* @MSG_DEBUG, align 4
  %116 = call i32 (i32, i8*, ...) @wpa_printf(i32 %115, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %117

117:                                              ; preds = %114, %107, %104
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %117
  %121 = load i32, i32* @MSG_DEBUG, align 4
  %122 = call i32 (i32, i8*, ...) @wpa_printf(i32 %121, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0))
  %123 = load i64, i64* @TLS_PRE_MASTER_SECRET_LEN, align 8
  store i64 %123, i64* %9, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = load i64, i64* %9, align 8
  %126 = call i64 @os_get_random(i32* %124, i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %120
  %129 = load i32, i32* @MSG_DEBUG, align 4
  %130 = call i32 (i32, i8*, ...) @wpa_printf(i32 %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %131 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %132 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %133 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %134 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %131, i32 %132, i32 %133)
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @os_free(i32* %135)
  store i32 -1, i32* %4, align 4
  br label %158

137:                                              ; preds = %120
  br label %138

138:                                              ; preds = %137, %117
  %139 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = load i64, i64* %9, align 8
  %142 = call i32 @tlsv1_server_derive_keys(%struct.tlsv1_server* %139, i32* %140, i64 %141)
  store i32 %142, i32* %12, align 4
  %143 = load i32*, i32** %8, align 8
  %144 = load i64, i64* %10, align 8
  %145 = call i32 @os_memset(i32* %143, i32 0, i64 %144)
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @os_free(i32* %146)
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %138
  %151 = load i32, i32* @MSG_DEBUG, align 4
  %152 = call i32 (i32, i8*, ...) @wpa_printf(i32 %151, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %153 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %154 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %155 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %156 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %153, i32 %154, i32 %155)
  store i32 -1, i32* %4, align 4
  br label %158

157:                                              ; preds = %138
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %157, %150, %128, %72, %38, %21
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #1

declare dso_local i64 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i64 @crypto_private_key_decrypt_pkcs1_v15(i32, i32*, i32, i32*, i64*) #1

declare dso_local i64 @os_get_random(i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @tlsv1_server_derive_keys(%struct.tlsv1_server*, i32*, i64) #1

declare dso_local i32 @os_memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
