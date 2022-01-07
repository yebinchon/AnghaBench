; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_i2c.c_i2c_reset_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_i2c.c_i2c_reset_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@I2C_NUM_MAX = common dso_local global i64 0, align 8
@I2C_NUM_ERROR_STR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@i2c_spinlock = common dso_local global i32* null, align 8
@I2C = common dso_local global %struct.TYPE_4__** null, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_reset_tx_fifo(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @I2C_NUM_MAX, align 8
  %5 = icmp ult i64 %3, %4
  %6 = zext i1 %5 to i32
  %7 = load i32, i32* @I2C_NUM_ERROR_STR, align 4
  %8 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %9 = call i32 @I2C_CHECK(i32 %6, i32 %7, i32 %8)
  %10 = load i32*, i32** @i2c_spinlock, align 8
  %11 = load i64, i64* %2, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = call i32 @I2C_ENTER_CRITICAL(i32* %12)
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @I2C, align 8
  %15 = load i64, i64* %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %14, i64 %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @I2C, align 8
  %21 = load i64, i64* %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %20, i64 %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** @i2c_spinlock, align 8
  %27 = load i64, i64* %2, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i32 @I2C_EXIT_CRITICAL(i32* %28)
  %30 = load i32, i32* @ESP_OK, align 4
  ret i32 %30
}

declare dso_local i32 @I2C_CHECK(i32, i32, i32) #1

declare dso_local i32 @I2C_ENTER_CRITICAL(i32*) #1

declare dso_local i32 @I2C_EXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
