; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_intr_alloc.c_esp_intr_mark_shared.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_intr_alloc.c_esp_intr_mark_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@portNUM_PROCESSORS = common dso_local global i32 0, align 4
@spinlock = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@VECDESC_FL_SHARED = common dso_local global i32 0, align 4
@VECDESC_FL_INIRAM = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_intr_mark_shared(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 31
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %12, i32* %4, align 4
  br label %44

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @portNUM_PROCESSORS, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %18, i32* %4, align 4
  br label %44

19:                                               ; preds = %13
  %20 = call i32 @portENTER_CRITICAL(i32* @spinlock)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.TYPE_3__* @get_desc_for_int(i32 %21, i32 %22)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %8, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = icmp eq %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = call i32 @portEXIT_CRITICAL(i32* @spinlock)
  %28 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %28, i32* %4, align 4
  br label %44

29:                                               ; preds = %19
  %30 = load i32, i32* @VECDESC_FL_SHARED, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32, i32* @VECDESC_FL_INIRAM, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %29
  %42 = call i32 @portEXIT_CRITICAL(i32* @spinlock)
  %43 = load i32, i32* @ESP_OK, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %26, %17, %11
  %45 = load i32, i32* %4, align 4
  ret i32 %45
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
