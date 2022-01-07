; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_wolfssl.c_esp_wolfssl_set_global_ca_store.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_wolfssl.c_esp_wolfssl_set_global_ca_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cacert_pem_buf is null\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@global_cacert = common dso_local global i8* null, align 8
@ESP_FAIL = common dso_local global i32 0, align 4
@global_cacert_pem_bytes = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_wolfssl_set_global_ca_store(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* @TAG, align 4
  %10 = call i32 @ESP_LOGE(i32 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %11, i32* %3, align 4
  br label %29

12:                                               ; preds = %2
  %13 = load i8*, i8** @global_cacert, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (...) @esp_wolfssl_free_global_ca_store()
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @strndup(i8* %18, i32 %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** @global_cacert, align 8
  %22 = load i8*, i8** @global_cacert, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ESP_FAIL, align 4
  store i32 %25, i32* %3, align 4
  br label %29

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* @global_cacert_pem_bytes, align 4
  %28 = load i32, i32* @ESP_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %24, %8
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @esp_wolfssl_free_global_ca_store(...) #1

declare dso_local i64 @strndup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
