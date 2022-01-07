; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_host.c_sdmmc_isr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_host.c_sdmmc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@pdFALSE = common dso_local global i32 0, align 4
@SDMMC = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@s_io_intr_event = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sdmmc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdmmc_isr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = ptrtoint i8* %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @pdFALSE, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @SDMMC, i32 0, i32 1, i32 0), align 4
  %13 = and i32 %12, 65535
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @SDMMC, i32 0, i32 3, i32 0), align 4
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @SDMMC, i32 0, i32 2, i32 0), align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @SDMMC, i32 0, i32 2, i32 0), align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 31
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @xQueueSendFromISR(i32 %28, %struct.TYPE_12__* %4, i32* %5)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @SDMMC, i32 0, i32 1, i32 1), align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @SDMMC, i32 0, i32 0, i32 0), align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @SDMMC, i32 0, i32 0, i32 0), align 4
  %39 = load i32, i32* @s_io_intr_event, align 4
  %40 = call i32 @xSemaphoreGiveFromISR(i32 %39, i32* %5)
  br label %41

41:                                               ; preds = %34, %30
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @pdTRUE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 (...) @portYIELD_FROM_ISR()
  br label %47

47:                                               ; preds = %45, %41
  ret void
}

declare dso_local i32 @xQueueSendFromISR(i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @xSemaphoreGiveFromISR(i32, i32*) #1

declare dso_local i32 @portYIELD_FROM_ISR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
