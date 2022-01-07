; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_wolfssl.c_esp_wolfssl_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_wolfssl.c_esp_wolfssl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@ESP_TLS_ERR_SSL_WANT_READ = common dso_local global i32 0, align 4
@ESP_TLS_ERR_SSL_WANT_WRITE = common dso_local global i32 0, align 4
@ERR_TYPE_WOLFSSL = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"write error :%d:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_wolfssl_write(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @wolfSSL_write(i32* %11, i8* %12, i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @wolfSSL_get_error(i32* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @ESP_TLS_ERR_SSL_WANT_READ, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ESP_TLS_ERR_SSL_WANT_WRITE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ERR_TYPE_WOLFSSL, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %34, i32 %35, i32 %37)
  %39 = load i32, i32* @TAG, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @ESP_LOGE(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %31, %27, %17
  br label %43

43:                                               ; preds = %42, %3
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @wolfSSL_write(i32*, i8*, i64) #1

declare dso_local i32 @wolfSSL_get_error(i32*, i32) #1

declare dso_local i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
