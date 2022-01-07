; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_read.c_tls_process_application_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_read.c_tls_process_application_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32 }

@TLS_CONTENT_TYPE_APPLICATION_DATA = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"TLSv1: Expected Application Data; received content type 0x%x\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"TLSv1: Application Data included in Handshake\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i64, i64*, i64*, i64**, i64*)* @tls_process_application_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_application_data(%struct.tlsv1_client* %0, i64 %1, i64* %2, i64* %3, i64** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tlsv1_client*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @TLS_CONTENT_TYPE_APPLICATION_DATA, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %6
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.tlsv1_client*, %struct.tlsv1_client** %8, align 8
  %24 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %25 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %26 = call i32 @tls_alert(%struct.tlsv1_client* %23, i32 %24, i32 %25)
  store i32 -1, i32* %7, align 4
  br label %50

27:                                               ; preds = %6
  %28 = load i64*, i64** %10, align 8
  store i64* %28, i64** %14, align 8
  %29 = load i64*, i64** %11, align 8
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %15, align 8
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = load i64*, i64** %14, align 8
  %33 = load i64, i64* %15, align 8
  %34 = call i32 @wpa_hexdump(i32 %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64* %32, i64 %33)
  %35 = load i64, i64* %15, align 8
  %36 = call i64* @os_malloc(i64 %35)
  %37 = load i64**, i64*** %12, align 8
  store i64* %36, i64** %37, align 8
  %38 = load i64**, i64*** %12, align 8
  %39 = load i64*, i64** %38, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %27
  %42 = load i64**, i64*** %12, align 8
  %43 = load i64*, i64** %42, align 8
  %44 = load i64*, i64** %14, align 8
  %45 = load i64, i64* %15, align 8
  %46 = call i32 @os_memcpy(i64* %43, i64* %44, i64 %45)
  %47 = load i64, i64* %15, align 8
  %48 = load i64*, i64** %13, align 8
  store i64 %47, i64* %48, align 8
  br label %49

49:                                               ; preds = %41, %27
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %19
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

declare dso_local i64* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
