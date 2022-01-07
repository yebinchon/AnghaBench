; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_write.c_tls_write_server_certificate_request.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_write.c_tls_write_server_certificate_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"TLSv1: No CertificateRequest needed\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"TLSv1: Send CertificateRequest\00", align 1
@TLS_RECORD_HEADER_LEN = common dso_local global i32 0, align 4
@TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"TLSv1: Failed to generate a record\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i32**, i32*)* @tls_write_server_certificate_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_write_server_certificate_request(%struct.tlsv1_server* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_server*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %14 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %100

20:                                               ; preds = %3
  %21 = load i32**, i32*** %6, align 8
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32*, i32** %8, align 8
  store i32* %25, i32** %9, align 8
  %26 = load i32, i32* @TLS_RECORD_HEADER_LEN, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  store i32* %30, i32** %10, align 8
  %31 = load i32, i32* @TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  %34 = load i32*, i32** %8, align 8
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %8, align 8
  store i32 1, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %8, align 8
  store i32 1, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @WPA_PUT_BE16(i32* %41, i32 0)
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = ptrtoint i32* %46 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = sub nsw i64 %51, 3
  %53 = trunc i64 %52 to i32
  %54 = call i32 @WPA_PUT_BE24(i32* %45, i32 %53)
  %55 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %56 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %55, i32 0, i32 1
  %57 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = ptrtoint i32* %59 to i64
  %62 = ptrtoint i32* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sdiv exact i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = load i32*, i32** %10, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = ptrtoint i32* %67 to i64
  %70 = ptrtoint i32* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = call i64 @tlsv1_record_send(i32* %56, i32 %57, i32* %58, i32 %65, i32* %66, i32 %73, i64* %12)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %20
  %77 = load i32, i32* @MSG_DEBUG, align 4
  %78 = call i32 @wpa_printf(i32 %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %80 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %81 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %82 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %79, i32 %80, i32 %81)
  store i32 -1, i32* %4, align 4
  br label %100

83:                                               ; preds = %20
  %84 = load i32*, i32** %9, align 8
  %85 = load i64, i64* %12, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %8, align 8
  %87 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %88 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %87, i32 0, i32 0
  %89 = load i32*, i32** %10, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = ptrtoint i32* %90 to i64
  %93 = ptrtoint i32* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32 @tls_verify_hash_add(i32* %88, i32* %89, i32 %96)
  %98 = load i32*, i32** %8, align 8
  %99 = load i32**, i32*** %6, align 8
  store i32* %98, i32** %99, align 8
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %83, %76, %17
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i32) #1

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i64 @tlsv1_record_send(i32*, i32, i32*, i32, i32*, i32, i64*) #1

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #1

declare dso_local i32 @tls_verify_hash_add(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
