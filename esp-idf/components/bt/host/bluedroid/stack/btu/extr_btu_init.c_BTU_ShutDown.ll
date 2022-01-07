; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btu/extr_btu_init.c_BTU_ShutDown.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btu/extr_btu_init.c_BTU_ShutDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@btu_general_alarm_hash_map = common dso_local global i32* null, align 8
@btu_general_alarm_lock = common dso_local global i32 0, align 4
@btu_oneshot_alarm_hash_map = common dso_local global i32* null, align 8
@btu_oneshot_alarm_lock = common dso_local global i32 0, align 4
@btu_l2cap_alarm_hash_map = common dso_local global i32* null, align 8
@btu_l2cap_alarm_lock = common dso_local global i32 0, align 4
@btu_thread = common dso_local global i32* null, align 8
@btu_cb_ptr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BTU_ShutDown() #0 {
  %1 = call i32 (...) @btu_task_shut_down()
  %2 = load i32*, i32** @btu_general_alarm_hash_map, align 8
  %3 = call i32 @hash_map_free(i32* %2)
  %4 = call i32 @osi_mutex_free(i32* @btu_general_alarm_lock)
  %5 = load i32*, i32** @btu_oneshot_alarm_hash_map, align 8
  %6 = call i32 @hash_map_free(i32* %5)
  %7 = call i32 @osi_mutex_free(i32* @btu_oneshot_alarm_lock)
  %8 = load i32*, i32** @btu_l2cap_alarm_hash_map, align 8
  %9 = call i32 @hash_map_free(i32* %8)
  %10 = call i32 @osi_mutex_free(i32* @btu_l2cap_alarm_lock)
  %11 = load i32*, i32** @btu_thread, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32*, i32** @btu_thread, align 8
  %15 = call i32 @osi_thread_free(i32* %14)
  store i32* null, i32** @btu_thread, align 8
  br label %16

16:                                               ; preds = %13, %0
  store i32* null, i32** @btu_general_alarm_hash_map, align 8
  store i32* null, i32** @btu_oneshot_alarm_hash_map, align 8
  store i32* null, i32** @btu_l2cap_alarm_hash_map, align 8
  ret void
}

declare dso_local i32 @btu_task_shut_down(...) #1

declare dso_local i32 @hash_map_free(i32*) #1

declare dso_local i32 @osi_mutex_free(i32*) #1

declare dso_local i32 @osi_thread_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
