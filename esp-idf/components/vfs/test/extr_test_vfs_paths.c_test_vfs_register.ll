; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/test/extr_test_vfs_paths.c_test_vfs_register.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/test/extr_test_vfs_paths.c_test_vfs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"esp_vfs_register should succeed\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"esp_vfs_register should fail\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_vfs_register(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 (...) @DUMMY_VFS()
  store i32 %10, i32* %8, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @esp_vfs_register(i8* %11, i32* %8, i32* %7)
  store i64 %12, i64* %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i64, i64* @ESP_OK, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @UNITY_TEST_ASSERT_EQUAL_INT(i64 %16, i64 %17, i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %25

20:                                               ; preds = %3
  %21 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @UNITY_TEST_ASSERT_EQUAL_INT(i64 %21, i64 %22, i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @ESP_OK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @esp_vfs_unregister(i8* %30)
  %32 = call i32 @TEST_ESP_OK(i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  ret void
}

declare dso_local i32 @DUMMY_VFS(...) #1

declare dso_local i64 @esp_vfs_register(i8*, i32*, i32*) #1

declare dso_local i32 @UNITY_TEST_ASSERT_EQUAL_INT(i64, i64, i32, i8*) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @esp_vfs_unregister(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
