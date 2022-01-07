; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_menu_content_environment_get.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_menu_content_environment_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rarch_main_wrap = type { i32, i32*, i32*, i32*, i32*, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@RARCH_OVERRIDE_SETTING_VERBOSITY = common dso_local global i32 0, align 4
@RARCH_PATH_CONFIG = common dso_local global i32 0, align 4
@RARCH_DIR_SAVEFILE = common dso_local global i32 0, align 4
@RARCH_DIR_SAVESTATE = common dso_local global i32 0, align 4
@RARCH_PATH_CONTENT = common dso_local global i32 0, align 4
@RARCH_OVERRIDE_SETTING_LIBRETRO = common dso_local global i32 0, align 4
@RARCH_PATH_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8**, i8*, i8*)* @menu_content_environment_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_content_environment_get(i32* %0, i8** %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rarch_main_wrap*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.rarch_main_wrap*
  store %struct.rarch_main_wrap* %12, %struct.rarch_main_wrap** %9, align 8
  %13 = call %struct.TYPE_3__* (...) @runloop_get_system_info()
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %10, align 8
  %14 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %9, align 8
  %15 = icmp ne %struct.rarch_main_wrap* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %95

17:                                               ; preds = %4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %9, align 8
  %22 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @RARCH_OVERRIDE_SETTING_VERBOSITY, align 4
  %24 = call i32 @retroarch_override_setting_is_set(i32 %23, i32* null)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = call i32 (...) @verbosity_is_enabled()
  %28 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %9, align 8
  %29 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %26, %17
  %31 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %9, align 8
  %32 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %9, align 8
  %34 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %33, i32 0, i32 5
  store i32* null, i32** %34, align 8
  %35 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %9, align 8
  %36 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %35, i32 0, i32 4
  store i32* null, i32** %36, align 8
  %37 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %9, align 8
  %38 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %9, align 8
  %40 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* @RARCH_PATH_CONFIG, align 4
  %42 = call i32 @path_is_empty(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %30
  %45 = load i32, i32* @RARCH_PATH_CONFIG, align 4
  %46 = call i32* @path_get(i32 %45)
  %47 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %9, align 8
  %48 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %47, i32 0, i32 5
  store i32* %46, i32** %48, align 8
  br label %49

49:                                               ; preds = %44, %30
  %50 = load i32, i32* @RARCH_DIR_SAVEFILE, align 4
  %51 = call i32 @dir_is_empty(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @RARCH_DIR_SAVEFILE, align 4
  %55 = call i8* @dir_get(i32 %54)
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %9, align 8
  %58 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %57, i32 0, i32 4
  store i32* %56, i32** %58, align 8
  br label %59

59:                                               ; preds = %53, %49
  %60 = load i32, i32* @RARCH_DIR_SAVESTATE, align 4
  %61 = call i32 @dir_is_empty(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @RARCH_DIR_SAVESTATE, align 4
  %65 = call i8* @dir_get(i32 %64)
  %66 = bitcast i8* %65 to i32*
  %67 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %9, align 8
  %68 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %67, i32 0, i32 3
  store i32* %66, i32** %68, align 8
  br label %69

69:                                               ; preds = %63, %59
  %70 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %71 = call i32 @path_is_empty(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %75 = call i32* @path_get(i32 %74)
  %76 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %9, align 8
  %77 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %76, i32 0, i32 2
  store i32* %75, i32** %77, align 8
  br label %78

78:                                               ; preds = %73, %69
  %79 = load i32, i32* @RARCH_OVERRIDE_SETTING_LIBRETRO, align 4
  %80 = call i32 @retroarch_override_setting_is_set(i32 %79, i32* null)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @RARCH_PATH_CORE, align 4
  %84 = call i32* @path_get(i32 %83)
  %85 = call i64 @string_is_empty(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %91

88:                                               ; preds = %82
  %89 = load i32, i32* @RARCH_PATH_CORE, align 4
  %90 = call i32* @path_get(i32 %89)
  br label %91

91:                                               ; preds = %88, %87
  %92 = phi i32* [ null, %87 ], [ %90, %88 ]
  %93 = load %struct.rarch_main_wrap*, %struct.rarch_main_wrap** %9, align 8
  %94 = getelementptr inbounds %struct.rarch_main_wrap, %struct.rarch_main_wrap* %93, i32 0, i32 1
  store i32* %92, i32** %94, align 8
  br label %95

95:                                               ; preds = %16, %91, %78
  ret void
}

declare dso_local %struct.TYPE_3__* @runloop_get_system_info(...) #1

declare dso_local i32 @retroarch_override_setting_is_set(i32, i32*) #1

declare dso_local i32 @verbosity_is_enabled(...) #1

declare dso_local i32 @path_is_empty(i32) #1

declare dso_local i32* @path_get(i32) #1

declare dso_local i32 @dir_is_empty(i32) #1

declare dso_local i8* @dir_get(i32) #1

declare dso_local i64 @string_is_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
