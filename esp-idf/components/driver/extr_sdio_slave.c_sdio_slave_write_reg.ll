; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_sdio_slave_write_reg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_sdio_slave_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"interrupt reg, please use sdio_slave_clear_int\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"write register address wrong\00", align 1
@context = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_slave_write_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 28
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %12, 31
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = call i32 @SDIO_SLAVE_LOGE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %16, i32* %3, align 4
  br label %52

17:                                               ; preds = %11, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 64
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %17
  %24 = call i32 @SDIO_SLAVE_LOGE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %25, i32* %3, align 4
  br label %52

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @HOST_SLCHOST_CONF_W_REG(i32 %27)
  %29 = and i32 %28, -4
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = srem i32 %30, 4
  %32 = mul nsw i32 %31, 8
  store i32 %32, i32* %7, align 4
  %33 = call i32 @portENTER_CRITICAL(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @context, i32 0, i32 0))
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32*
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 255, %39
  %41 = xor i32 %40, -1
  %42 = and i32 %38, %41
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %42, %45
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i32*
  store i32 %46, i32* %49, align 4
  %50 = call i32 @portEXIT_CRITICAL(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @context, i32 0, i32 0))
  %51 = load i32, i32* @ESP_OK, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %26, %23, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @SDIO_SLAVE_LOGE(i8*) #1

declare dso_local i32 @HOST_SLCHOST_CONF_W_REG(i32) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
