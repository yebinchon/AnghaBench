; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_dport.c_accessDPORT2.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_dport.c_accessDPORT2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dport_test_result = common dso_local global i32 0, align 4
@ETS_INTERNAL_TIMER2_INTR_SOURCE = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_LEVEL5 = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_IRAM = common dso_local global i32 0, align 4
@inth = common dso_local global i32 0, align 4
@exit_flag = common dso_local global i32 0, align 4
@DPORT_DATE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"accessDPORT2 finish\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @accessDPORT2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accessDPORT2(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to i32*
  store i32* %6, i32** %3, align 8
  store i32 1, i32* @dport_test_result, align 4
  %7 = load i32, i32* @ETS_INTERNAL_TIMER2_INTR_SOURCE, align 4
  %8 = load i32, i32* @ESP_INTR_FLAG_LEVEL5, align 4
  %9 = load i32, i32* @ESP_INTR_FLAG_IRAM, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @esp_intr_alloc(i32 %7, i32 %10, i32* null, i32* null, i32* @inth)
  %12 = call i32 @TEST_ESP_OK(i32 %11)
  br label %13

13:                                               ; preds = %34, %1
  %14 = load i32, i32* @exit_flag, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = call i64 (...) @XTHAL_GET_CCOUNT()
  %18 = add nsw i64 %17, 21
  %19 = call i32 @XTHAL_SET_CCOMPARE(i32 2, i64 %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %31, %16
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 200
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i32, i32* @DPORT_DATE_REG, align 4
  %25 = call i64 @DPORT_REG_READ(i32 %24)
  %26 = load i32, i32* @DPORT_DATE_REG, align 4
  %27 = call i64 @DPORT_REG_READ(i32 %26)
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* @dport_test_result, align 4
  br label %34

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %20

34:                                               ; preds = %29, %20
  br label %13

35:                                               ; preds = %13
  %36 = load i32, i32* @inth, align 4
  %37 = call i32 @esp_intr_free(i32 %36)
  %38 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @xSemaphoreGive(i32 %40)
  %42 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @esp_intr_alloc(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @XTHAL_SET_CCOMPARE(i32, i64) #1

declare dso_local i64 @XTHAL_GET_CCOUNT(...) #1

declare dso_local i64 @DPORT_REG_READ(i32) #1

declare dso_local i32 @esp_intr_free(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
