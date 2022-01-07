; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_populate_entries.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_populate_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i64, i8*, i8* }

@XMB_SYSTEM_TAB_FAVORITES = common dso_local global i32 0, align 4
@XMB_SYSTEM_TAB_HISTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_HORIZONTAL_MENU = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_IMAGES_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_RDB_ENTRY_DETAIL = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_DATABASE_MANAGER_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_RPL_ENTRY_ACTIONS = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_IS_PREVENT_POPULATE = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_UNSET_PREVENT_POPULATE = common dso_local global i32 0, align 4
@XMB_SYSTEM_TAB_IMAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32)* @xmb_populate_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_populate_entries(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %9, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %111

16:                                               ; preds = %4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @xmb_get_system_tab(%struct.TYPE_7__* %17, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @XMB_SYSTEM_TAB_FAVORITES, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %54, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @XMB_SYSTEM_TAB_HISTORY, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %54, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* @MENU_ENUM_LABEL_HORIZONTAL_MENU, align 4
  %33 = call i32 @msg_hash_to_str(i32 %32)
  %34 = call i8* @string_is_equal(i8* %31, i32 %33)
  %35 = icmp ne i8* %34, null
  br i1 %35, label %54, label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST, align 4
  %39 = call i32 @msg_hash_to_str(i32 %38)
  %40 = call i8* @string_is_equal(i8* %37, i32 %39)
  %41 = icmp ne i8* %40, null
  br i1 %41, label %54, label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST, align 4
  %45 = call i32 @msg_hash_to_str(i32 %44)
  %46 = call i8* @string_is_equal(i8* %43, i32 %45)
  %47 = icmp ne i8* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_IMAGES_LIST, align 4
  %51 = call i32 @msg_hash_to_str(i32 %50)
  %52 = call i8* @string_is_equal(i8* %49, i32 %51)
  %53 = icmp ne i8* %52, null
  br label %54

54:                                               ; preds = %48, %42, %36, %30, %26, %16
  %55 = phi i1 [ true, %42 ], [ true, %36 ], [ true, %30 ], [ true, %26 ], [ true, %16 ], [ %53, %48 ]
  %56 = zext i1 %55 to i32
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_RDB_ENTRY_DETAIL, align 4
  %66 = call i32 @msg_hash_to_str(i32 %65)
  %67 = call i8* @string_is_equal(i8* %64, i32 %66)
  %68 = icmp ne i8* %67, null
  %69 = xor i1 %68, true
  br label %70

70:                                               ; preds = %63, %54
  %71 = phi i1 [ false, %54 ], [ %69, %63 ]
  %72 = zext i1 %71 to i32
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_DATABASE_MANAGER_LIST, align 4
  %77 = call i32 @msg_hash_to_str(i32 %76)
  %78 = call i8* @string_is_equal(i8* %75, i32 %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_RPL_ENTRY_ACTIONS, align 4
  %83 = call i32 @msg_hash_to_str(i32 %82)
  %84 = call i8* @string_is_equal(i8* %81, i32 %83)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @RARCH_MENU_CTL_IS_PREVENT_POPULATE, align 4
  %88 = call i64 @menu_driver_ctl(i32 %87, i32* null)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %70
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %92 = call i32 @xmb_selection_pointer_changed(%struct.TYPE_7__* %91, i32 0)
  %93 = load i32, i32* @RARCH_MENU_CTL_UNSET_PREVENT_POPULATE, align 4
  %94 = call i64 @menu_driver_ctl(i32 %93, i32* null)
  br label %111

95:                                               ; preds = %70
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %97 = call i32 @xmb_set_title(%struct.TYPE_7__* %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %95
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %107 = call i32 @xmb_list_switch(%struct.TYPE_7__* %106)
  br label %111

108:                                              ; preds = %95
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %110 = call i32 @xmb_list_open(%struct.TYPE_7__* %109)
  br label %111

111:                                              ; preds = %15, %90, %108, %105
  ret void
}

declare dso_local i32 @xmb_get_system_tab(%struct.TYPE_7__*, i32) #1

declare dso_local i8* @string_is_equal(i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i64 @menu_driver_ctl(i32, i32*) #1

declare dso_local i32 @xmb_selection_pointer_changed(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @xmb_set_title(%struct.TYPE_7__*) #1

declare dso_local i32 @xmb_list_switch(%struct.TYPE_7__*) #1

declare dso_local i32 @xmb_list_open(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
