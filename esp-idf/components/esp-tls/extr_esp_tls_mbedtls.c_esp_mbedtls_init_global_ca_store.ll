; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_mbedtls.c_esp_mbedtls_init_global_ca_store.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_mbedtls.c_esp_mbedtls_init_global_ca_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global_cacert = common dso_local global i32* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"global_cacert not allocated\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_mbedtls_init_global_ca_store() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @global_cacert, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %16

4:                                                ; preds = %0
  %5 = call i64 @calloc(i32 1, i32 4)
  %6 = inttoptr i64 %5 to i32*
  store i32* %6, i32** @global_cacert, align 8
  %7 = load i32*, i32** @global_cacert, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = load i32, i32* @TAG, align 4
  %11 = call i32 @ESP_LOGE(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %12, i32* %1, align 4
  br label %18

13:                                               ; preds = %4
  %14 = load i32*, i32** @global_cacert, align 8
  %15 = call i32 @mbedtls_x509_crt_init(i32* %14)
  br label %16

16:                                               ; preds = %13, %0
  %17 = load i32, i32* @ESP_OK, align 4
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %16, %9
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @mbedtls_x509_crt_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
