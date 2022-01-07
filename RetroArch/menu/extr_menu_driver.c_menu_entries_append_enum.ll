; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_entries_append_enum.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_entries_append_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i8*, i64, i32, i32*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, i32 }

@MENU_ENUM_LABEL_PLAYLIST_ENTRY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_PLAYLIST_COLLECTION_ENTRY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_RDB_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_entries_append_enum(%struct.TYPE_14__* %0, i8* %1, i8* %2, i32 %3, i32 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i8* null, i8** %18, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %19, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %21 = icmp ne %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %7
  store i32 0, i32* %8, align 4
  br label %104

26:                                               ; preds = %22
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* %15, align 8
  %33 = call i32 @file_list_append(%struct.TYPE_14__* %27, i8* %28, i8* %29, i32 %30, i64 %31, i64 %32)
  %34 = call i32 @menu_entries_get_last_stack(i8** %18, i32* null, i32* null, i32* null, i32* null)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 4
  store i32* null, i32** %40, align 8
  %41 = load i8*, i8** %18, align 8
  %42 = call i32 @string_is_empty(i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %26
  %45 = load i8*, i8** %18, align 8
  %46 = call i32* @strdup(i8* %45)
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 4
  store i32* %46, i32** %47, align 8
  br label %48

48:                                               ; preds = %44, %26
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 5
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %50, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = load i64, i64* %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  store i64 %55, i64* %56, align 8
  %57 = load i32, i32* %13, align 4
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  store i32 %57, i32* %58, align 8
  %59 = call i32 @menu_driver_list_insert(%struct.TYPE_13__* %16)
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %48
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @free(i32* %65)
  br label %67

67:                                               ; preds = %63, %48
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = load i64, i64* %17, align 8
  %70 = call i32 @file_list_free_actiondata(%struct.TYPE_14__* %68, i64 %69)
  %71 = call i64 @calloc(i32 1, i32 8)
  %72 = inttoptr i64 %71 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %19, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %74 = load i64, i64* %17, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %76 = call i32 @file_list_set_actiondata(%struct.TYPE_14__* %73, i64 %74, %struct.TYPE_12__* %75)
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @MENU_ENUM_LABEL_PLAYLIST_ENTRY, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %67
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @MENU_ENUM_LABEL_PLAYLIST_COLLECTION_ENTRY, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @MENU_ENUM_LABEL_RDB_ENTRY, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @menu_setting_find_enum(i32 %92)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %91, %87, %83, %67
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load i64, i64* %17, align 8
  %103 = call i32 @menu_cbs_init(%struct.TYPE_14__* %97, %struct.TYPE_12__* %98, i8* %99, i8* %100, i32 %101, i64 %102)
  store i32 1, i32* %8, align 4
  br label %104

104:                                              ; preds = %96, %25
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local i32 @file_list_append(%struct.TYPE_14__*, i8*, i8*, i32, i64, i64) #1

declare dso_local i32 @menu_entries_get_last_stack(i8**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @menu_driver_list_insert(%struct.TYPE_13__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @file_list_free_actiondata(%struct.TYPE_14__*, i64) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @file_list_set_actiondata(%struct.TYPE_14__*, i64, %struct.TYPE_12__*) #1

declare dso_local i32 @menu_setting_find_enum(i32) #1

declare dso_local i32 @menu_cbs_init(%struct.TYPE_14__*, %struct.TYPE_12__*, i8*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
