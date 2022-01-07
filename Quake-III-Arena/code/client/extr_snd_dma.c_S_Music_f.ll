; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_Music_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_Music_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_backgroundLoop = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"music <musicfile> [loopfile]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_Music_f() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @Cmd_Argc()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = call i32 @Cmd_Argv(i32 1)
  %7 = call i32 @Cmd_Argv(i32 1)
  %8 = call i32 @S_StartBackgroundTrack(i32 %6, i32 %7)
  %9 = load i64*, i64** @s_backgroundLoop, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  store i64 0, i64* %10, align 8
  br label %21

11:                                               ; preds = %0
  %12 = load i32, i32* %1, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = call i32 @Cmd_Argv(i32 1)
  %16 = call i32 @Cmd_Argv(i32 2)
  %17 = call i32 @S_StartBackgroundTrack(i32 %15, i32 %16)
  br label %20

18:                                               ; preds = %11
  %19 = call i32 @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %21

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %18, %20, %5
  ret void
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @S_StartBackgroundTrack(i32, i32) #1

declare dso_local i32 @Cmd_Argv(i32) #1

declare dso_local i32 @Com_Printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
