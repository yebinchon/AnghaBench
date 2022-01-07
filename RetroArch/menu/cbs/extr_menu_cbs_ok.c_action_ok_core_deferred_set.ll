; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_core_deferred_set.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_core_deferred_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.playlist_entry = type { i8*, i8*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@PLAYLIST_SAVE = common dso_local global i32 0, align 4
@MSG_SET_CORE_ASSOCIATION = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_core_deferred_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_core_deferred_set(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [255 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.playlist_entry, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %13, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  %26 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %15, align 8
  %29 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %16, align 8
  %32 = call %struct.TYPE_11__* (...) @config_get_ptr()
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %17, align 8
  %33 = call i64 (...) @menu_navigation_get_selection()
  store i64 %33, i64* %18, align 8
  %34 = bitcast %struct.playlist_entry* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 24, i1 false)
  %35 = call %struct.TYPE_12__* (...) @menu_driver_get_ptr()
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %20, align 8
  %36 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %36, align 16
  %37 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 0, i8* %37, align 16
  %38 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %38, align 16
  %39 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 0, i8* %39, align 16
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %41 = icmp ne %struct.TYPE_12__* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %5
  %43 = call i32 (...) @menu_cbs_exit()
  store i32 %43, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %93

44:                                               ; preds = %5
  %45 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %46 = call i32 @frontend_driver_get_core_extension(i8* %45, i32 255)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = call i32 (...) @menu_cbs_exit()
  store i32 %49, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %93

50:                                               ; preds = %44
  %51 = load i8*, i8** %7, align 8
  %52 = trunc i64 %23 to i32
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @core_info_get_name(i8* %51, i8* %25, i32 %52, i32 %56, i32 %60, i8* %61, i32 %65, i32 1)
  %67 = load i8*, i8** %7, align 8
  %68 = trunc i64 %27 to i32
  %69 = call i32 @strlcpy(i8* %28, i8* %67, i32 %68)
  %70 = load i32, i32* @PLAYLIST_SAVE, align 4
  %71 = trunc i64 %27 to i32
  %72 = call i32 @playlist_resolve_path(i32 %70, i8* %28, i32 %71)
  %73 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %19, i32 0, i32 0
  store i8* %28, i8** %73, align 8
  %74 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %19, i32 0, i32 1
  store i8* %25, i8** %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @command_playlist_update_write(i32* null, i32 %78, %struct.playlist_entry* %19)
  %80 = load i32, i32* @MSG_SET_CORE_ASSOCIATION, align 4
  %81 = call i8* @msg_hash_to_str(i32 %80)
  %82 = trunc i64 %30 to i32
  %83 = call i32 @strlcpy(i8* %31, i8* %81, i32 %82)
  %84 = trunc i64 %30 to i32
  %85 = call i32 @strlcat(i8* %31, i8* %25, i32 %84)
  %86 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %87 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %88 = call i32 @runloop_msg_queue_push(i8* %31, i32 1, i32 100, i32 1, i32* null, i32 %86, i32 %87)
  %89 = call i32 @menu_entries_pop_stack(i64* %18, i32 0, i32 1)
  %90 = load i64, i64* %18, align 8
  %91 = call i32 @menu_navigation_set_selection(i64 %90)
  %92 = call i32 (...) @menu_cbs_exit()
  store i32 %92, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %93

93:                                               ; preds = %50, %48, %42
  %94 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_11__* @config_get_ptr(...) #2

declare dso_local i64 @menu_navigation_get_selection(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local %struct.TYPE_12__* @menu_driver_get_ptr(...) #2

declare dso_local i32 @menu_cbs_exit(...) #2

declare dso_local i32 @frontend_driver_get_core_extension(i8*, i32) #2

declare dso_local i32 @core_info_get_name(i8*, i8*, i32, i32, i32, i8*, i32, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @playlist_resolve_path(i32, i8*, i32) #2

declare dso_local i32 @command_playlist_update_write(i32*, i32, %struct.playlist_entry*) #2

declare dso_local i8* @msg_hash_to_str(i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @menu_entries_pop_stack(i64*, i32, i32) #2

declare dso_local i32 @menu_navigation_set_selection(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
