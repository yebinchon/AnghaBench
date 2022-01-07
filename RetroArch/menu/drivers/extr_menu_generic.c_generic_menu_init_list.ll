; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_menu_generic.c_generic_menu_init_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_menu_generic.c_generic_menu_init_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32, i32, i32, i32 }

@MENU_ENUM_LABEL_MAIN_MENU = common dso_local global i32 0, align 4
@DISPLAYLIST_MAIN_MENU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_menu_init_list(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = call i32* @menu_entries_get_menu_stack_ptr(i32 0)
  store i32* %6, i32** %4, align 8
  %7 = call i32* @menu_entries_get_selection_buf_ptr(i32 0)
  store i32* %7, i32** %5, align 8
  %8 = call i32 @menu_displaylist_info_init(%struct.TYPE_6__* %3)
  %9 = load i32, i32* @MENU_ENUM_LABEL_MAIN_MENU, align 4
  %10 = call i32 @msg_hash_to_str(i32 %9)
  %11 = call i32 @strdup(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* @MENU_ENUM_LABEL_MAIN_MENU, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 5
  store i32 %13, i32* %14, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MENU_ENUM_LABEL_MAIN_MENU, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @menu_entries_append_enum(i32* %15, i32 %17, i32 %19, i32 %20, i32 %22, i32 %24, i32 0)
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32* %26, i32** %27, align 8
  %28 = load i32, i32* @DISPLAYLIST_MAIN_MENU, align 4
  %29 = call i64 @menu_displaylist_ctl(i32 %28, %struct.TYPE_6__* %3)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = call i32 @menu_displaylist_process(%struct.TYPE_6__* %3)
  br label %33

33:                                               ; preds = %31, %1
  %34 = call i32 @menu_displaylist_info_free(%struct.TYPE_6__* %3)
  ret i32 1
}

declare dso_local i32* @menu_entries_get_menu_stack_ptr(i32) #1

declare dso_local i32* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i32 @menu_displaylist_info_init(%struct.TYPE_6__*) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @menu_entries_append_enum(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @menu_displaylist_ctl(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @menu_displaylist_process(%struct.TYPE_6__*) #1

declare dso_local i32 @menu_displaylist_info_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
