; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_rtc_isr_register.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_rtc_isr_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32 }

@ESP_OK = common dso_local global i64 0, align 8
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@s_rtc_isr_handler_list_lock = common dso_local global i32 0, align 4
@s_rtc_isr_handler_list = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtc_isr_register(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i64 (...) @rtc_isr_ensure_installed()
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @ESP_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* %8, align 8
  store i64 %15, i64* %4, align 8
  br label %38

16:                                               ; preds = %3
  %17 = call %struct.TYPE_4__* @malloc(i32 24)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %9, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %21, i64* %4, align 8
  br label %38

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = call i32 @portENTER_CRITICAL(i32* @s_rtc_isr_handler_list_lock)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %34 = load i32, i32* @next, align 4
  %35 = call i32 @SLIST_INSERT_HEAD(i32* @s_rtc_isr_handler_list, %struct.TYPE_4__* %33, i32 %34)
  %36 = call i32 @portEXIT_CRITICAL(i32* @s_rtc_isr_handler_list_lock)
  %37 = load i64, i64* @ESP_OK, align 8
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %22, %20, %14
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

declare dso_local i64 @rtc_isr_ensure_installed(...) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
