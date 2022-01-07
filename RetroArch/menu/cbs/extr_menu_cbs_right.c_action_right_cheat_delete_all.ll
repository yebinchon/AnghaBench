; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_right.c_action_right_cheat_delete_all.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_right.c_action_right_cheat_delete_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@cheat_manager_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CHEAT_HANDLER_TYPE_EMU = common dso_local global i32 0, align 4
@MENU_ENTRIES_CTL_SET_REFRESH = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_SET_PREVENT_POPULATE = common dso_local global i32 0, align 4
@MSG_CHEAT_DELETE_ALL_SUCCESS = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @action_right_cheat_delete_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_right_cheat_delete_all(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 0), align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 0), align 4
  %11 = icmp sge i32 %10, 5
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %13, align 16
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 0), align 4
  %14 = load i32, i32* @CHEAT_HANDLER_TYPE_EMU, align 4
  %15 = call i32 @cheat_manager_realloc(i32 0, i32 %14)
  %16 = load i32, i32* @MENU_ENTRIES_CTL_SET_REFRESH, align 4
  %17 = call i32 @menu_entries_ctl(i32 %16, i32* %7)
  %18 = load i32, i32* @RARCH_MENU_CTL_SET_PREVENT_POPULATE, align 4
  %19 = call i32 @menu_driver_ctl(i32 %18, i32* null)
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %21 = load i32, i32* @MSG_CHEAT_DELETE_ALL_SUCCESS, align 4
  %22 = call i32 @msg_hash_to_str(i32 %21)
  %23 = call i32 @strlcpy(i8* %20, i32 %22, i32 256)
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 255
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %26 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %27 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %28 = call i32 @runloop_msg_queue_push(i8* %25, i32 1, i32 180, i32 1, i32* null, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %12, %3
  ret i32 0
}

declare dso_local i32 @cheat_manager_realloc(i32, i32) #1

declare dso_local i32 @menu_entries_ctl(i32, i32*) #1

declare dso_local i32 @menu_driver_ctl(i32, i32*) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
