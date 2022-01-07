; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/slave/main/extr_app_main.c_event_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/slave/main/extr_app_main.c_event_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"event: %d\00", align 1
@s_job = common dso_local global i32 0, align 4
@JOB_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @event_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_cb(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @TAG, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @ESP_EARLY_LOGD(i32 %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %11 [
    i32 0, label %7
  ]

7:                                                ; preds = %1
  %8 = call i32 @sdio_slave_read_reg(i32 0)
  store i32 %8, i32* @s_job, align 4
  %9 = load i32, i32* @JOB_IDLE, align 4
  %10 = call i32 @sdio_slave_write_reg(i32 0, i32 %9)
  br label %11

11:                                               ; preds = %1, %7
  ret void
}

declare dso_local i32 @ESP_EARLY_LOGD(i32, i8*, i32) #1

declare dso_local i32 @sdio_slave_read_reg(i32) #1

declare dso_local i32 @sdio_slave_write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
