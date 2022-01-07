; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_entries_prepend.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_entries_prepend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i64, i32, i32*, i32* }
%struct.TYPE_6__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_entries_prepend(i32* %0, i8* %1, i8* %2, i32 %3, i32 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_7__, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  store i8* null, i8** %17, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %18, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %7
  br label %91

25:                                               ; preds = %21
  %26 = load i32*, i32** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* %14, align 8
  %32 = call i32 @file_list_prepend(i32* %26, i8* %27, i8* %28, i32 %29, i64 %30, i64 %31)
  %33 = call i32 @menu_entries_get_last_stack(i8** %17, i32* null, i32* null, i32* null, i32* null)
  store i64 0, i64* %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  store i32* null, i32** %34, align 8
  %35 = load i8*, i8** %17, align 8
  %36 = call i32 @string_is_empty(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %25
  %39 = load i8*, i8** %17, align 8
  %40 = call i32* @strdup(i8* %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  store i32* %40, i32** %41, align 8
  br label %42

42:                                               ; preds = %38, %25
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 5
  store i32* %43, i32** %44, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i8* %45, i8** %46, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  %49 = load i64, i64* %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  store i64 %49, i64* %50, align 8
  %51 = load i32, i32* %12, align 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  store i32 %51, i32* %52, align 8
  %53 = call i32 @menu_driver_list_insert(%struct.TYPE_7__* %15)
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @free(i32* %59)
  br label %61

61:                                               ; preds = %57, %42
  %62 = load i32*, i32** %8, align 8
  %63 = load i64, i64* %16, align 8
  %64 = call i32 @file_list_free_actiondata(i32* %62, i64 %63)
  %65 = call i64 @calloc(i32 1, i32 8)
  %66 = inttoptr i64 %65 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %18, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  br label %91

70:                                               ; preds = %61
  %71 = load i32*, i32** %8, align 8
  %72 = load i64, i64* %16, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %74 = call i32 @file_list_set_actiondata(i32* %71, i64 %72, %struct.TYPE_6__* %73)
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @menu_setting_find_enum(i32 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i64, i64* %16, align 8
  %90 = call i32 @menu_cbs_init(i32* %84, %struct.TYPE_6__* %85, i8* %86, i8* %87, i32 %88, i64 %89)
  br label %91

91:                                               ; preds = %70, %69, %24
  ret void
}

declare dso_local i32 @file_list_prepend(i32*, i8*, i8*, i32, i64, i64) #1

declare dso_local i32 @menu_entries_get_last_stack(i8**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @menu_driver_list_insert(%struct.TYPE_7__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @file_list_free_actiondata(i32*, i64) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @file_list_set_actiondata(i32*, i64, %struct.TYPE_6__*) #1

declare dso_local i32 @menu_setting_find_enum(i32) #1

declare dso_local i32 @menu_cbs_init(i32*, %struct.TYPE_6__*, i8*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
