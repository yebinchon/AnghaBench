; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/test/extr_test_freertos_backported_functions.c_task_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/test/extr_test_freertos_backported_functions.c_task_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_OF_TLSP = common dso_local global i32 0, align 4
@TLSP_SET_BASE = common dso_local global i32 0, align 4
@task_storage = common dso_local global i32** null, align 8
@del_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @task_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %7 = call i32 (...) @xPortGetCoreID()
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %36, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @NO_OF_TLSP, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  %13 = load i32, i32* @TLSP_SET_BASE, align 4
  %14 = load i32, i32* %4, align 4
  %15 = shl i32 %13, %14
  %16 = load i32**, i32*** @task_storage, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %15, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32**, i32*** @task_storage, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = bitcast i32* %32 to i8*
  %34 = load i32, i32* @del_cb, align 4
  %35 = call i32 @vTaskSetThreadLocalStoragePointerAndDelCallback(i32* null, i32 %24, i8* %33, i32 %34)
  br label %36

36:                                               ; preds = %12
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %8

39:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %54, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @NO_OF_TLSP, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @pvTaskGetThreadLocalStoragePointer(i32* null, i32 %45)
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %6, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TLSP_SET_BASE, align 4
  %51 = load i32, i32* %5, align 4
  %52 = shl i32 %50, %51
  %53 = call i32 @TEST_ASSERT_EQUAL(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %40

57:                                               ; preds = %40
  %58 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @xPortGetCoreID(...) #1

declare dso_local i32 @vTaskSetThreadLocalStoragePointerAndDelCallback(i32*, i32, i8*, i32) #1

declare dso_local i64 @pvTaskGetThreadLocalStoragePointer(i32*, i32) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
