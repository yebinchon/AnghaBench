; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_btstack_hid.c_btstack_try_load.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_btstack_hid.c_btstack_try_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64 }

@btstack_tested = common dso_local global i32 0, align 4
@btstack_loaded = common dso_local global i32 0, align 4
@RUN_LOOP_POSIX = common dso_local global i32 0, align 4
@btpad_packet_handler = common dso_local global i32 0, align 4
@RUN_LOOP_COCOA = common dso_local global i32 0, align 4
@grabbers = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @btstack_try_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btstack_try_load() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i8* null, i8** %2, align 8
  %3 = load i32, i32* @btstack_tested, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @btstack_loaded, align 4
  store i32 %6, i32* %1, align 4
  br label %17

7:                                                ; preds = %0
  store i32 1, i32* @btstack_tested, align 4
  store i32 0, i32* @btstack_loaded, align 4
  %8 = call i8* (...) @btstack_get_handle()
  store i8* %8, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %17

12:                                               ; preds = %7
  %13 = load i32, i32* @RUN_LOOP_POSIX, align 4
  %14 = call i32 @run_loop_init_ptr(i32 %13)
  %15 = load i32, i32* @btpad_packet_handler, align 4
  %16 = call i32 @bt_register_packet_handler_ptr(i32 %15)
  store i32 1, i32* @btstack_loaded, align 4
  store i32 1, i32* %1, align 4
  br label %17

17:                                               ; preds = %12, %11, %5
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i8* @btstack_get_handle(...) #1

declare dso_local i32 @run_loop_init_ptr(i32) #1

declare dso_local i32 @bt_register_packet_handler_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
