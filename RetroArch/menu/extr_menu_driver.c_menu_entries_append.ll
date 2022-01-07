; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_entries_append.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_entries_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i8*, i64, i32, i32*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, i32 }

@MSG_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_entries_append(%struct.TYPE_14__* %0, i8* %1, i8* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  store i8* null, i8** %15, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %16, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %18 = icmp ne %struct.TYPE_14__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %6
  br label %92

23:                                               ; preds = %19
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call i32 @file_list_append(%struct.TYPE_14__* %24, i8* %25, i8* %26, i32 %27, i64 %28, i64 %29)
  %31 = call i32 @menu_entries_get_last_stack(i8** %15, i32* null, i32* null, i32* null, i32* null)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %14, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 5
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %38, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  store i32* null, i32** %41, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = call i32 @string_is_empty(i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %23
  %46 = load i8*, i8** %15, align 8
  %47 = call i32* @strdup(i8* %46)
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  store i32* %47, i32** %48, align 8
  br label %49

49:                                               ; preds = %45, %23
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  %52 = load i64, i64* %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  store i64 %52, i64* %53, align 8
  %54 = load i32, i32* %10, align 4
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 3
  store i32 %54, i32* %55, align 8
  %56 = call i32 @menu_driver_list_insert(%struct.TYPE_13__* %13)
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @free(i32* %62)
  br label %64

64:                                               ; preds = %60, %49
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = load i64, i64* %14, align 8
  %67 = call i32 @file_list_free_actiondata(%struct.TYPE_14__* %65, i64 %66)
  %68 = call i64 @calloc(i32 1, i32 8)
  %69 = inttoptr i64 %68 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %16, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %71 = icmp ne %struct.TYPE_12__* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  br label %92

73:                                               ; preds = %64
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %77 = call i32 @file_list_set_actiondata(%struct.TYPE_14__* %74, i64 %75, %struct.TYPE_12__* %76)
  %78 = load i32, i32* @MSG_UNKNOWN, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @menu_setting_find(i8* %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i64, i64* %14, align 8
  %91 = call i32 @menu_cbs_init(%struct.TYPE_14__* %85, %struct.TYPE_12__* %86, i8* %87, i8* %88, i32 %89, i64 %90)
  br label %92

92:                                               ; preds = %73, %72, %22
  ret void
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

declare dso_local i32 @menu_setting_find(i8*) #1

declare dso_local i32 @menu_cbs_init(%struct.TYPE_14__*, %struct.TYPE_12__*, i8*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
