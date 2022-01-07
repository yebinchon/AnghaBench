; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_aes_sha_rsa.c_mbedtls_sha256_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_aes_sha_rsa.c_mbedtls_sha256_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"mbedtls_sha256_task is started\00", align 1
@.str.1 = private unnamed_addr constant [105 x i8] c"@ABCDEFGHIJKLMNOPQRSTUVWXYZ[]^_abcdefghijklmnopqrstuvwxyz~DEL0123456789Space!#$%&()*+,-.0123456789:;<=>?\00", align 1
@exit_flag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"MBEDTLS SHA256 must match\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mbedtls_sha256_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbedtls_sha256_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %3, align 8
  %12 = load i32, i32* @TAG, align 4
  %13 = call i32 @ESP_LOGI(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %14 = call i32 @mbedtls_sha256_init(i32* %5)
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %16 = call i32 @memset(i8* %15, i32 0, i32 32)
  %17 = call i32 @mbedtls_sha256_starts_ret(i32* %5, i32 0)
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %24, %1
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @mbedtls_sha256_update_ret(i32* %5, i8* %22, i32 100)
  br label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %18

27:                                               ; preds = %18
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %29 = call i32 @mbedtls_sha256_finish_ret(i32* %5, i8* %28)
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %32 = call i32 @memcpy(i8* %30, i8* %31, i32 32)
  br label %33

33:                                               ; preds = %50, %27
  %34 = load i32, i32* @exit_flag, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = call i32 @mbedtls_sha256_init(i32* %5)
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %39 = call i32 @memset(i8* %38, i32 0, i32 32)
  %40 = call i32 @mbedtls_sha256_starts_ret(i32* %5, i32 0)
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %47, %36
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @mbedtls_sha256_update_ret(i32* %5, i8* %45, i32 100)
  br label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %41

50:                                               ; preds = %41
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %52 = call i32 @mbedtls_sha256_finish_ret(i32* %5, i8* %51)
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %55 = call i32 @TEST_ASSERT_EQUAL_MEMORY_MESSAGE(i8* %53, i8* %54, i32 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %33

56:                                               ; preds = %33
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @xSemaphoreGive(i32 %58)
  %60 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @mbedtls_sha256_init(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mbedtls_sha256_starts_ret(i32*, i32) #1

declare dso_local i32 @mbedtls_sha256_update_ret(i32*, i8*, i32) #1

declare dso_local i32 @mbedtls_sha256_finish_ret(i32*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_MEMORY_MESSAGE(i8*, i8*, i32, i8*) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
