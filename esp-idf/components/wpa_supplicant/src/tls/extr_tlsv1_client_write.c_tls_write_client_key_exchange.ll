; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_write.c_tls_write_client_key_exchange.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_write.c_tls_write_client_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tls_cipher_suite = type { i64 }

@TLS_KEY_X_NULL = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"TLSv1: Send ClientKeyExchange\00", align 1
@TLS_RECORD_HEADER_LEN = common dso_local global i32 0, align 4
@TLS_HANDSHAKE_TYPE_CLIENT_KEY_EXCHANGE = common dso_local global i32 0, align 4
@TLS_KEY_X_DH_anon = common dso_local global i64 0, align 8
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"TLSv1: Failed to create a record\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i32**, i32*)* @tls_write_client_key_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_write_client_key_exchange(%struct.tlsv1_client* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_client*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.tls_cipher_suite*, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %16 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.tls_cipher_suite* @tls_get_cipher_suite(i32 %18)
  store %struct.tls_cipher_suite* %19, %struct.tls_cipher_suite** %14, align 8
  %20 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %14, align 8
  %21 = icmp eq %struct.tls_cipher_suite* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* @TLS_KEY_X_NULL, align 8
  store i64 %23, i64* %13, align 8
  br label %28

24:                                               ; preds = %3
  %25 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %14, align 8
  %26 = getelementptr inbounds %struct.tls_cipher_suite, %struct.tls_cipher_suite* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %13, align 8
  br label %28

28:                                               ; preds = %24, %22
  %29 = load i32**, i32*** %6, align 8
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %33 = load i32*, i32** %8, align 8
  store i32* %33, i32** %9, align 8
  %34 = load i32, i32* @TLS_RECORD_HEADER_LEN, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  store i32* %38, i32** %10, align 8
  %39 = load i32, i32* @TLS_HANDSHAKE_TYPE_CLIENT_KEY_EXCHANGE, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32* %44, i32** %8, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @TLS_KEY_X_DH_anon, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %28
  %49 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i64 @tlsv1_key_x_anon_dh(%struct.tlsv1_client* %49, i32** %8, i32* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  br label %118

54:                                               ; preds = %48
  br label %62

55:                                               ; preds = %28
  %56 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i64 @tlsv1_key_x_rsa(%struct.tlsv1_client* %56, i32** %8, i32* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %118

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %54
  %63 = load i32*, i32** %11, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = ptrtoint i32* %64 to i64
  %67 = ptrtoint i32* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 4
  %70 = sub nsw i64 %69, 3
  %71 = trunc i64 %70 to i32
  %72 = call i32 @WPA_PUT_BE24(i32* %63, i32 %71)
  %73 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %74 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %73, i32 0, i32 1
  %75 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = ptrtoint i32* %77 to i64
  %80 = ptrtoint i32* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = load i32*, i32** %10, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = ptrtoint i32* %85 to i64
  %88 = ptrtoint i32* %86 to i64
  %89 = sub i64 %87, %88
  %90 = sdiv exact i64 %89, 4
  %91 = trunc i64 %90 to i32
  %92 = call i64 @tlsv1_record_send(%struct.TYPE_2__* %74, i32 %75, i32* %76, i32 %83, i32* %84, i32 %91, i64* %12)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %62
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = call i32 @wpa_printf(i32 %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %97 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %98 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %99 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %100 = call i32 @tls_alert(%struct.tlsv1_client* %97, i32 %98, i32 %99)
  store i32 -1, i32* %4, align 4
  br label %118

101:                                              ; preds = %62
  %102 = load i32*, i32** %9, align 8
  %103 = load i64, i64* %12, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %8, align 8
  %105 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %106 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %105, i32 0, i32 0
  %107 = load i32*, i32** %10, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = ptrtoint i32* %108 to i64
  %111 = ptrtoint i32* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 4
  %114 = trunc i64 %113 to i32
  %115 = call i32 @tls_verify_hash_add(i32* %106, i32* %107, i32 %114)
  %116 = load i32*, i32** %8, align 8
  %117 = load i32**, i32*** %6, align 8
  store i32* %116, i32** %117, align 8
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %101, %94, %60, %53
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.tls_cipher_suite* @tls_get_cipher_suite(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @tlsv1_key_x_anon_dh(%struct.tlsv1_client*, i32**, i32*) #1

declare dso_local i64 @tlsv1_key_x_rsa(%struct.tlsv1_client*, i32**, i32*) #1

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i64 @tlsv1_record_send(%struct.TYPE_2__*, i32, i32*, i32, i32*, i32, i64*) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i32 @tls_verify_hash_add(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
