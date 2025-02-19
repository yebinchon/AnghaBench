; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_SecretExitLevel.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_SecretExitLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"map31\00", align 1
@secretexit = common dso_local global i32 0, align 4
@ga_completed = common dso_local global i32 0, align 4
@gameaction = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_SecretExitLevel() #0 {
  %1 = load i64, i64* @gamemode, align 8
  %2 = load i64, i64* @commercial, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = call i64 @W_CheckNumForName(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store i32 0, i32* @secretexit, align 4
  br label %9

8:                                                ; preds = %4, %0
  store i32 1, i32* @secretexit, align 4
  br label %9

9:                                                ; preds = %8, %7
  %10 = load i32, i32* @ga_completed, align 4
  store i32 %10, i32* @gameaction, align 4
  ret void
}

declare dso_local i64 @W_CheckNumForName(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
