; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_file_load_with_detect_core_wrapper.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_file_load_with_detect_core_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i8*, i32, i32, i32* }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i32 }
%struct.TYPE_9__ = type { i32*, i32*, i32*, i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_ARCHIVE_OPEN_DETECT_CORE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_ARCHIVE_OPEN = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_COLLECTION = common dso_local global i32 0, align 4
@ACTION_OK_DL_DEFERRED_CORE_LIST_SET = common dso_local global i32 0, align 4
@CORE_TYPE_PLAIN = common dso_local global i32 0, align 4
@ACTION_OK_DL_DEFERRED_CORE_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i8*, i8*, i32, i32)* @file_load_with_detect_core_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_load_with_detect_core_wrapper(i32 %0, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_7__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i32* null, i32** %21, align 8
  %25 = call %struct.TYPE_7__* (...) @menu_driver_get_ptr()
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %22, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %7
  %29 = call i32 (...) @menu_cbs_exit()
  store i32 %29, i32* %8, align 4
  br label %186

30:                                               ; preds = %7
  %31 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 1
  %34 = trunc i64 %33 to i32
  %35 = call i64 @malloc(i32 %34)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %23, align 8
  %37 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 1
  %40 = trunc i64 %39 to i32
  %41 = call i64 @malloc(i32 %40)
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %18, align 8
  %43 = load i8*, i8** %23, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 0, i8* %44, align 1
  %45 = load i8*, i8** %18, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 0, i8* %46, align 1
  %47 = call i32 @menu_entries_get_last_stack(i8** %19, i8** %20, i32* null, i32* null, i32* null)
  %48 = load i8*, i8** %19, align 8
  %49 = call i32 @string_is_empty(i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %30
  %52 = load i8*, i8** %23, align 8
  %53 = load i8*, i8** %19, align 8
  %54 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 1
  %57 = trunc i64 %56 to i32
  %58 = call i32 @strlcpy(i8* %52, i8* %53, i32 %57)
  br label %59

59:                                               ; preds = %51, %30
  %60 = load i8*, i8** %20, align 8
  %61 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_ARCHIVE_OPEN_DETECT_CORE, align 4
  %62 = call i32 @msg_hash_to_str(i32 %61)
  %63 = call i64 @string_is_equal(i8* %60, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load i8*, i8** %23, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 1
  %76 = trunc i64 %75 to i32
  %77 = call i32 @fill_pathname_join(i8* %66, i8* %69, i8* %72, i32 %76)
  br label %98

78:                                               ; preds = %59
  %79 = load i8*, i8** %20, align 8
  %80 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_ARCHIVE_OPEN, align 4
  %81 = call i32 @msg_hash_to_str(i32 %80)
  %82 = call i64 @string_is_equal(i8* %79, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load i8*, i8** %23, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 1
  %95 = trunc i64 %94 to i32
  %96 = call i32 @fill_pathname_join(i8* %85, i8* %88, i8* %91, i32 %95)
  br label %97

97:                                               ; preds = %84, %78
  br label %98

98:                                               ; preds = %97, %65
  %99 = call i32 @core_info_get_list(i32** %21)
  %100 = load i32*, i32** %21, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 5
  store i32* %100, i32** %101, align 8
  %102 = load i8*, i8** %23, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i8* %102, i8** %103, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i8* %104, i8** %105, align 8
  %106 = load i8*, i8** %20, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  store i8* %106, i8** %107, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 4
  store i32 %110, i32* %111, align 4
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  store i32 4, i32* %112, align 8
  %113 = load i8*, i8** %18, align 8
  %114 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 1
  %117 = trunc i64 %116 to i32
  %118 = call i64 @menu_content_find_first_core(%struct.TYPE_8__* %16, i32 0, i8* %113, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %98
  store i32 -1, i32* %17, align 4
  br label %121

121:                                              ; preds = %120, %98
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %139, label %124

124:                                              ; preds = %121
  %125 = load i8*, i8** %12, align 8
  %126 = call i32 @string_is_empty(i8* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %124
  %129 = load i8*, i8** %23, align 8
  %130 = call i32 @string_is_empty(i8* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %128
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = load i8*, i8** %23, align 8
  %137 = load i8*, i8** %12, align 8
  %138 = call i32 @fill_pathname_join(i8* %135, i8* %136, i8* %137, i32 8)
  br label %139

139:                                              ; preds = %132, %128, %124, %121
  %140 = load i8*, i8** %23, align 8
  %141 = call i32 @free(i8* %140)
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @MENU_ENUM_LABEL_COLLECTION, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %139
  %146 = load i8*, i8** %18, align 8
  %147 = call i32 @free(i8* %146)
  %148 = load i8*, i8** %12, align 8
  %149 = load i64, i64* %10, align 8
  %150 = load i64, i64* %11, align 8
  %151 = load i32, i32* @ACTION_OK_DL_DEFERRED_CORE_LIST_SET, align 4
  %152 = call i32 @generic_action_ok_displaylist_push(i8* %148, i32* null, i8* null, i32 0, i64 %149, i64 %150, i32 %151)
  store i32 %152, i32* %8, align 4
  br label %186

153:                                              ; preds = %139
  %154 = load i32, i32* %17, align 4
  switch i32 %154, label %181 [
    i32 -1, label %155
    i32 0, label %173
  ]

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  store i32 0, i32* %156, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  store i32* null, i32** %157, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  store i32* null, i32** %158, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32* null, i32** %159, align 8
  %160 = load i8*, i8** %18, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @CORE_TYPE_PLAIN, align 4
  %164 = call i32 @task_push_load_content_with_new_core_from_menu(i8* %160, i32 %162, %struct.TYPE_9__* %24, i32 %163, i32* null, i32* null)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %155
  %167 = load i8*, i8** %18, align 8
  %168 = call i32 @free(i8* %167)
  store i32 -1, i32* %8, align 4
  br label %186

169:                                              ; preds = %155
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @content_add_to_playlist(i32 %171)
  store i32 0, i32* %17, align 4
  br label %182

173:                                              ; preds = %153
  %174 = load i8*, i8** %12, align 8
  %175 = load i8*, i8** %13, align 8
  %176 = load i32, i32* %14, align 4
  %177 = load i64, i64* %10, align 8
  %178 = load i64, i64* %11, align 8
  %179 = load i32, i32* @ACTION_OK_DL_DEFERRED_CORE_LIST, align 4
  %180 = call i32 @generic_action_ok_displaylist_push(i8* %174, i32* null, i8* %175, i32 %176, i64 %177, i64 %178, i32 %179)
  store i32 %180, i32* %17, align 4
  br label %182

181:                                              ; preds = %153
  br label %182

182:                                              ; preds = %181, %173, %169
  %183 = load i8*, i8** %18, align 8
  %184 = call i32 @free(i8* %183)
  %185 = load i32, i32* %17, align 4
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %182, %166, %145, %28
  %187 = load i32, i32* %8, align 4
  ret i32 %187
}

declare dso_local %struct.TYPE_7__* @menu_driver_get_ptr(...) #1

declare dso_local i32 @menu_cbs_exit(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @menu_entries_get_last_stack(i8**, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @string_is_equal(i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i32) #1

declare dso_local i32 @core_info_get_list(i32**) #1

declare dso_local i64 @menu_content_find_first_core(%struct.TYPE_8__*, i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @generic_action_ok_displaylist_push(i8*, i32*, i8*, i32, i64, i64, i32) #1

declare dso_local i32 @task_push_load_content_with_new_core_from_menu(i8*, i32, %struct.TYPE_9__*, i32, i32*, i32*) #1

declare dso_local i32 @content_add_to_playlist(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
