; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/storage/spiffsgen/main/extr_spiffsgen_example_main.c_compute_alice_txt_md5.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/storage/spiffsgen/main/extr_spiffsgen_example_main.c_compute_alice_txt_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Computing alice.txt MD5 hash\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"/spiffs/sub/alice.txt\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to open alice.txt\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Computed MD5 hash of alice.txt: %s\00", align 1
@MD5_MAX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @compute_alice_txt_md5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_alice_txt_md5() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [64 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca [16 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  %8 = load i32, i32* @TAG, align 4
  %9 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = call i32* @fopen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %10, i32** %1, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, i32* @TAG, align 4
  %15 = call i32 @ESP_LOGE(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %55

16:                                               ; preds = %0
  %17 = call i32 @mbedtls_md5_init(i32* %3)
  %18 = call i32 @mbedtls_md5_starts_ret(i32* %3)
  br label %19

19:                                               ; preds = %26, %16
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %21 = load i32*, i32** %1, align 8
  %22 = call i64 @fread(i8* %20, i32 1, i32 64, i32* %21)
  store i64 %22, i64* %5, align 8
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @mbedtls_md5_update_ret(i32* %3, i8* %23, i64 %24)
  br label %26

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %27, 64
  br i1 %28, label %19, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %31 = call i32 @mbedtls_md5_finish_ret(i32* %3, i8* %30)
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %46, %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 16
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %38
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %32

49:                                               ; preds = %32
  %50 = load i32, i32* @TAG, align 4
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %52 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %51)
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @fclose(i32* %53)
  br label %55

55:                                               ; preds = %49, %13
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @mbedtls_md5_init(i32*) #1

declare dso_local i32 @mbedtls_md5_starts_ret(i32*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @mbedtls_md5_update_ret(i32*, i8*, i64) #1

declare dso_local i32 @mbedtls_md5_finish_ret(i32*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
