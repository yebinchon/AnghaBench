; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_intr_alloc.c_esp_intr_reserve.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_intr_alloc.c_esp_intr_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@portNUM_PROCESSORS = common dso_local global i32 0, align 4
@spinlock = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@VECDESC_FL_RESERVED = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_intr_reserve(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 31
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %10, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @portNUM_PROCESSORS, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %16, i32* %3, align 4
  br label %33

17:                                               ; preds = %11
  %18 = call i32 @portENTER_CRITICAL(i32* @spinlock)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.TYPE_3__* @get_desc_for_int(i32 %19, i32 %20)
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %6, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = icmp eq %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = call i32 @portEXIT_CRITICAL(i32* @spinlock)
  %26 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %17
  %28 = load i32, i32* @VECDESC_FL_RESERVED, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = call i32 @portEXIT_CRITICAL(i32* @spinlock)
  %32 = load i32, i32* @ESP_OK, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %24, %15, %9
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local %struct.TYPE_3__* @get_desc_for_int(i32, i32) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
