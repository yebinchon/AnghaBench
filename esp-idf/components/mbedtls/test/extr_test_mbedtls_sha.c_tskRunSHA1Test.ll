; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/test/extr_test_mbedtls_sha.c_tskRunSHA1Test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/test/extr_test_mbedtls_sha.c_tskRunSHA1Test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one_hundred_as = common dso_local global i64 0, align 8
@sha1_thousand_as = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SHA1 calculation\00", align 1
@done_sem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tskRunSHA1Test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tskRunSHA1Test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [20 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %32, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 1000
  br i1 %9, label %10, label %35

10:                                               ; preds = %7
  %11 = call i32 @mbedtls_sha1_init(i32* %3)
  %12 = call i32 @mbedtls_sha1_starts_ret(i32* %3)
  %13 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %22, %10
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 10
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i64, i64* @one_hundred_as, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @mbedtls_sha1_update_ret(i32* %3, i8* %19, i32 100)
  %21 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %20)
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %14

25:                                               ; preds = %14
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %27 = call i32 @mbedtls_sha1_finish_ret(i32* %3, i8* %26)
  %28 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %27)
  %29 = load i32, i32* @sha1_thousand_as, align 4
  %30 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %31 = call i32 @TEST_ASSERT_EQUAL_MEMORY_MESSAGE(i32 %29, i8* %30, i32 20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %7

35:                                               ; preds = %7
  %36 = load i32, i32* @done_sem, align 4
  %37 = call i32 @xSemaphoreGive(i32 %36)
  %38 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @mbedtls_sha1_init(i32*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @mbedtls_sha1_starts_ret(i32*) #1

declare dso_local i32 @mbedtls_sha1_update_ret(i32*, i8*, i32) #1

declare dso_local i32 @mbedtls_sha1_finish_ret(i32*, i8*) #1

declare dso_local i32 @TEST_ASSERT_EQUAL_MEMORY_MESSAGE(i32, i8*, i32, i8*) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
