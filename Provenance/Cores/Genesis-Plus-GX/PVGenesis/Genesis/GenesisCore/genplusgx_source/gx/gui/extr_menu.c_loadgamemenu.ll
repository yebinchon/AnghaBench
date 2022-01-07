; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_menu.c_loadgamemenu.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_menu.c_loadgamemenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@menu_load = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TYPE_RECENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @loadgamemenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadgamemenu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32* @menu_load, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @GUI_InitMenu(i32* %5)
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @GUI_DrawMenuFX(i32* %7, i32 30, i32 0)
  br label %9

9:                                                ; preds = %0, %45
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @GUI_RunMenu(i32* %10)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  switch i32 %12, label %18 [
    i32 -1, label %13
  ]

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @GUI_DrawMenuFX(i32* %14, i32 30, i32 1)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @GUI_DeleteMenu(i32* %16)
  store i32 0, i32* %1, align 4
  br label %46

18:                                               ; preds = %9
  %19 = load i32, i32* %2, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @OpenDirectory(i32 %24, i32 %25)
  store i32 %26, i32* %2, align 4
  br label %31

27:                                               ; preds = %18
  %28 = load i32, i32* @TYPE_RECENT, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @OpenDirectory(i32 %28, i32 %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @GUI_DeleteMenu(i32* %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @FileSelector(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %1, align 4
  br label %46

41:                                               ; preds = %34
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @GUI_InitMenu(i32* %42)
  br label %44

44:                                               ; preds = %41, %31
  br label %45

45:                                               ; preds = %44
  br label %9

46:                                               ; preds = %40, %13
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i32 @GUI_InitMenu(i32*) #1

declare dso_local i32 @GUI_DrawMenuFX(i32*, i32, i32) #1

declare dso_local i32 @GUI_RunMenu(i32*) #1

declare dso_local i32 @GUI_DeleteMenu(i32*) #1

declare dso_local i32 @OpenDirectory(i32, i32) #1

declare dso_local i32 @FileSelector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
