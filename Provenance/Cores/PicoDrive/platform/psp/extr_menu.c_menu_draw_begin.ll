; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_menu_draw_begin.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_menu_draw_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GU_DIRECT = common dso_local global i32 0, align 4
@guCmdList = common dso_local global i32 0, align 4
@GU_PSM_5650 = common dso_local global i32 0, align 4
@bg_buffer = common dso_local global i32 0, align 4
@menu_screen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_draw_begin() #0 {
  %1 = call i32 @sceGuSync(i32 0, i32 0)
  %2 = load i32, i32* @GU_DIRECT, align 4
  %3 = load i32, i32* @guCmdList, align 4
  %4 = call i32 @sceGuStart(i32 %2, i32 %3)
  %5 = load i32, i32* @GU_PSM_5650, align 4
  %6 = load i32, i32* @bg_buffer, align 4
  %7 = load i32, i32* @menu_screen, align 4
  %8 = call i32 @sceGuCopyImage(i32 %5, i32 0, i32 0, i32 480, i32 272, i32 480, i32 %6, i32 0, i32 0, i32 512, i32 %7)
  %9 = call i32 (...) @sceGuFinish()
  %10 = call i32 @sceGuSync(i32 0, i32 0)
  ret void
}

declare dso_local i32 @sceGuSync(i32, i32) #1

declare dso_local i32 @sceGuStart(i32, i32) #1

declare dso_local i32 @sceGuCopyImage(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sceGuFinish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
