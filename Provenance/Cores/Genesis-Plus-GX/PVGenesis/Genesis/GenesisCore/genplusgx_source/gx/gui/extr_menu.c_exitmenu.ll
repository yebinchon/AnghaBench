; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_menu.c_exitmenu.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_menu.c_exitmenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"View Credits\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Reset System\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Return to Loader\00", align 1
@__const.exitmenu.items = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)], align 16
@menu_main = common dso_local global i32 0, align 4
@osd_version = common dso_local global i32 0, align 4
@SYS_HOTRESET = common dso_local global i32 0, align 4
@SYS_SHUTDOWN = common dso_local global i32 0, align 4
@SYS_RETURNTOMENU = common dso_local global i32 0, align 4
@w_pointer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exitmenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exitmenu() #0 {
  %1 = alloca [3 x i8*], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca void (...)*, align 8
  %5 = bitcast [3 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([3 x i8*]* @__const.exitmenu.items to i8*), i64 24, i1 false)
  store i32 2, i32* %2, align 4
  store i32* inttoptr (i64 2147489792 to i32*), i32** %3, align 8
  store void (...)* inttoptr (i64 2147489792 to void (...)*), void (...)** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 2086666406
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 3, i32* %2, align 4
  br label %11

11:                                               ; preds = %10, %0
  %12 = load i32, i32* @osd_version, align 4
  %13 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 0
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @GUI_OptionWindow(i32* @menu_main, i32 %12, i8** %13, i32 %14)
  switch i32 %15, label %34 [
    i32 0, label %16
    i32 1, label %20
    i32 2, label %26
  ]

16:                                               ; preds = %11
  %17 = call i32 @GUI_DeleteMenu(i32* @menu_main)
  %18 = call i32 (...) @showcredits()
  %19 = call i32 @GUI_InitMenu(i32* @menu_main)
  br label %35

20:                                               ; preds = %11
  %21 = call i32 @GUI_DeleteMenu(i32* @menu_main)
  %22 = call i32 (...) @GUI_FadeOut()
  %23 = call i32 (...) @shutdown()
  %24 = load i32, i32* @SYS_HOTRESET, align 4
  %25 = call i32 @SYS_ResetSystem(i32 %24, i32 0, i32 0)
  br label %35

26:                                               ; preds = %11
  %27 = call i32 @GUI_DeleteMenu(i32* @menu_main)
  %28 = call i32 (...) @GUI_FadeOut()
  %29 = call i32 (...) @shutdown()
  %30 = load i32, i32* @SYS_SHUTDOWN, align 4
  %31 = call i32 @SYS_ResetSystem(i32 %30, i32 0, i32 0)
  %32 = load void (...)*, void (...)** %4, align 8
  %33 = call i32 @__lwp_thread_stopmultitasking(void (...)* %32)
  br label %35

34:                                               ; preds = %11
  br label %35

35:                                               ; preds = %34, %26, %20, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GUI_OptionWindow(i32*, i32, i8**, i32) #2

declare dso_local i32 @GUI_DeleteMenu(i32*) #2

declare dso_local i32 @showcredits(...) #2

declare dso_local i32 @GUI_InitMenu(i32*) #2

declare dso_local i32 @GUI_FadeOut(...) #2

declare dso_local i32 @shutdown(...) #2

declare dso_local i32 @SYS_ResetSystem(i32, i32, i32) #2

declare dso_local i32 @__lwp_thread_stopmultitasking(void (...)*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
