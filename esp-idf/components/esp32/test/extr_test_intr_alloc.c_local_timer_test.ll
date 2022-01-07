; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_intr_alloc.c_local_timer_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_intr_alloc.c_local_timer_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETS_INTERNAL_TIMER1_INTR_SOURCE = common dso_local global i32 0, align 4
@int_timer_handler = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Int timer 1 intno %d\0A\00", align 1
@int_timer_ctr = common dso_local global i32 0, align 4
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Timer val after 1 sec: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Disabling int\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Re-enabling\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Free int, re-alloc disabled\0A\00", align 1
@ESP_INTR_FLAG_INTRDISABLED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_timer_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @ETS_INTERNAL_TIMER1_INTR_SOURCE, align 4
  %4 = load i32, i32* @int_timer_handler, align 4
  %5 = call i64 @esp_intr_alloc(i32 %3, i32 0, i32 %4, i32* null, i32* %1)
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @ESP_OK, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @TEST_ASSERT(i32 %9)
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @esp_intr_get_intno(i32 %11)
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i64 (...) @xthal_get_ccount()
  %15 = add nsw i64 %14, 8000000
  %16 = call i32 @xthal_set_ccompare(i32 1, i64 %15)
  store i32 0, i32* @int_timer_ctr, align 4
  %17 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %18 = sdiv i32 1000, %17
  %19 = call i32 @vTaskDelay(i32 %18)
  %20 = load i32, i32* @int_timer_ctr, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @int_timer_ctr, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @TEST_ASSERT(i32 %24)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @esp_intr_disable(i32 %27)
  store i32 0, i32* @int_timer_ctr, align 4
  %29 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %30 = sdiv i32 1000, %29
  %31 = call i32 @vTaskDelay(i32 %30)
  %32 = load i32, i32* @int_timer_ctr, align 4
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @int_timer_ctr, align 4
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @TEST_ASSERT(i32 %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @esp_intr_enable(i32 %39)
  %41 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %42 = sdiv i32 1000, %41
  %43 = call i32 @vTaskDelay(i32 %42)
  %44 = load i32, i32* @int_timer_ctr, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @int_timer_ctr, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @TEST_ASSERT(i32 %48)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i32, i32* %1, align 4
  %52 = call i64 @esp_intr_free(i32 %51)
  store i64 %52, i64* %2, align 8
  %53 = load i64, i64* %2, align 8
  %54 = load i64, i64* @ESP_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @TEST_ASSERT(i32 %56)
  %58 = load i32, i32* @ETS_INTERNAL_TIMER1_INTR_SOURCE, align 4
  %59 = load i32, i32* @ESP_INTR_FLAG_INTRDISABLED, align 4
  %60 = load i32, i32* @int_timer_handler, align 4
  %61 = call i64 @esp_intr_alloc(i32 %58, i32 %59, i32 %60, i32* null, i32* %1)
  store i64 %61, i64* %2, align 8
  %62 = load i64, i64* %2, align 8
  %63 = load i64, i64* @ESP_OK, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @TEST_ASSERT(i32 %65)
  store i32 0, i32* @int_timer_ctr, align 4
  %67 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %68 = sdiv i32 1000, %67
  %69 = call i32 @vTaskDelay(i32 %68)
  %70 = load i32, i32* @int_timer_ctr, align 4
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @int_timer_ctr, align 4
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @TEST_ASSERT(i32 %74)
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* %1, align 4
  %78 = call i32 @esp_intr_enable(i32 %77)
  %79 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %80 = sdiv i32 1000, %79
  %81 = call i32 @vTaskDelay(i32 %80)
  %82 = load i32, i32* @int_timer_ctr, align 4
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @int_timer_ctr, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @TEST_ASSERT(i32 %86)
  %88 = load i32, i32* %1, align 4
  %89 = call i64 @esp_intr_free(i32 %88)
  store i64 %89, i64* %2, align 8
  %90 = load i64, i64* %2, align 8
  %91 = load i64, i64* @ESP_OK, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @TEST_ASSERT(i32 %93)
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i64 @esp_intr_alloc(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @esp_intr_get_intno(i32) #1

declare dso_local i32 @xthal_set_ccompare(i32, i64) #1

declare dso_local i64 @xthal_get_ccount(...) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @esp_intr_disable(i32) #1

declare dso_local i32 @esp_intr_enable(i32) #1

declare dso_local i64 @esp_intr_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
