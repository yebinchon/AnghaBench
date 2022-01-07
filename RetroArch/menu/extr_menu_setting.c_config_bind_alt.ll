; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_bind_alt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_bind_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.retro_keybind = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SD_FREE_FLAG_NAME = common dso_local global i32 0, align 4
@SD_FREE_FLAG_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.TYPE_7__*, %struct.retro_keybind*, i32, i32, i8*, i8*, %struct.retro_keybind*, %struct.TYPE_8__*, %struct.TYPE_8__*, i8*)* @config_bind_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_bind_alt(i32** %0, %struct.TYPE_7__* %1, %struct.retro_keybind* %2, i32 %3, i32 %4, i8* %5, i8* %6, %struct.retro_keybind* %7, %struct.TYPE_8__* %8, %struct.TYPE_8__* %9, i8* %10) #0 {
  %12 = alloca i32**, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.retro_keybind*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.retro_keybind*, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca %struct.TYPE_8__*, align 8
  %22 = alloca i8*, align 8
  store i32** %0, i32*** %12, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %13, align 8
  store %struct.retro_keybind* %2, %struct.retro_keybind** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store %struct.retro_keybind* %7, %struct.retro_keybind** %19, align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %21, align 8
  store i8* %10, i8** %22, align 8
  %23 = load i8*, i8** %17, align 8
  %24 = load i8*, i8** %18, align 8
  %25 = load %struct.retro_keybind*, %struct.retro_keybind** %14, align 8
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load %struct.retro_keybind*, %struct.retro_keybind** %19, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %22, align 8
  %36 = call i32 @setting_bind_setting(i8* %23, i8* %24, %struct.retro_keybind* %25, i32 %26, i32 %27, %struct.retro_keybind* %28, i32 %31, i32 %34, i8* %35, i32 1)
  %37 = load i32**, i32*** %12, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  store i32 %36, i32* %44, align 4
  %45 = load i32**, i32*** %12, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %47 = load i32, i32* @SD_FREE_FLAG_NAME, align 4
  %48 = load i32, i32* @SD_FREE_FLAG_SHORT, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @SETTINGS_DATA_LIST_CURRENT_ADD_FREE_FLAGS(i32** %45, %struct.TYPE_7__* %46, i32 %49)
  ret void
}

declare dso_local i32 @setting_bind_setting(i8*, i8*, %struct.retro_keybind*, i32, i32, %struct.retro_keybind*, i32, i32, i8*, i32) #1

declare dso_local i32 @SETTINGS_DATA_LIST_CURRENT_ADD_FREE_FLAGS(i32**, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
