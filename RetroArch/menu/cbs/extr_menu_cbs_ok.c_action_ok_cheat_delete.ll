; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_cheat_delete.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_cheat_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i32*, i32 }
%struct.TYPE_5__ = type { i64 }

@cheat_manager_state = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CHEAT_HANDLER_TYPE_RETRO = common dso_local global i32 0, align 4
@MSG_CHEAT_DELETE_SUCCESS = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_PATH = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_IMAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_cheat_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_cheat_delete(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %15 = call i32 (...) @cheat_manager_get_size()
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ugt i32 %17, 0
  br i1 %18, label %19, label %97

19:                                               ; preds = %5
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 1), align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 2, i32 0), align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 1), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 2, i32 0), align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @free(i32* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 1), align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 2, i32 0), align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %26, %19
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 1), align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 2, i32 0), align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 1), align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 2, i32 0), align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @free(i32* %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 1), align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 2, i32 0), align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %44, %37
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 2, i32 0), align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %81, %55
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 0), align 8
  %61 = sub nsw i32 %60, 1
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %58
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 1), align 8
  %65 = load i32, i32* %14, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 1), align 8
  %69 = load i32, i32* %14, align 4
  %70 = add i32 %69, 1
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %71
  %73 = call i32 @memcpy(%struct.TYPE_6__* %67, %struct.TYPE_6__* %72, i32 4)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 1), align 8
  %75 = load i32, i32* %14, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %63
  %82 = load i32, i32* %14, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %14, align 4
  br label %58

84:                                               ; preds = %58
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 1), align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 0), align 8
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i32* null, i32** %90, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 1), align 8
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cheat_manager_state, i32 0, i32 0), align 8
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32* null, i32** %96, align 8
  br label %97

97:                                               ; preds = %84, %5
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @CHEAT_HANDLER_TYPE_RETRO, align 4
  %100 = call i32 @cheat_manager_realloc(i32 %98, i32 %99)
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %102 = load i32, i32* @MSG_CHEAT_DELETE_SUCCESS, align 4
  %103 = call i32 @msg_hash_to_str(i32 %102)
  %104 = call i32 @strlcpy(i8* %101, i32 %103, i32 256)
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 255
  store i8 0, i8* %105, align 1
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %107 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %108 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %109 = call i32 @runloop_msg_queue_push(i8* %106, i32 1, i32 180, i32 1, i32* null, i32 %107, i32 %108)
  %110 = call i64 (...) @menu_navigation_get_selection()
  store i64 %110, i64* %12, align 8
  %111 = call i32 @menu_entries_pop_stack(i64* %12, i32 0, i32 1)
  %112 = load i64, i64* %12, align 8
  %113 = call i32 @menu_navigation_set_selection(i64 %112)
  %114 = load i32, i32* @RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_PATH, align 4
  %115 = call i32 @menu_driver_ctl(i32 %114, i32* null)
  %116 = load i32, i32* @RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_IMAGE, align 4
  %117 = call i32 @menu_driver_ctl(i32 %116, i32* null)
  ret i32 0
}

declare dso_local i32 @cheat_manager_get_size(...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @cheat_manager_realloc(i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @menu_entries_pop_stack(i64*, i32, i32) #1

declare dso_local i32 @menu_navigation_set_selection(i64) #1

declare dso_local i32 @menu_driver_ctl(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
