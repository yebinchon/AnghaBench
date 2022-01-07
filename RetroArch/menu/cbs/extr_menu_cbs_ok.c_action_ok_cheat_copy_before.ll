; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_cheat_copy_before.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_cheat_copy_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.item_cheat, %struct.item_cheat* }
%struct.item_cheat = type { i64, i8*, i8* }

@CHEAT_HANDLER_TYPE_RETRO = common dso_local global i32 0, align 4
@cheat_manager_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MENU_ENTRIES_CTL_SET_REFRESH = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_SET_PREVENT_POPULATE = common dso_local global i32 0, align 4
@MSG_CHEAT_COPY_BEFORE_SUCCESS = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_cheat_copy_before to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_cheat_copy_before(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
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
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* @CHEAT_HANDLER_TYPE_RETRO, align 4
  %20 = call i32 @cheat_manager_realloc(i32 %18, i32 %19)
  %21 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 1, i32 0), align 8
  %23 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %21, i64 %22
  %24 = call i32 @memcpy(%struct.item_cheat* %12, %struct.item_cheat* %23, i32 24)
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 1, i32 0), align 8
  %26 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %12, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %12, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %12, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @strdup(i8* %32)
  %34 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %12, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  br label %35

35:                                               ; preds = %30, %5
  %36 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %12, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %12, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @strdup(i8* %41)
  %43 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %12, i32 0, i32 1
  store i8* %42, i8** %43, align 8
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 0), align 8
  %46 = sub nsw i32 %45, 2
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %72, %44
  %48 = load i32, i32* %11, align 4
  %49 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %12, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = icmp sge i32 %48, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %47
  %54 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %54, i64 %57
  %59 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %59, i64 %61
  %63 = call i32 @memcpy(%struct.item_cheat* %58, %struct.item_cheat* %62, i32 24)
  %64 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %64, i64 %67
  %69 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %53
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %11, align 4
  br label %47

75:                                               ; preds = %47
  %76 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %77 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %12, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %76, i64 %78
  %80 = call i32 @memcpy(%struct.item_cheat* %79, %struct.item_cheat* %12, i32 24)
  %81 = call i32 @memcpy(%struct.item_cheat* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 1), %struct.item_cheat* %12, i32 24)
  %82 = load i32, i32* @MENU_ENTRIES_CTL_SET_REFRESH, align 4
  %83 = call i32 @menu_entries_ctl(i32 %82, i32* %14)
  %84 = load i32, i32* @RARCH_MENU_CTL_SET_PREVENT_POPULATE, align 4
  %85 = call i32 @menu_driver_ctl(i32 %84, i32* null)
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %87 = load i32, i32* @MSG_CHEAT_COPY_BEFORE_SUCCESS, align 4
  %88 = call i32 @msg_hash_to_str(i32 %87)
  %89 = call i32 @strlcpy(i8* %86, i32 %88, i32 256)
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 255
  store i8 0, i8* %90, align 1
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %92 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %93 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %94 = call i32 @runloop_msg_queue_push(i8* %91, i32 1, i32 180, i32 1, i32* null, i32 %92, i32 %93)
  ret i32 0
}

declare dso_local i32 @cheat_manager_get_size(...) #1

declare dso_local i32 @cheat_manager_realloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.item_cheat*, %struct.item_cheat*, i32) #1

declare dso_local i8* @strdup(i8*) #1

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
