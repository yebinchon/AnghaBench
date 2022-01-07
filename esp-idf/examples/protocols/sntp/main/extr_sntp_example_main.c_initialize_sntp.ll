; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/sntp/main/extr_sntp_example_main.c_initialize_sntp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/sntp/main/extr_sntp_example_main.c_initialize_sntp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Initializing SNTP\00", align 1
@SNTP_OPMODE_POLL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"pool.ntp.org\00", align 1
@time_sync_notification_cb = common dso_local global i32 0, align 4
@SNTP_SYNC_MODE_SMOOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initialize_sntp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_sntp() #0 {
  %1 = load i32, i32* @TAG, align 4
  %2 = call i32 @ESP_LOGI(i32 %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @SNTP_OPMODE_POLL, align 4
  %4 = call i32 @sntp_setoperatingmode(i32 %3)
  %5 = call i32 @sntp_setservername(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @time_sync_notification_cb, align 4
  %7 = call i32 @sntp_set_time_sync_notification_cb(i32 %6)
  %8 = call i32 (...) @sntp_init()
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @sntp_setoperatingmode(i32) #1

declare dso_local i32 @sntp_setservername(i32, i8*) #1

declare dso_local i32 @sntp_set_time_sync_notification_cb(i32) #1

declare dso_local i32 @sntp_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
