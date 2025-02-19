; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_mbedtls.c_esp_mbedtls_set_global_ca_store.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_mbedtls.c_esp_mbedtls_set_global_ca_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cacert_pem_buf is null\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@global_cacert = common dso_local global i32* null, align 8
@ESP_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"mbedtls_x509_crt_parse returned -0x%x\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"mbedtls_x509_crt_parse was partly successful. No. of failed certificates: %d\00", align 1
@ESP_ERR_MBEDTLS_CERT_PARTLY_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_mbedtls_set_global_ca_store(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @TAG, align 4
  %11 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %12, i32* %3, align 4
  br label %50

13:                                               ; preds = %2
  %14 = load i32*, i32** @global_cacert, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = call i32 (...) @esp_mbedtls_init_global_ca_store()
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ESP_OK, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %50

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %13
  %25 = load i32*, i32** @global_cacert, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @mbedtls_x509_crt_parse(i32* %25, i8* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i32, i32* @TAG, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** @global_cacert, align 8
  %37 = call i32 @mbedtls_x509_crt_free(i32* %36)
  store i32* null, i32** @global_cacert, align 8
  %38 = load i32, i32* @ESP_FAIL, align 4
  store i32 %38, i32* %3, align 4
  br label %50

39:                                               ; preds = %24
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* @TAG, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %43, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @ESP_ERR_MBEDTLS_CERT_PARTLY_OK, align 4
  store i32 %46, i32* %3, align 4
  br label %50

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* @ESP_OK, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %42, %31, %21, %9
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @esp_mbedtls_init_global_ca_store(...) #1

declare dso_local i32 @mbedtls_x509_crt_parse(i32*, i8*, i32) #1

declare dso_local i32 @mbedtls_x509_crt_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
