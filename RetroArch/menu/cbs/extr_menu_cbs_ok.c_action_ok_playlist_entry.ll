; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_playlist_entry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_playlist_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist_entry = type { i8*, i8*, i8*, i32, i32 }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DETECT\00", align 1
@PLAYLIST_LOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"File could not be loaded from playlist.\0A\00", align 1
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_playlist_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_playlist_entry(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.playlist_entry*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_5__, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.playlist_entry, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %24 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %28 = call i32* (...) @playlist_get_cached()
  store i32* %28, i32** %15, align 8
  store %struct.playlist_entry* null, %struct.playlist_entry** %16, align 8
  store i8* null, i8** %17, align 8
  %29 = call i32* (...) @menu_driver_get_ptr()
  store i32* %29, i32** %18, align 8
  %30 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %30, align 16
  %31 = load i32*, i32** %15, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  %34 = load i32*, i32** %18, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33, %5
  %37 = call i32 (...) @menu_cbs_exit()
  store i32 %37, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %137

38:                                               ; preds = %33
  %39 = load i64, i64* %11, align 8
  store i64 %39, i64* %14, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = load i64, i64* %14, align 8
  %42 = call i32 @playlist_get_index(i32* %40, i64 %41, %struct.playlist_entry** %16)
  %43 = load %struct.playlist_entry*, %struct.playlist_entry** %16, align 8
  %44 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %17, align 8
  %46 = load %struct.playlist_entry*, %struct.playlist_entry** %16, align 8
  %47 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @string_is_equal(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %99

51:                                               ; preds = %38
  %52 = load %struct.playlist_entry*, %struct.playlist_entry** %16, align 8
  %53 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @string_is_equal(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %99

57:                                               ; preds = %51
  %58 = load i32*, i32** %15, align 8
  %59 = call i8* @playlist_get_default_core_path(i32* %58)
  store i8* %59, i8** %21, align 8
  store i32 0, i32* %22, align 4
  %60 = load i8*, i8** %21, align 8
  %61 = call i32 @string_is_empty(i8* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %57
  %64 = load i8*, i8** %21, align 8
  %65 = trunc i64 %25 to i32
  %66 = call i32 @strlcpy(i8* %27, i8* %64, i32 %65)
  %67 = load i32, i32* @PLAYLIST_LOAD, align 4
  %68 = trunc i64 %25 to i32
  %69 = call i32 @playlist_resolve_path(i32 %67, i8* %27, i32 %68)
  store i32 1, i32* %22, align 4
  br label %70

70:                                               ; preds = %63, %57
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i8* %27, i8** %72, align 8
  %73 = call i32 @core_info_find(%struct.TYPE_5__* %20, i8* %27)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 0, i32* %22, align 4
  br label %76

76:                                               ; preds = %75, %70
  %77 = load i32, i32* %22, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %76
  %80 = load %struct.playlist_entry*, %struct.playlist_entry** %16, align 8
  %81 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @action_ok_file_load_with_detect_core(i32 %82, i8* %83, i32 %84, i64 %85, i64 %86)
  store i32 %87, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %137

88:                                               ; preds = %76
  %89 = bitcast %struct.playlist_entry* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %89, i8 0, i64 32, i1 false)
  %90 = load i8*, i8** %21, align 8
  %91 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %23, i32 0, i32 1
  store i8* %90, i8** %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %23, i32 0, i32 2
  store i8* %95, i8** %96, align 8
  %97 = load i64, i64* %14, align 8
  %98 = call i32 @command_playlist_update_write(i32* null, i64 %97, %struct.playlist_entry* %23)
  br label %115

99:                                               ; preds = %51, %38
  %100 = load %struct.playlist_entry*, %struct.playlist_entry** %16, align 8
  %101 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @string_is_empty(i8* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %99
  %106 = load %struct.playlist_entry*, %struct.playlist_entry** %16, align 8
  %107 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = trunc i64 %25 to i32
  %110 = call i32 @strlcpy(i8* %27, i8* %108, i32 %109)
  %111 = load i32, i32* @PLAYLIST_LOAD, align 4
  %112 = trunc i64 %25 to i32
  %113 = call i32 @playlist_resolve_path(i32 %111, i8* %27, i32 %112)
  br label %114

114:                                              ; preds = %105, %99
  br label %115

115:                                              ; preds = %114, %88
  %116 = load i32*, i32** %15, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32*, i32** %15, align 8
  %120 = load i64, i64* %14, align 8
  %121 = call i32 @menu_content_playlist_load(i32* %119, i64 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %118, %115
  %124 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %125 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %126 = call i32 @runloop_msg_queue_push(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 100, i32 1, i32* null, i32 %124, i32 %125)
  %127 = call i32 (...) @menu_cbs_exit()
  store i32 %127, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %137

128:                                              ; preds = %118
  %129 = load i32*, i32** %15, align 8
  %130 = load i64, i64* %14, align 8
  %131 = call i32 @playlist_get_index(i32* %129, i64 %130, %struct.playlist_entry** %16)
  %132 = load %struct.playlist_entry*, %struct.playlist_entry** %16, align 8
  %133 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load i8*, i8** %17, align 8
  %136 = call i32 @default_action_ok_load_content_from_playlist_from_menu(i8* %27, i32 %134, i8* %135)
  store i32 %136, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %137

137:                                              ; preds = %128, %123, %79, %36
  %138 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @playlist_get_cached(...) #2

declare dso_local i32* @menu_driver_get_ptr(...) #2

declare dso_local i32 @menu_cbs_exit(...) #2

declare dso_local i32 @playlist_get_index(i32*, i64, %struct.playlist_entry**) #2

declare dso_local i64 @string_is_equal(i8*, i8*) #2

declare dso_local i8* @playlist_get_default_core_path(i32*) #2

declare dso_local i32 @string_is_empty(i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @playlist_resolve_path(i32, i8*, i32) #2

declare dso_local i32 @core_info_find(%struct.TYPE_5__*, i8*) #2

declare dso_local i32 @action_ok_file_load_with_detect_core(i32, i8*, i32, i64, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @command_playlist_update_write(i32*, i64, %struct.playlist_entry*) #2

declare dso_local i32 @menu_content_playlist_load(i32*, i64) #2

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @default_action_ok_load_content_from_playlist_from_menu(i8*, i32, i8*) #2

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
