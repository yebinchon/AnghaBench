; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_menu_input_st_string_cb_cheat_file_save_as.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_menu_input_st_string_cb_cheat_file_save_as.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @menu_input_st_string_cb_cheat_file_save_as to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_input_st_string_cb_cheat_file_save_as(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %46

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %10
  store i32* null, i32** %5, align 8
  %16 = call %struct.TYPE_5__* (...) @config_get_ptr()
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %6, align 8
  %17 = call i8* (...) @menu_input_dialog_get_label_buffer()
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @string_is_empty(i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i8*, i8** %7, align 8
  %23 = call i32* @menu_setting_find(i8* %22)
  store i32* %23, i32** %5, align 8
  br label %24

24:                                               ; preds = %21, %15
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @setting_set_with_string_representation(i32* %28, i8* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @menu_setting_generic(i32* %31, i32 0)
  br label %45

33:                                               ; preds = %24
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @string_is_empty(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cheat_manager_save(i8* %38, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %37, %33
  br label %45

45:                                               ; preds = %44, %27
  br label %46

46:                                               ; preds = %45, %10, %2
  %47 = call i32 (...) @menu_input_dialog_end()
  ret void
}

declare dso_local %struct.TYPE_5__* @config_get_ptr(...) #1

declare dso_local i8* @menu_input_dialog_get_label_buffer(...) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32* @menu_setting_find(i8*) #1

declare dso_local i32 @setting_set_with_string_representation(i32*, i8*) #1

declare dso_local i32 @menu_setting_generic(i32*, i32) #1

declare dso_local i32 @cheat_manager_save(i8*, i32, i32) #1

declare dso_local i32 @menu_input_dialog_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
