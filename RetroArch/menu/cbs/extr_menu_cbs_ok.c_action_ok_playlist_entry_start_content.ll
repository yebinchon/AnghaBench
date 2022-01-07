; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_playlist_entry_start_content.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_playlist_entry_start_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist_entry = type { i8*, i8*, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"DETECT\00", align 1
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"File could not be loaded from playlist.\0A\00", align 1
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_playlist_entry_start_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_playlist_entry_start_content(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.playlist_entry*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_10__, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.playlist_entry, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %24 = call i32* (...) @playlist_get_cached()
  store i32* %24, i32** %13, align 8
  store %struct.playlist_entry* null, %struct.playlist_entry** %14, align 8
  %25 = call %struct.TYPE_9__* (...) @menu_driver_get_ptr()
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %15, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28, %5
  %32 = call i32 (...) @menu_cbs_exit()
  store i32 %32, i32* %6, align 4
  br label %123

33:                                               ; preds = %28
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %12, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @playlist_get_index(i32* %38, i64 %39, %struct.playlist_entry** %14)
  %41 = load %struct.playlist_entry*, %struct.playlist_entry** %14, align 8
  %42 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @string_is_equal(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %98

46:                                               ; preds = %33
  %47 = load %struct.playlist_entry*, %struct.playlist_entry** %14, align 8
  %48 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @string_is_equal(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %98

52:                                               ; preds = %46
  %53 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %54 = zext i32 %53 to i64
  %55 = call i8* @llvm.stacksave()
  store i8* %55, i8** %17, align 8
  %56 = alloca i8, i64 %54, align 16
  store i64 %54, i64* %18, align 8
  store i8* null, i8** %19, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = call i8* @playlist_get_default_core_path(i32* %57)
  store i8* %58, i8** %20, align 8
  store i32 0, i32* %21, align 4
  %59 = getelementptr inbounds i8, i8* %56, i64 0
  store i8 0, i8* %59, align 16
  %60 = load i8*, i8** %20, align 8
  %61 = call i32 @string_is_empty(i8* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %52
  %64 = load i8*, i8** %20, align 8
  %65 = trunc i64 %54 to i32
  %66 = call i32 @strlcpy(i8* %56, i8* %64, i32 %65)
  store i32 1, i32* %21, align 4
  br label %67

67:                                               ; preds = %63, %52
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i8* %56, i8** %69, align 8
  %70 = call i32 @core_info_find(%struct.TYPE_10__* %16, i8* %56)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i32 0, i32* %21, align 4
  br label %73

73:                                               ; preds = %72, %67
  %74 = load i32, i32* %21, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load i8*, i8** %19, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @action_ok_file_load_with_detect_core(i8* %77, i8* %78, i32 %79, i64 %80, i64 %81)
  store i32 %82, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %94

83:                                               ; preds = %73
  %84 = bitcast %struct.playlist_entry* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %84, i8 0, i64 32, i1 false)
  %85 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %23, i32 0, i32 0
  store i8* %56, i8** %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %23, i32 0, i32 1
  store i8* %89, i8** %90, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = load i64, i64* %12, align 8
  %93 = call i32 @command_playlist_update_write(i32* %91, i64 %92, %struct.playlist_entry* %23)
  store i32 0, i32* %22, align 4
  br label %94

94:                                               ; preds = %83, %76
  %95 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %22, align 4
  switch i32 %96, label %125 [
    i32 0, label %97
    i32 1, label %123
  ]

97:                                               ; preds = %94
  br label %98

98:                                               ; preds = %97, %46, %33
  %99 = load i32*, i32** %13, align 8
  %100 = load i64, i64* %12, align 8
  %101 = call i32 @menu_content_playlist_load(i32* %99, i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %105 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %106 = call i32 @runloop_msg_queue_push(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 100, i32 1, i32* null, i32 %104, i32 %105)
  br label %121

107:                                              ; preds = %98
  %108 = load i32*, i32** %13, align 8
  %109 = load i64, i64* %12, align 8
  %110 = call i32 @playlist_get_index(i32* %108, i64 %109, %struct.playlist_entry** %14)
  %111 = load %struct.playlist_entry*, %struct.playlist_entry** %14, align 8
  %112 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.playlist_entry*, %struct.playlist_entry** %14, align 8
  %115 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.playlist_entry*, %struct.playlist_entry** %14, align 8
  %118 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @default_action_ok_load_content_from_playlist_from_menu(i8* %113, i32 %116, i32 %119)
  store i32 %120, i32* %6, align 4
  br label %123

121:                                              ; preds = %103
  %122 = call i32 (...) @menu_cbs_exit()
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %121, %107, %94, %31
  %124 = load i32, i32* %6, align 4
  ret i32 %124

125:                                              ; preds = %94
  unreachable
}

declare dso_local i32* @playlist_get_cached(...) #1

declare dso_local %struct.TYPE_9__* @menu_driver_get_ptr(...) #1

declare dso_local i32 @menu_cbs_exit(...) #1

declare dso_local i32 @playlist_get_index(i32*, i64, %struct.playlist_entry**) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @playlist_get_default_core_path(i32*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @core_info_find(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @action_ok_file_load_with_detect_core(i8*, i8*, i32, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @command_playlist_update_write(i32*, i64, %struct.playlist_entry*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @menu_content_playlist_load(i32*, i64) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @default_action_ok_load_content_from_playlist_from_menu(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
