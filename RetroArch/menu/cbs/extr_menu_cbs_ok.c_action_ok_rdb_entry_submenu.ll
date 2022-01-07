; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_rdb_entry_submenu.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_rdb_entry_submenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.string_list_elem_attr = type { i64 }
%struct.string_list = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@MENU_ENUM_LABEL_DEFERRED_CURSOR_MANAGER_LIST = common dso_local global i32 0, align 4
@ACTION_OK_DL_RDB_ENTRY_SUBMENU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_rdb_entry_submenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_rdb_entry_submenu(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %union.string_list_elem_attr, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.string_list*, align 8
  %20 = alloca %struct.string_list*, align 8
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
  store i32 -1, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  store %struct.string_list* null, %struct.string_list** %19, align 8
  store %struct.string_list* null, %struct.string_list** %20, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %5
  %32 = call i32 (...) @menu_cbs_exit()
  store i32 %32, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %141

33:                                               ; preds = %5
  %34 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %34, align 16
  %35 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 0, i8* %35, align 16
  %36 = load i8*, i8** %8, align 8
  %37 = call %struct.string_list* @string_split(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* %37, %struct.string_list** %19, align 8
  %38 = load %struct.string_list*, %struct.string_list** %19, align 8
  %39 = icmp ne %struct.string_list* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %121

41:                                               ; preds = %33
  %42 = call %struct.string_list* (...) @string_list_new()
  store %struct.string_list* %42, %struct.string_list** %20, align 8
  %43 = load %struct.string_list*, %struct.string_list** %20, align 8
  %44 = icmp ne %struct.string_list* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %121

46:                                               ; preds = %41
  %47 = bitcast %union.string_list_elem_attr* %12 to i64*
  store i64 0, i64* %47, align 8
  %48 = load %struct.string_list*, %struct.string_list** %19, align 8
  %49 = getelementptr inbounds %struct.string_list, %struct.string_list* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @strlen(i32 %53)
  %55 = add nsw i64 %54, 1
  %56 = load i32, i32* %18, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %18, align 4
  %60 = load %struct.string_list*, %struct.string_list** %20, align 8
  %61 = load %struct.string_list*, %struct.string_list** %19, align 8
  %62 = getelementptr inbounds %struct.string_list, %struct.string_list* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %12, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @string_list_append(%struct.string_list* %60, i32 %66, i64 %68)
  %70 = load %struct.string_list*, %struct.string_list** %19, align 8
  %71 = getelementptr inbounds %struct.string_list, %struct.string_list* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @strlen(i32 %75)
  %77 = add nsw i64 %76, 1
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %18, align 4
  %82 = load %struct.string_list*, %struct.string_list** %20, align 8
  %83 = load %struct.string_list*, %struct.string_list** %19, align 8
  %84 = getelementptr inbounds %struct.string_list, %struct.string_list* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %12, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @string_list_append(%struct.string_list* %82, i32 %88, i64 %90)
  %92 = load i32, i32* %18, align 4
  %93 = call i64 @calloc(i32 %92, i32 1)
  %94 = inttoptr i64 %93 to i8*
  store i8* %94, i8** %17, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %46
  br label %121

98:                                               ; preds = %46
  %99 = load i8*, i8** %17, align 8
  %100 = load i32, i32* %18, align 4
  %101 = load %struct.string_list*, %struct.string_list** %20, align 8
  %102 = call i32 @string_list_join_concat(i8* %99, i32 %100, %struct.string_list* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %103 = load i8*, i8** %17, align 8
  %104 = trunc i64 %27 to i32
  %105 = call i32 @strlcpy(i8* %28, i8* %103, i32 %104)
  %106 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_CURSOR_MANAGER_LIST, align 4
  %107 = call i32 @msg_hash_to_str(i32 %106)
  %108 = load %struct.string_list*, %struct.string_list** %19, align 8
  %109 = getelementptr inbounds %struct.string_list, %struct.string_list* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = trunc i64 %23 to i32
  %115 = call i32 @fill_pathname_join_delim(i8* %25, i32 %107, i32 %113, i8 signext 95, i32 %114)
  %116 = load i32, i32* %9, align 4
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load i32, i32* @ACTION_OK_DL_RDB_ENTRY_SUBMENU, align 4
  %120 = call i32 @generic_action_ok_displaylist_push(i8* %28, i32* null, i8* %25, i32 %116, i64 %117, i64 %118, i32 %119)
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %98, %97, %45, %40
  %122 = load i8*, i8** %17, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i8*, i8** %17, align 8
  %126 = call i32 @free(i8* %125)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load %struct.string_list*, %struct.string_list** %19, align 8
  %129 = icmp ne %struct.string_list* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.string_list*, %struct.string_list** %19, align 8
  %132 = call i32 @string_list_free(%struct.string_list* %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load %struct.string_list*, %struct.string_list** %20, align 8
  %135 = icmp ne %struct.string_list* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.string_list*, %struct.string_list** %20, align 8
  %138 = call i32 @string_list_free(%struct.string_list* %137)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i32, i32* %16, align 4
  store i32 %140, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %141

141:                                              ; preds = %139, %31
  %142 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @menu_cbs_exit(...) #2

declare dso_local %struct.string_list* @string_split(i8*, i8*) #2

declare dso_local %struct.string_list* @string_list_new(...) #2

declare dso_local i64 @strlen(i32) #2

declare dso_local i32 @string_list_append(%struct.string_list*, i32, i64) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @string_list_join_concat(i8*, i32, %struct.string_list*, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @fill_pathname_join_delim(i8*, i32, i32, i8 signext, i32) #2

declare dso_local i32 @msg_hash_to_str(i32) #2

declare dso_local i32 @generic_action_ok_displaylist_push(i8*, i32*, i8*, i32, i64, i64, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @string_list_free(%struct.string_list*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
