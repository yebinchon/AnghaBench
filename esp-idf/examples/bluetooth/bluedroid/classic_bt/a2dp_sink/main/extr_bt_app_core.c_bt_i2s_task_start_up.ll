; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/a2dp_sink/main/extr_bt_app_core.c_bt_i2s_task_start_up.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/a2dp_sink/main/extr_bt_app_core.c_bt_i2s_task_start_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RINGBUF_TYPE_BYTEBUF = common dso_local global i32 0, align 4
@s_ringbuf_i2s = common dso_local global i32* null, align 8
@bt_i2s_task_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"BtI2ST\00", align 1
@configMAX_PRIORITIES = common dso_local global i64 0, align 8
@s_bt_i2s_task_handle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bt_i2s_task_start_up() #0 {
  %1 = load i32, i32* @RINGBUF_TYPE_BYTEBUF, align 4
  %2 = call i32* @xRingbufferCreate(i32 8192, i32 %1)
  store i32* %2, i32** @s_ringbuf_i2s, align 8
  %3 = load i32*, i32** @s_ringbuf_i2s, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %11

6:                                                ; preds = %0
  %7 = load i32, i32* @bt_i2s_task_handler, align 4
  %8 = load i64, i64* @configMAX_PRIORITIES, align 8
  %9 = sub nsw i64 %8, 3
  %10 = call i32 @xTaskCreate(i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1024, i32* null, i64 %9, i32* @s_bt_i2s_task_handle)
  br label %11

11:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32* @xRingbufferCreate(i32, i32) #1

declare dso_local i32 @xTaskCreate(i32, i8*, i32, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
