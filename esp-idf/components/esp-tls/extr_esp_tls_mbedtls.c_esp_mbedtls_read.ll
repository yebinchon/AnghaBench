; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_mbedtls.c_esp_mbedtls_read.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_mbedtls.c_esp_mbedtls_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY = common dso_local global i32 0, align 4
@ESP_TLS_ERR_SSL_WANT_READ = common dso_local global i32 0, align 4
@ESP_TLS_ERR_SSL_WANT_WRITE = common dso_local global i32 0, align 4
@ERR_TYPE_MBEDTLS = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"read error :%d:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_mbedtls_read(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @mbedtls_ssl_read(i32* %10, i8* %11, i64 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %43

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @ESP_TLS_ERR_SSL_WANT_READ, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ESP_TLS_ERR_SSL_WANT_WRITE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ERR_TYPE_MBEDTLS, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %32, i32 %33, i32 %35)
  %37 = load i32, i32* @TAG, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @ESP_LOGE(i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %29, %25, %21
  br label %41

41:                                               ; preds = %40, %3
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %20
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @mbedtls_ssl_read(i32*, i8*, i64) #1

declare dso_local i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
