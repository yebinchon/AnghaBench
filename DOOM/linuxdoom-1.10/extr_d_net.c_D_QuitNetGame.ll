; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_D_QuitNetGame.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_D_QuitNetGame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@debugfile = common dso_local global i64 0, align 8
@netgame = common dso_local global i32 0, align 4
@usergame = common dso_local global i32 0, align 4
@consoleplayer = common dso_local global i32 0, align 4
@demoplayback = common dso_local global i64 0, align 8
@netbuffer = common dso_local global %struct.TYPE_3__* null, align 8
@doomcom = common dso_local global %struct.TYPE_4__* null, align 8
@nodeingame = common dso_local global i64* null, align 8
@NCMD_EXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @D_QuitNetGame() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @debugfile, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i64, i64* @debugfile, align 8
  %7 = call i32 @fclose(i64 %6)
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, i32* @netgame, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i32, i32* @usergame, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* @consoleplayer, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* @demoplayback, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %11, %8
  br label %57

21:                                               ; preds = %17
  %22 = load i32, i32* @consoleplayer, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %54, %21
  %28 = load i32, i32* %1, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %57

30:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %49, %30
  %32 = load i32, i32* %2, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @doomcom, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load i64*, i64** @nodeingame, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @NCMD_EXIT, align 4
  %47 = call i32 @HSendPacket(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %31

52:                                               ; preds = %31
  %53 = call i32 @I_WaitVBL(i32 1)
  br label %54

54:                                               ; preds = %52
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %27

57:                                               ; preds = %20, %27
  ret void
}

declare dso_local i32 @fclose(i64) #1

declare dso_local i32 @HSendPacket(i32, i32) #1

declare dso_local i32 @I_WaitVBL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
