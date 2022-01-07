; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_delete_entry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32 }

@g_defaults = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_delete_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_delete_entry(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %19 = call i32* (...) @playlist_get_cached()
  store i32* %19, i32** %17, align 8
  %20 = call %struct.TYPE_4__* (...) @menu_driver_get_ptr()
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %18, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = call i32 (...) @menu_cbs_exit()
  store i32 %24, i32* %6, align 4
  br label %72

25:                                               ; preds = %5
  %26 = load i32*, i32** %17, align 8
  %27 = call i8* @playlist_get_conf_path(i32* %26)
  store i8* %27, i8** %13, align 8
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_defaults, i32 0, i32 4), align 8
  %29 = call i8* @playlist_get_conf_path(i32* %28)
  store i8* %29, i8** %14, align 8
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_defaults, i32 0, i32 3), align 8
  %31 = call i8* @playlist_get_conf_path(i32* %30)
  store i8* %31, i8** %15, align 8
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_defaults, i32 0, i32 0), align 8
  %33 = call i8* @playlist_get_conf_path(i32* %32)
  store i8* %33, i8** %16, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = call i64 @string_is_equal(i8* %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_defaults, i32 0, i32 4), align 8
  store i32* %39, i32** %17, align 8
  br label %56

40:                                               ; preds = %25
  %41 = load i8*, i8** %13, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = call i64 @string_is_equal(i8* %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_defaults, i32 0, i32 3), align 8
  store i32* %46, i32** %17, align 8
  br label %55

47:                                               ; preds = %40
  %48 = load i8*, i8** %13, align 8
  %49 = load i8*, i8** %16, align 8
  %50 = call i64 @string_is_equal(i8* %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_defaults, i32 0, i32 0), align 8
  store i32* %53, i32** %17, align 8
  br label %54

54:                                               ; preds = %52, %47
  br label %55

55:                                               ; preds = %54, %45
  br label %56

56:                                               ; preds = %55, %38
  %57 = load i32*, i32** %17, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32*, i32** %17, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @playlist_delete_index(i32* %60, i32 %63)
  %65 = load i32*, i32** %17, align 8
  %66 = call i32 @playlist_write_file(i32* %65)
  br label %67

67:                                               ; preds = %59, %56
  %68 = call i64 (...) @menu_navigation_get_selection()
  store i64 %68, i64* %12, align 8
  %69 = call i32 @menu_entries_pop_stack(i64* %12, i32 0, i32 1)
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @menu_navigation_set_selection(i64 %70)
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %67, %23
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32* @playlist_get_cached(...) #1

declare dso_local %struct.TYPE_4__* @menu_driver_get_ptr(...) #1

declare dso_local i32 @menu_cbs_exit(...) #1

declare dso_local i8* @playlist_get_conf_path(i32*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32 @playlist_delete_index(i32*, i32) #1

declare dso_local i32 @playlist_write_file(i32*) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @menu_entries_pop_stack(i64*, i32, i32) #1

declare dso_local i32 @menu_navigation_set_selection(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
