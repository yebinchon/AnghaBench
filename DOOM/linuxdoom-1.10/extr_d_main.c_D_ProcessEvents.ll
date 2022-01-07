; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_main.c_D_ProcessEvents.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_main.c_D_ProcessEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"map01\00", align 1
@eventtail = common dso_local global i32 0, align 4
@eventhead = common dso_local global i32 0, align 4
@events = common dso_local global i32* null, align 8
@MAXEVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @D_ProcessEvents() #0 {
  %1 = alloca i32*, align 8
  %2 = load i64, i64* @gamemode, align 8
  %3 = load i64, i64* @commercial, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = call i64 @W_CheckNumForName(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %32

9:                                                ; preds = %5, %0
  br label %10

10:                                               ; preds = %26, %9
  %11 = load i32, i32* @eventtail, align 4
  %12 = load i32, i32* @eventhead, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load i32*, i32** @events, align 8
  %16 = load i32, i32* @eventtail, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32* %18, i32** %1, align 8
  %19 = load i32*, i32** %1, align 8
  %20 = call i64 @M_Responder(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %26

23:                                               ; preds = %14
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @G_Responder(i32* %24)
  br label %26

26:                                               ; preds = %23, %22
  %27 = load i32, i32* @eventtail, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @eventtail, align 4
  %29 = load i32, i32* @MAXEVENTS, align 4
  %30 = sub nsw i32 %29, 1
  %31 = and i32 %28, %30
  store i32 %31, i32* @eventtail, align 4
  br label %10

32:                                               ; preds = %8, %10
  ret void
}

declare dso_local i64 @W_CheckNumForName(i8*) #1

declare dso_local i64 @M_Responder(i32*) #1

declare dso_local i32 @G_Responder(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
