; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_aes_sha_rsa.c_sha_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_aes_sha_rsa.c_sha_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"sha_task is started\00", align 1
@.str.1 = private unnamed_addr constant [105 x i8] c"Space!#$%&()*+,-.0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[]^_abcdefghijklmnopqrstuvwxyz~DEL0123456789\00", align 1
@SHA2_512 = common dso_local global i32 0, align 4
@exit_flag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"SHA256 must match\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sha_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %3, align 8
  %9 = load i32, i32* @TAG, align 4
  %10 = call i32 @ESP_LOGI(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %11 = load i32, i32* @SHA2_512, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %14 = call i32 @esp_sha(i32 %11, i8* %12, i32 8, i8* %13)
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %17 = call i32 @memcpy(i8* %15, i8* %16, i32 64)
  br label %18

18:                                               ; preds = %21, %1
  %19 = load i32, i32* @exit_flag, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %23 = call i32 @memset(i8* %22, i32 0, i32 64)
  %24 = load i32, i32* @SHA2_512, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %27 = call i32 @esp_sha(i32 %24, i8* %25, i32 8, i8* %26)
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %30 = call i32 @TEST_ASSERT_EQUAL_MEMORY_MESSAGE(i8* %28, i8* %29, i32 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %18

31:                                               ; preds = %18
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @xSemaphoreGive(i32 %33)
  %35 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @esp_sha(i32, i8*, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_MEMORY_MESSAGE(i8*, i8*, i32, i8*) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
