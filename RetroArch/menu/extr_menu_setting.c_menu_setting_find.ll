; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_menu_setting_find.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_menu_setting_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i32 (%struct.TYPE_6__*)* }

@MENU_ENTRIES_CTL_SETTINGS_GET = common dso_local global i32 0, align 4
@ST_NONE = common dso_local global i64 0, align 8
@ST_GROUP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @menu_setting_find(i8* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__** %4, %struct.TYPE_6__*** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %64

11:                                               ; preds = %1
  %12 = load i32, i32* @MENU_ENTRIES_CTL_SETTINGS_GET, align 4
  %13 = call i32 @menu_entries_ctl(i32 %12, %struct.TYPE_6__** %4)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %64

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %58, %17
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = call i64 @setting_get_type(%struct.TYPE_6__* %19)
  %21 = load i64, i64* @ST_NONE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %6, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @string_is_equal(i8* %30, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %23
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = call i64 @setting_get_type(%struct.TYPE_6__* %35)
  %37 = load i64, i64* @ST_GROUP, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 @string_is_empty(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %63

44:                                               ; preds = %39
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %46, align 8
  %48 = icmp ne i32 (%struct.TYPE_6__*)* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %51, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = call i32 %52(%struct.TYPE_6__* %53)
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %2, align 8
  br label %64

57:                                               ; preds = %34, %23
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 1
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %62, align 8
  br label %18

63:                                               ; preds = %43, %18
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %64

64:                                               ; preds = %63, %55, %16, %10
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %65
}

declare dso_local i32 @menu_entries_ctl(i32, %struct.TYPE_6__**) #1

declare dso_local i64 @setting_get_type(%struct.TYPE_6__*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i64 @string_is_empty(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
