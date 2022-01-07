; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_menu_init_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_menu_init_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32, i32, i8*, i32, i32, i32, i8* }

@MENU_ENUM_LABEL_MAIN_MENU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lpl\00", align 1
@FILE_TYPE_PLAIN = common dso_local global i32 0, align 4
@DISPLAYLIST_MAIN_MENU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @xmb_menu_init_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmb_menu_init_list(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i32* @menu_entries_get_menu_stack_ptr(i32 0)
  store i32* %7, i32** %5, align 8
  %8 = call i32* @menu_entries_get_selection_buf_ptr(i32 0)
  store i32* %8, i32** %6, align 8
  %9 = call i32 @menu_displaylist_info_init(%struct.TYPE_6__* %4)
  %10 = load i32, i32* @MENU_ENUM_LABEL_MAIN_MENU, align 4
  %11 = call i8* @msg_hash_to_str(i32 %10)
  %12 = call i8* @strdup(i8* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  store i8* %12, i8** %13, align 8
  %14 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 8
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* @FILE_TYPE_PLAIN, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 7
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @MENU_ENUM_LABEL_MAIN_MENU, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 6
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* @MENU_ENUM_LABEL_MAIN_MENU, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @menu_entries_append_enum(i32* %20, i32 %22, i8* %24, i32 %25, i32 %27, i32 %29, i32 0)
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32* %31, i32** %32, align 8
  %33 = load i32, i32* @DISPLAYLIST_MAIN_MENU, align 4
  %34 = call i32 @menu_displaylist_ctl(i32 %33, %struct.TYPE_6__* %4)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %1
  br label %44

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = call i32 @menu_displaylist_process(%struct.TYPE_6__* %4)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %44

42:                                               ; preds = %37
  %43 = call i32 @menu_displaylist_info_free(%struct.TYPE_6__* %4)
  store i32 1, i32* %2, align 4
  br label %46

44:                                               ; preds = %41, %36
  %45 = call i32 @menu_displaylist_info_free(%struct.TYPE_6__* %4)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32* @menu_entries_get_menu_stack_ptr(i32) #1

declare dso_local i32* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i32 @menu_displaylist_info_init(%struct.TYPE_6__*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @menu_entries_append_enum(i32*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @menu_displaylist_ctl(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @menu_displaylist_process(%struct.TYPE_6__*) #1

declare dso_local i32 @menu_displaylist_info_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
