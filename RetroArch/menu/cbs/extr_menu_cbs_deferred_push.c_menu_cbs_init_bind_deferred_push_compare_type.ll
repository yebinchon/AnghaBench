; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_deferred_push.c_menu_cbs_init_bind_deferred_push_compare_type.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_deferred_push.c_menu_cbs_init_bind_deferred_push_compare_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILE_TYPE_PLAYLIST_COLLECTION = common dso_local global i32 0, align 4
@deferred_push_rdb_collection = common dso_local global i32 0, align 4
@MENU_SETTING_ACTION_CORE_DISK_OPTIONS = common dso_local global i32 0, align 4
@deferred_push_disk_options = common dso_local global i32 0, align 4
@MENU_SET_CDROM_INFO = common dso_local global i32 0, align 4
@deferred_push_cdrom_info_detail_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @menu_cbs_init_bind_deferred_push_compare_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_cbs_init_bind_deferred_push_compare_type(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @FILE_TYPE_PLAYLIST_COLLECTION, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @deferred_push_rdb_collection, align 4
  %12 = call i32 @BIND_ACTION_DEFERRED_PUSH(i32* %10, i32 %11)
  br label %31

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MENU_SETTING_ACTION_CORE_DISK_OPTIONS, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @deferred_push_disk_options, align 4
  %20 = call i32 @BIND_ACTION_DEFERRED_PUSH(i32* %18, i32 %19)
  br label %30

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MENU_SET_CDROM_INFO, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @deferred_push_cdrom_info_detail_list, align 4
  %28 = call i32 @BIND_ACTION_DEFERRED_PUSH(i32* %26, i32 %27)
  store i32 0, i32* %3, align 4
  br label %32

29:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %32

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30, %9
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %29, %25
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @BIND_ACTION_DEFERRED_PUSH(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
