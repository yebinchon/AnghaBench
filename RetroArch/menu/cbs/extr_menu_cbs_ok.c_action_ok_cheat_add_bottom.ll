; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_cheat_add_bottom.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_cheat_add_bottom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MENU_ENTRIES_CTL_SET_REFRESH = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_SET_PREVENT_POPULATE = common dso_local global i32 0, align 4
@CHEAT_HANDLER_TYPE_EMU = common dso_local global i32 0, align 4
@MSG_CHEAT_ADD_BOTTOM_SUCCESS = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_cheat_add_bottom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_cheat_add_bottom(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %14 = call i32 (...) @cheat_manager_get_size()
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @MENU_ENTRIES_CTL_SET_REFRESH, align 4
  %17 = call i32 @menu_entries_ctl(i32 %16, i32* %12)
  %18 = load i32, i32* @RARCH_MENU_CTL_SET_PREVENT_POPULATE, align 4
  %19 = call i32 @menu_driver_ctl(i32 %18, i32* null)
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @CHEAT_HANDLER_TYPE_EMU, align 4
  %22 = call i32 @cheat_manager_realloc(i32 %20, i32 %21)
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %23, align 16
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %25 = load i32, i32* @MSG_CHEAT_ADD_BOTTOM_SUCCESS, align 4
  %26 = call i32 @msg_hash_to_str(i32 %25)
  %27 = call i32 @strlcpy(i8* %24, i32 %26, i32 256)
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 255
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %30 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %31 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %32 = call i32 @runloop_msg_queue_push(i8* %29, i32 1, i32 180, i32 1, i32* null, i32 %30, i32 %31)
  ret i32 0
}

declare dso_local i32 @cheat_manager_get_size(...) #1

declare dso_local i32 @menu_entries_ctl(i32, i32*) #1

declare dso_local i32 @menu_driver_ctl(i32, i32*) #1

declare dso_local i32 @cheat_manager_realloc(i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
