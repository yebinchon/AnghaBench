; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_file_load.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_file_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@FILEBROWSER_SELECT_FILE_SUBSYSTEM = common dso_local global i64 0, align 8
@MENU_SETTINGS = common dso_local global i32 0, align 4
@ST_PATH = common dso_local global i64 0, align 8
@MENU_ENUM_LABEL_DEFERRED_ARCHIVE_OPEN_DETECT_CORE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_ARCHIVE_OPEN = common dso_local global i32 0, align 4
@CORE_TYPE_PLAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_file_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_file_load(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_3__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %26 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i32* null, i32** %17, align 8
  %29 = call i32* @menu_entries_get_menu_stack_ptr(i32 0)
  store i32* %29, i32** %18, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %30, align 16
  %31 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 0, i8* %31, align 16
  %32 = call i64 (...) @filebrowser_get_type()
  %33 = load i64, i64* @FILEBROWSER_SELECT_FILE_SUBSYSTEM, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %5
  %36 = call %struct.TYPE_3__* (...) @menu_driver_get_ptr()
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %19, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 (...) @menu_cbs_exit()
  store i32 %40, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %137

41:                                               ; preds = %35
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = trunc i64 %23 to i32
  %49 = call i32 @fill_pathname_join(i8* %25, i8* %44, i8* %47, i32 %48)
  %50 = load i32, i32* %9, align 4
  switch i32 %50, label %55 [
    i32 128, label %51
  ]

51:                                               ; preds = %41
  %52 = load i8*, i8** %7, align 8
  %53 = trunc i64 %27 to i32
  %54 = call i32 @fill_pathname_join_delim(i8* %28, i8* %25, i8* %52, i8 signext 35, i32 %53)
  br label %59

55:                                               ; preds = %41
  %56 = load i8*, i8** %7, align 8
  %57 = trunc i64 %27 to i32
  %58 = call i32 @fill_pathname_join(i8* %28, i8* %25, i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %51
  %60 = call i32 @content_add_subsystem(i8* %28)
  %61 = load i32, i32* @MENU_SETTINGS, align 4
  %62 = call i32 @menu_entries_flush_stack(i32* null, i32 %61)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %137

63:                                               ; preds = %5
  %64 = load i32*, i32** %18, align 8
  %65 = call i32 @file_list_get_last(i32* %64, i8** %16, i8** %15, i32* null, i32* null)
  %66 = load i8*, i8** %15, align 8
  %67 = call i32 @string_is_empty(i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load i8*, i8** %15, align 8
  %71 = call i32* @menu_setting_find(i8* %70)
  store i32* %71, i32** %17, align 8
  br label %72

72:                                               ; preds = %69, %63
  %73 = load i32*, i32** %17, align 8
  %74 = call i64 @setting_get_type(i32* %73)
  %75 = load i64, i64* @ST_PATH, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i8*, i8** %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @action_ok_set_path(i8* %78, i8* %79, i32 %80, i64 %81, i64 %82)
  store i32 %83, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %137

84:                                               ; preds = %72
  %85 = load i8*, i8** %16, align 8
  %86 = call i32 @string_is_empty(i8* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %16, align 8
  %90 = trunc i64 %23 to i32
  %91 = call i32 @strlcpy(i8* %25, i8* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %84
  %93 = load i8*, i8** %15, align 8
  %94 = call i32 @string_is_empty(i8* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %124, label %96

96:                                               ; preds = %92
  %97 = load i8*, i8** %15, align 8
  %98 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_ARCHIVE_OPEN_DETECT_CORE, align 4
  %99 = call i32 @msg_hash_to_str(i32 %98)
  %100 = call i64 @string_is_equal(i8* %97, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = load i8*, i8** %15, align 8
  %104 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_ARCHIVE_OPEN, align 4
  %105 = call i32 @msg_hash_to_str(i32 %104)
  %106 = call i64 @string_is_equal(i8* %103, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %102, %96
  %109 = call %struct.TYPE_3__* (...) @menu_driver_get_ptr()
  store %struct.TYPE_3__* %109, %struct.TYPE_3__** %21, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %111 = icmp ne %struct.TYPE_3__* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = call i32 (...) @menu_cbs_exit()
  store i32 %113, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %137

114:                                              ; preds = %108
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = trunc i64 %23 to i32
  %122 = call i32 @fill_pathname_join(i8* %25, i8* %117, i8* %120, i32 %121)
  br label %123

123:                                              ; preds = %114, %102
  br label %124

124:                                              ; preds = %123, %92
  %125 = load i32, i32* %9, align 4
  switch i32 %125, label %130 [
    i32 128, label %126
  ]

126:                                              ; preds = %124
  %127 = load i8*, i8** %7, align 8
  %128 = trunc i64 %27 to i32
  %129 = call i32 @fill_pathname_join_delim(i8* %28, i8* %25, i8* %127, i8 signext 35, i32 %128)
  br label %134

130:                                              ; preds = %124
  %131 = load i8*, i8** %7, align 8
  %132 = trunc i64 %27 to i32
  %133 = call i32 @fill_pathname_join(i8* %28, i8* %25, i8* %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %126
  %135 = load i32, i32* @CORE_TYPE_PLAIN, align 4
  %136 = call i32 @default_action_ok_load_content_with_core_from_menu(i8* %28, i32 %135)
  store i32 %136, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %137

137:                                              ; preds = %134, %112, %77, %59, %39
  %138 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @menu_entries_get_menu_stack_ptr(i32) #2

declare dso_local i64 @filebrowser_get_type(...) #2

declare dso_local %struct.TYPE_3__* @menu_driver_get_ptr(...) #2

declare dso_local i32 @menu_cbs_exit(...) #2

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i32) #2

declare dso_local i32 @fill_pathname_join_delim(i8*, i8*, i8*, i8 signext, i32) #2

declare dso_local i32 @content_add_subsystem(i8*) #2

declare dso_local i32 @menu_entries_flush_stack(i32*, i32) #2

declare dso_local i32 @file_list_get_last(i32*, i8**, i8**, i32*, i32*) #2

declare dso_local i32 @string_is_empty(i8*) #2

declare dso_local i32* @menu_setting_find(i8*) #2

declare dso_local i64 @setting_get_type(i32*) #2

declare dso_local i32 @action_ok_set_path(i8*, i8*, i32, i64, i64) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @string_is_equal(i8*, i32) #2

declare dso_local i32 @msg_hash_to_str(i32) #2

declare dso_local i32 @default_action_ok_load_content_with_core_from_menu(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
