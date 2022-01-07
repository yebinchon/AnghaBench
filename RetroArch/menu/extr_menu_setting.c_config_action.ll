; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_action.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i8*)* @config_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_action(i32** %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, %struct.TYPE_9__* %4, %struct.TYPE_9__* %5, i8* %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i8*, align 8
  store i32** %0, i32*** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %13, align 8
  store i8* %6, i8** %14, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @msg_hash_to_str(i32 %15)
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @msg_hash_to_str(i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %14, align 8
  %26 = call i32 @setting_action_setting(i32 %16, i32 %18, i32 %21, i32 %24, i8* %25, i32 0)
  %27 = load i32**, i32*** %8, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %28, i64 %33
  store i32 %26, i32* %34, align 4
  %35 = load i32**, i32*** %8, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_IDX_PTR(i32** %35, %struct.TYPE_8__* %36, i32 %37)
  %39 = load i32**, i32*** %8, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_VALUE_IDX(i32** %39, %struct.TYPE_8__* %40, i32 %41)
  ret void
}

declare dso_local i32 @setting_action_setting(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_IDX_PTR(i32**, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_VALUE_IDX(i32**, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
