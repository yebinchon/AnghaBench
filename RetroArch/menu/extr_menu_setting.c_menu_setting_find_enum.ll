; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_menu_setting_find_enum.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_menu_setting_find_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32 (%struct.TYPE_6__*)* }

@MENU_ENTRIES_CTL_SETTINGS_GET = common dso_local global i32 0, align 4
@ST_NONE = common dso_local global i64 0, align 8
@ST_GROUP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @menu_setting_find_enum(i32 %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__** %4, %struct.TYPE_6__*** %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %61

10:                                               ; preds = %1
  %11 = load i32, i32* @MENU_ENTRIES_CTL_SETTINGS_GET, align 4
  %12 = call i32 @menu_entries_ctl(i32 %11, %struct.TYPE_6__** %4)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %61

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %55, %16
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = call i64 @setting_get_type(%struct.TYPE_6__* %18)
  %20 = load i64, i64* @ST_NONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %17
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %22
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = call i64 @setting_get_type(%struct.TYPE_6__* %29)
  %31 = load i64, i64* @ST_GROUP, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %28
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @string_is_empty(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %61

41:                                               ; preds = %33
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %43, align 8
  %45 = icmp ne i32 (%struct.TYPE_6__*)* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = call i32 %49(%struct.TYPE_6__* %50)
  br label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %2, align 8
  br label %61

54:                                               ; preds = %28, %22
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 1
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %59, align 8
  br label %17

60:                                               ; preds = %17
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %61

61:                                               ; preds = %60, %52, %40, %15, %9
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %62
}

declare dso_local i32 @menu_entries_ctl(i32, %struct.TYPE_6__**) #1

declare dso_local i64 @setting_get_type(%struct.TYPE_6__*) #1

declare dso_local i64 @string_is_empty(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
