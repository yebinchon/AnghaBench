; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_dialog.c_menu_dialog_push.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_dialog.c_menu_dialog_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@MENU_ENUM_LABEL_HELP = common dso_local global i32 0, align 4
@DISPLAYLIST_HELP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_dialog_push() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i8*, align 8
  %3 = call i32 (...) @menu_dialog_is_push_pending()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %23

6:                                                ; preds = %0
  %7 = call i32 @menu_displaylist_info_init(%struct.TYPE_4__* %1)
  %8 = call i32 @menu_entries_get_menu_stack_ptr(i32 0)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @MENU_ENUM_LABEL_HELP, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @MENU_ENUM_LABEL_HELP, align 4
  %13 = call i8* @msg_hash_to_str(i32 %12)
  store i8* %13, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @strdup(i8* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %6
  %21 = load i32, i32* @DISPLAYLIST_HELP, align 4
  %22 = call i32 @menu_displaylist_ctl(i32 %21, %struct.TYPE_4__* %1)
  br label %23

23:                                               ; preds = %20, %5
  ret void
}

declare dso_local i32 @menu_dialog_is_push_pending(...) #1

declare dso_local i32 @menu_displaylist_info_init(%struct.TYPE_4__*) #1

declare dso_local i32 @menu_entries_get_menu_stack_ptr(i32) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @menu_displaylist_ctl(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
