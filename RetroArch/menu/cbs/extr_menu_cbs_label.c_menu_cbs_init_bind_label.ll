; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_label.c_menu_cbs_init_bind_label.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_label.c_menu_cbs_init_bind_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@action_bind_label_generic = common dso_local global i32 0, align 4
@MSG_UNKNOWN = common dso_local global i32 0, align 4
@action_bind_label_playlist_collection_entry = common dso_local global i32 0, align 4
@action_bind_label_cheat_browse_address = common dso_local global i32 0, align 4
@action_bind_label_internal_memory = common dso_local global i32 0, align 4
@action_bind_label_removable_storage = common dso_local global i32 0, align 4
@action_bind_label_application_dir = common dso_local global i32 0, align 4
@action_bind_label_external_application_dir = common dso_local global i32 0, align 4
@action_bind_label_rdb_entry_detail = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_cbs_init_bind_label(%struct.TYPE_4__* %0, i8* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %63

15:                                               ; preds = %5
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = load i32, i32* @action_bind_label_generic, align 4
  %18 = call i32 @BIND_ACTION_LABEL(%struct.TYPE_4__* %16, i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MSG_UNKNOWN, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %15
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %60 [
    i32 134, label %28
    i32 133, label %32
    i32 135, label %36
    i32 129, label %40
    i32 128, label %44
    i32 131, label %48
    i32 130, label %52
    i32 132, label %56
  ]

28:                                               ; preds = %24
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = load i32, i32* @action_bind_label_playlist_collection_entry, align 4
  %31 = call i32 @BIND_ACTION_LABEL(%struct.TYPE_4__* %29, i32 %30)
  br label %61

32:                                               ; preds = %24
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = load i32, i32* @action_bind_label_playlist_collection_entry, align 4
  %35 = call i32 @BIND_ACTION_LABEL(%struct.TYPE_4__* %33, i32 %34)
  br label %61

36:                                               ; preds = %24
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = load i32, i32* @action_bind_label_cheat_browse_address, align 4
  %39 = call i32 @BIND_ACTION_LABEL(%struct.TYPE_4__* %37, i32 %38)
  br label %61

40:                                               ; preds = %24
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = load i32, i32* @action_bind_label_internal_memory, align 4
  %43 = call i32 @BIND_ACTION_LABEL(%struct.TYPE_4__* %41, i32 %42)
  br label %61

44:                                               ; preds = %24
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %46 = load i32, i32* @action_bind_label_removable_storage, align 4
  %47 = call i32 @BIND_ACTION_LABEL(%struct.TYPE_4__* %45, i32 %46)
  br label %61

48:                                               ; preds = %24
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = load i32, i32* @action_bind_label_application_dir, align 4
  %51 = call i32 @BIND_ACTION_LABEL(%struct.TYPE_4__* %49, i32 %50)
  br label %61

52:                                               ; preds = %24
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = load i32, i32* @action_bind_label_external_application_dir, align 4
  %55 = call i32 @BIND_ACTION_LABEL(%struct.TYPE_4__* %53, i32 %54)
  br label %61

56:                                               ; preds = %24
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = load i32, i32* @action_bind_label_rdb_entry_detail, align 4
  %59 = call i32 @BIND_ACTION_LABEL(%struct.TYPE_4__* %57, i32 %58)
  br label %61

60:                                               ; preds = %24
  br label %61

61:                                               ; preds = %60, %56, %52, %48, %44, %40, %36, %32, %28
  br label %62

62:                                               ; preds = %61, %15
  store i32 -1, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %14
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @BIND_ACTION_LABEL(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
