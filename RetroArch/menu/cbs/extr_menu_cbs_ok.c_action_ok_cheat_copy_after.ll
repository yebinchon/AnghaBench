; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_cheat_copy_after.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_cheat_copy_after.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, %struct.item_cheat* }
%struct.TYPE_3__ = type { i64 }
%struct.item_cheat = type { i32, i8*, i8* }

@CHEAT_HANDLER_TYPE_RETRO = common dso_local global i32 0, align 4
@cheat_manager_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MENU_ENTRIES_CTL_SET_REFRESH = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_SET_PREVENT_POPULATE = common dso_local global i32 0, align 4
@MSG_CHEAT_COPY_AFTER_SUCCESS = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_cheat_copy_after to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_cheat_copy_after(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
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
  %21 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 1, i32 0), align 8
  %23 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %21, i64 %22
  %24 = call i32 @memcpy(%struct.item_cheat* %12, %struct.item_cheat* %23, i32 24)
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 1, i32 0), align 8
  %26 = add i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %12, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %12, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %12, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @strdup(i8* %34)
  %36 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %12, i32 0, i32 2
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %32, %5
  %38 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %12, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %12, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @strdup(i8* %43)
  %45 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %12, i32 0, i32 1
  store i8* %44, i8** %45, align 8
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 0), align 8
  %48 = sub nsw i32 %47, 2
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %74, %46
  %50 = load i32, i32* %11, align 4
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 1, i32 0), align 8
  %52 = add i64 %51, 1
  %53 = trunc i64 %52 to i32
  %54 = icmp sge i32 %50, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %49
  %56 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %56, i64 %59
  %61 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %61, i64 %63
  %65 = call i32 @memcpy(%struct.item_cheat* %60, %struct.item_cheat* %64, i32 24)
  %66 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %66, i64 %69
  %71 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %55
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %11, align 4
  br label %49

77:                                               ; preds = %49
  %78 = load %struct.item_cheat*, %struct.item_cheat** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 2), align 8
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cheat_manager_state, i32 0, i32 1, i32 0), align 8
  %80 = add i64 %79, 1
  %81 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %78, i64 %80
  %82 = call i32 @memcpy(%struct.item_cheat* %81, %struct.item_cheat* %12, i32 24)
  %83 = load i32, i32* @MENU_ENTRIES_CTL_SET_REFRESH, align 4
  %84 = call i32 @menu_entries_ctl(i32 %83, i32* %14)
  %85 = load i32, i32* @RARCH_MENU_CTL_SET_PREVENT_POPULATE, align 4
  %86 = call i32 @menu_driver_ctl(i32 %85, i32* null)
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %88 = load i32, i32* @MSG_CHEAT_COPY_AFTER_SUCCESS, align 4
  %89 = call i32 @msg_hash_to_str(i32 %88)
  %90 = call i32 @strlcpy(i8* %87, i32 %89, i32 256)
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 255
  store i8 0, i8* %91, align 1
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %93 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %94 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %95 = call i32 @runloop_msg_queue_push(i8* %92, i32 1, i32 180, i32 1, i32* null, i32 %93, i32 %94)
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
