; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client.c_tlsv1_client_encrypt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client.c_tlsv1_client_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"TLSv1: Plaintext AppData\00", align 1
@TLS_CONTENT_TYPE_APPLICATION_DATA = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"TLSv1: Failed to create a record\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_client_encrypt(%struct.tlsv1_client* %0, i32* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tlsv1_client*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i32, i32* @MSG_MSGDUMP, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @wpa_hexdump_key(i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %14, i64 %15)
  %17 = load %struct.tlsv1_client*, %struct.tlsv1_client** %7, align 8
  %18 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %17, i32 0, i32 0
  %19 = load i32, i32* @TLS_CONTENT_TYPE_APPLICATION_DATA, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i64 @tlsv1_record_send(i32* %18, i32 %19, i32* %20, i64 %21, i32* %22, i64 %23, i64* %12)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 @wpa_printf(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.tlsv1_client*, %struct.tlsv1_client** %7, align 8
  %30 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %31 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %32 = call i32 @tls_alert(%struct.tlsv1_client* %29, i32 %30, i32 %31)
  store i32 -1, i32* %6, align 4
  br label %36

33:                                               ; preds = %5
  %34 = load i64, i64* %12, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i64 @tlsv1_record_send(i32*, i32, i32*, i64, i32*, i64, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
