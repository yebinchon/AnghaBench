; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_scan.c_action_scan_input_desc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_scan.c_action_scan_input_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_keybind = type { i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"deferred_user_binds_list\00", align 1
@input_config_binds = common dso_local global %struct.retro_keybind** null, align 8
@RETROK_UNKNOWN = common dso_local global i32 0, align 4
@NO_BTN = common dso_local global i8* null, align 8
@AXIS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64)* @action_scan_input_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_scan_input_desc(i8* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.retro_keybind*, align 8
  %13 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store %struct.retro_keybind* null, %struct.retro_keybind** %12, align 8
  %14 = call i32 @menu_entries_get_last_stack(i32* null, i8** %9, i32* null, i32* null, i32* null)
  %15 = load i8*, i8** %9, align 8
  %16 = call i64 @string_is_equal(i8* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = call zeroext i8 @atoi(i8* %20)
  store i8 %21, i8* %13, align 1
  %22 = load i8, i8* %13, align 1
  %23 = zext i8 %22 to i32
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %11, align 4
  %25 = load i64, i64* %8, align 8
  %26 = sub i64 %25, 7
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  br label %31

28:                                               ; preds = %4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @input_config_translate_str_to_bind_id(i8* %29)
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %28, %18
  %32 = load %struct.retro_keybind**, %struct.retro_keybind*** @input_config_binds, align 8
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %32, i64 %34
  %36 = load %struct.retro_keybind*, %struct.retro_keybind** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %36, i64 %38
  store %struct.retro_keybind* %39, %struct.retro_keybind** %12, align 8
  %40 = load %struct.retro_keybind*, %struct.retro_keybind** %12, align 8
  %41 = icmp ne %struct.retro_keybind* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %31
  %43 = load i32, i32* @RETROK_UNKNOWN, align 4
  %44 = load %struct.retro_keybind*, %struct.retro_keybind** %12, align 8
  %45 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load i8*, i8** @NO_BTN, align 8
  %47 = load %struct.retro_keybind*, %struct.retro_keybind** %12, align 8
  %48 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @AXIS_NONE, align 4
  %50 = load %struct.retro_keybind*, %struct.retro_keybind** %12, align 8
  %51 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i8*, i8** @NO_BTN, align 8
  %53 = load %struct.retro_keybind*, %struct.retro_keybind** %12, align 8
  %54 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %42, %31
  ret i32 0
}

declare dso_local i32 @menu_entries_get_last_stack(i32*, i8**, i32*, i32*, i32*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local zeroext i8 @atoi(i8*) #1

declare dso_local i32 @input_config_translate_str_to_bind_id(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
