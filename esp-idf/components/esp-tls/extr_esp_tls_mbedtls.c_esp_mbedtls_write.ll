; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_mbedtls.c_esp_mbedtls_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_mbedtls.c_esp_mbedtls_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@MBEDTLS_SSL_OUT_CONTENT_LEN = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Fragmenting data of excessive size :%d, offset: %d, size %d\00", align 1
@ESP_TLS_ERR_SSL_WANT_READ = common dso_local global i64 0, align 8
@ESP_TLS_ERR_SSL_WANT_WRITE = common dso_local global i64 0, align 8
@ERR_TYPE_MBEDTLS = common dso_local global i32 0, align 4
@ERR_TYPE_ESP = common dso_local global i32 0, align 4
@ESP_ERR_MBEDTLS_SSL_WRITE_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"write error :%d:\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"mbedtls_ssl_write() returned %d, already written %d, exitting...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_mbedtls_write(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load i64, i64* %7, align 8
  store i64 %11, i64* %9, align 8
  br label %12

12:                                               ; preds = %77, %3
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %84

16:                                               ; preds = %12
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @MBEDTLS_SSL_OUT_CONTENT_LEN, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* @MBEDTLS_SSL_OUT_CONTENT_LEN, align 8
  store i64 %21, i64* %9, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @MBEDTLS_SSL_OUT_CONTENT_LEN, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @TAG, align 4
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 (i32, i8*, i64, i64, ...) @ESP_LOGD(i32 %27, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %29, i64 %30)
  br label %32

32:                                               ; preds = %26, %22
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @mbedtls_ssl_write(i32* %34, i8* %37, i64 %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ule i64 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %32
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @ESP_TLS_ERR_SSL_WANT_READ, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %42
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @ESP_TLS_ERR_SSL_WANT_WRITE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ERR_TYPE_MBEDTLS, align 4
  %58 = load i64, i64* %10, align 8
  %59 = sub i64 0, %58
  %60 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %56, i32 %57, i64 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ERR_TYPE_ESP, align 4
  %65 = load i64, i64* @ESP_ERR_MBEDTLS_SSL_WRITE_FAILED, align 8
  %66 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %63, i32 %64, i64 %65)
  %67 = load i32, i32* @TAG, align 4
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @ESP_LOGE(i32 %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load i64, i64* %10, align 8
  store i64 %70, i64* %4, align 8
  br label %86

71:                                               ; preds = %50, %46, %42
  %72 = load i32, i32* @TAG, align 4
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 (i32, i8*, i64, i64, ...) @ESP_LOGD(i32 %72, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i64 %73, i64 %74)
  %76 = load i64, i64* %8, align 8
  store i64 %76, i64* %4, align 8
  br label %86

77:                                               ; preds = %32
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* %8, align 8
  %83 = sub i64 %81, %82
  store i64 %83, i64* %9, align 8
  br label %12

84:                                               ; preds = %12
  %85 = load i64, i64* %8, align 8
  store i64 %85, i64* %4, align 8
  br label %86

86:                                               ; preds = %84, %71, %53
  %87 = load i64, i64* %4, align 8
  ret i64 %87
}

declare dso_local i32 @ESP_LOGD(i32, i8*, i64, i64, ...) #1

declare dso_local i64 @mbedtls_ssl_write(i32*, i8*, i64) #1

declare dso_local i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32, i32, i64) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
