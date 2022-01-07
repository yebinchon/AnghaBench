; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_startserver.c_UI_BotSelectMenu_BuildList.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_startserver.c_UI_BotSelectMenu_BuildList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i64 }

@botSelectInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MAX_MODELSPERPAGE = common dso_local global i32 0, align 4
@UI_BotSelectMenu_SortCompare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_BotSelectMenu_BuildList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_BotSelectMenu_BuildList() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botSelectInfo, i32 0, i32 3), align 8
  %2 = call i32 (...) @UI_GetNumBots()
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botSelectInfo, i32 0, i32 0), align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botSelectInfo, i32 0, i32 0), align 8
  %4 = load i32, i32* @MAX_MODELSPERPAGE, align 4
  %5 = sdiv i32 %3, %4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botSelectInfo, i32 0, i32 1), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botSelectInfo, i32 0, i32 0), align 8
  %7 = load i32, i32* @MAX_MODELSPERPAGE, align 4
  %8 = srem i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botSelectInfo, i32 0, i32 1), align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botSelectInfo, i32 0, i32 1), align 4
  br label %13

13:                                               ; preds = %10, %0
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %24, %13
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botSelectInfo, i32 0, i32 0), align 8
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i32, i32* %1, align 4
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botSelectInfo, i32 0, i32 2), align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %19, i32* %23, align 4
  br label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %14

27:                                               ; preds = %14
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botSelectInfo, i32 0, i32 2), align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botSelectInfo, i32 0, i32 0), align 8
  %30 = load i32, i32* @UI_BotSelectMenu_SortCompare, align 4
  %31 = call i32 @qsort(i32* %28, i32 %29, i32 4, i32 %30)
  ret void
}

declare dso_local i32 @UI_GetNumBots(...) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
