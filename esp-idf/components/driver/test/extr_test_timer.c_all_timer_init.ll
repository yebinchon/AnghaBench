; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/extr_test_timer.c_all_timer_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/extr_test_timer.c_all_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMER_GROUP_0 = common dso_local global i32 0, align 4
@TIMER_0 = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@TIMER_1 = common dso_local global i32 0, align 4
@TIMER_GROUP_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @all_timer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @all_timer_init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @TIMER_GROUP_0, align 4
  %7 = load i32, i32* @TIMER_0, align 4
  %8 = call i64 @timer_init(i32 %6, i32 %7, i32* %3)
  store i64 %8, i64* %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @ESP_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @TEST_ASSERT(i32 %15)
  br label %23

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @TEST_ASSERT(i32 %21)
  br label %23

23:                                               ; preds = %17, %11
  %24 = load i32, i32* @TIMER_GROUP_0, align 4
  %25 = load i32, i32* @TIMER_1, align 4
  %26 = call i64 @timer_init(i32 %24, i32 %25, i32* %3)
  store i64 %26, i64* %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @ESP_OK, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @TEST_ASSERT(i32 %33)
  br label %41

35:                                               ; preds = %23
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @TEST_ASSERT(i32 %39)
  br label %41

41:                                               ; preds = %35, %29
  %42 = load i32, i32* @TIMER_GROUP_1, align 4
  %43 = load i32, i32* @TIMER_0, align 4
  %44 = call i64 @timer_init(i32 %42, i32 %43, i32* %3)
  store i64 %44, i64* %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @ESP_OK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @TEST_ASSERT(i32 %51)
  br label %59

53:                                               ; preds = %41
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @TEST_ASSERT(i32 %57)
  br label %59

59:                                               ; preds = %53, %47
  %60 = load i32, i32* @TIMER_GROUP_1, align 4
  %61 = load i32, i32* @TIMER_1, align 4
  %62 = call i64 @timer_init(i32 %60, i32 %61, i32* %3)
  store i64 %62, i64* %5, align 8
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @ESP_OK, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @TEST_ASSERT(i32 %69)
  br label %77

71:                                               ; preds = %59
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @TEST_ASSERT(i32 %75)
  br label %77

77:                                               ; preds = %71, %65
  ret void
}

declare dso_local i64 @timer_init(i32, i32, i32*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
