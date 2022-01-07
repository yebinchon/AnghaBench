; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_DrawReadThis1.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_DrawReadThis1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inhelpscreens = common dso_local global i32 0, align 4
@gamemode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@PU_CACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"HELP1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @M_DrawReadThis1() #0 {
  store i32 1, i32* @inhelpscreens, align 4
  %1 = load i32, i32* @gamemode, align 4
  switch i32 %1, label %10 [
    i32 131, label %2
    i32 128, label %6
    i32 130, label %6
    i32 129, label %6
  ]

2:                                                ; preds = %0
  %3 = load i32, i32* @PU_CACHE, align 4
  %4 = call i32 @W_CacheLumpName(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = call i32 @V_DrawPatchDirect(i32 0, i32 0, i32 0, i32 %4)
  br label %11

6:                                                ; preds = %0, %0, %0
  %7 = load i32, i32* @PU_CACHE, align 4
  %8 = call i32 @W_CacheLumpName(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = call i32 @V_DrawPatchDirect(i32 0, i32 0, i32 0, i32 %8)
  br label %11

10:                                               ; preds = %0
  br label %11

11:                                               ; preds = %10, %6, %2
  ret void
}

declare dso_local i32 @V_DrawPatchDirect(i32, i32, i32, i32) #1

declare dso_local i32 @W_CacheLumpName(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
