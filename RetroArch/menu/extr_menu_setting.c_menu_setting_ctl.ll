; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_menu_setting_ctl.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_menu_setting_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_5__*, i32)*, i32, i32, i32 }

@ST_ACTION = common dso_local global i32 0, align 4
@SD_FLAG_BROWSER_ACTION = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_PATH = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_IMAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_setting_ctl(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__**, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %107 [
    i32 130, label %13
    i32 129, label %70
    i32 131, label %79
    i32 128, label %106
  ]

13:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %8, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %109

19:                                               ; preds = %13
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = call i32 @setting_get_type(%struct.TYPE_5__* %23)
  %25 = load i32, i32* @ST_ACTION, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %109

28:                                               ; preds = %19
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %109

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.TYPE_5__*, i32)* %37, null
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %42, %34
  %48 = phi i1 [ true, %34 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %52, %47
  %58 = phi i1 [ true, %47 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %109

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @SD_FLAG_BROWSER_ACTION, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %109

69:                                               ; preds = %63
  br label %108

70:                                               ; preds = %2
  %71 = load i8*, i8** %5, align 8
  %72 = bitcast i8* %71 to %struct.TYPE_5__**
  store %struct.TYPE_5__** %72, %struct.TYPE_5__*** %9, align 8
  %73 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %74 = icmp ne %struct.TYPE_5__** %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %109

76:                                               ; preds = %70
  %77 = call %struct.TYPE_5__* (...) @menu_setting_new()
  %78 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %78, align 8
  br label %108

79:                                               ; preds = %2
  %80 = load i8*, i8** %5, align 8
  %81 = bitcast i8* %80 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %10, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %83 = icmp ne %struct.TYPE_5__* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %109

85:                                               ; preds = %79
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %87, align 8
  %89 = icmp ne i32 (%struct.TYPE_5__*, i32)* %88, null
  br i1 %89, label %90, label %104

90:                                               ; preds = %85
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %92, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %95 = call i32 %93(%struct.TYPE_5__* %94, i32 0)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* @RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_PATH, align 4
  %97 = call i32 @menu_driver_ctl(i32 %96, i32* null)
  %98 = load i32, i32* @RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_IMAGE, align 4
  %99 = call i32 @menu_driver_ctl(i32 %98, i32* null)
  %100 = load i32, i32* %11, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  store i32 0, i32* %3, align 4
  br label %109

103:                                              ; preds = %90
  br label %105

104:                                              ; preds = %85
  store i32 0, i32* %3, align 4
  br label %109

105:                                              ; preds = %103
  br label %108

106:                                              ; preds = %2
  br label %107

107:                                              ; preds = %2, %106
  br label %108

108:                                              ; preds = %107, %105, %76, %69
  store i32 1, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %104, %102, %84, %75, %68, %62, %33, %27, %18
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @setting_get_type(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @menu_setting_new(...) #1

declare dso_local i32 @menu_driver_ctl(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
