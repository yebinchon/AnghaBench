; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_cheat_add_top.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_cheat_add_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.item_cheat* }
%struct.item_cheat = type { i64 }

@MENU_ENTRIES_CTL_SET_REFRESH = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_SET_PREVENT_POPULATE = common dso_local global i32 0, align 4
@CHEAT_HANDLER_TYPE_EMU = common dso_local global i32 0, align 4
@cheat_manager_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MSG_CHEAT_ADD_TOP_SUCCESS = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_cheat_add_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_cheat_add_top(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.item_cheat, align 8
  %13 = alloca [256 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %14, align 4
  %16 = call i32 (...) @cheat_manager_get_size()
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @MENU_ENTRIES_CTL_SET_REFRESH, align 4
  %19 = call i32 @menu_entries_ctl(i32 %18, i32* %14)
  %20 = load i32, i32* @RARCH_MENU_CTL_SET_PREVENT_POPULATE, align 4
  %21 = call i32 @menu_driver_ctl(i32 %20, i32* null)
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* @CHEAT_HANDLER_TYPE_EMU, align 4
  %24 = call i32 @cheat_manager_realloc(i32 %22, i32 %23)
  %25 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 1), align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 0), align 8
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %25, i64 %28
  %30 = call i32 @memcpy(%struct.item_cheat* %12, %struct.item_cheat* %29, i32 8)
  %31 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %12, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 0), align 8
  %33 = sub nsw i32 %32, 2
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %56, %5
  %35 = load i32, i32* %11, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 1), align 8
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %38, i64 %41
  %43 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 1), align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %43, i64 %45
  %47 = call i32 @memcpy(%struct.item_cheat* %42, %struct.item_cheat* %46, i32 8)
  %48 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 1), align 8
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %48, i64 %51
  %53 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %37
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %11, align 4
  br label %34

59:                                               ; preds = %34
  %60 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 1), align 8
  %61 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %60, i64 0
  %62 = call i32 @memcpy(%struct.item_cheat* %61, %struct.item_cheat* %12, i32 8)
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %64 = load i32, i32* @MSG_CHEAT_ADD_TOP_SUCCESS, align 4
  %65 = call i32 @msg_hash_to_str(i32 %64)
  %66 = call i32 @strlcpy(i8* %63, i32 %65, i32 256)
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 255
  store i8 0, i8* %67, align 1
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %69 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %70 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %71 = call i32 @runloop_msg_queue_push(i8* %68, i32 1, i32 180, i32 1, i32* null, i32 %69, i32 %70)
  ret i32 0
}

declare dso_local i32 @cheat_manager_get_size(...) #1

declare dso_local i32 @menu_entries_ctl(i32, i32*) #1

declare dso_local i32 @menu_driver_ctl(i32, i32*) #1

declare dso_local i32 @cheat_manager_realloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.item_cheat*, %struct.item_cheat*, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
