; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/test/extr_test_mbedtls_sha.c_tskRunSHASelftests.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/test/extr_test_mbedtls_sha.c_tskRunSHASelftests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"SHA1 self-tests failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"SHA256 self-tests failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SHA512 self-tests failed.\0A\00", align 1
@done_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tskRunSHASelftests(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %32, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 5
  br i1 %6, label %7, label %35

7:                                                ; preds = %4
  %8 = call i64 @mbedtls_sha1_self_test(i32 1)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %12
  br label %12

13:                                               ; preds = %7
  %14 = call i64 @mbedtls_sha256_self_test(i32 1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %18
  br label %18

19:                                               ; preds = %13
  %20 = call i64 @mbedtls_sha512_self_test(i32 1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %24
  br label %24

25:                                               ; preds = %19
  %26 = call i64 @mbedtls_sha512_self_test(i32 1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %30
  br label %30

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %4

35:                                               ; preds = %4
  %36 = load i32, i32* @done_sem, align 4
  %37 = call i32 @xSemaphoreGive(i32 %36)
  %38 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i64 @mbedtls_sha1_self_test(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @mbedtls_sha256_self_test(i32) #1

declare dso_local i64 @mbedtls_sha512_self_test(i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
