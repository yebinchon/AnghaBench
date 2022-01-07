; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_spp_vfs_acceptor/main/extr_example_spp_vfs_acceptor_demo.c_spp_read_handle.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_spp_vfs_acceptor/main/extr_example_spp_vfs_acceptor_demo.c_spp_read_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spp_data = common dso_local global i32 0, align 4
@SPP_DATA_LEN = common dso_local global i32 0, align 4
@SPP_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"fd = %d data_len = %d\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @spp_read_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spp_read_handle(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i32
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %31, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @spp_data, align 4
  %10 = load i32, i32* @SPP_DATA_LEN, align 4
  %11 = call i32 @read(i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @SPP_TAG, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ESP_LOGI(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %32

19:                                               ; preds = %7
  %20 = load i32, i32* @SPP_TAG, align 4
  %21 = load i32, i32* @spp_data, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @esp_log_buffer_hex(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %28 = sdiv i32 1000, %27
  %29 = call i32 @vTaskDelay(i32 %28)
  br label %30

30:                                               ; preds = %26, %19
  br label %31

31:                                               ; preds = %30
  br i1 true, label %7, label %32

32:                                               ; preds = %31, %18
  %33 = call i32 (...) @spp_wr_task_shut_down()
  ret void
}

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32) #1

declare dso_local i32 @esp_log_buffer_hex(i32, i32, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @spp_wr_task_shut_down(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
