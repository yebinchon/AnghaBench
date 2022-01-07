; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_CheckAbort.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_CheckAbort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@eventtail = common dso_local global i32 0, align 4
@eventhead = common dso_local global i32 0, align 4
@events = common dso_local global %struct.TYPE_3__* null, align 8
@ev_keydown = common dso_local global i64 0, align 8
@KEY_ESCAPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Network game synchronization aborted.\00", align 1
@MAXEVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckAbort() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @I_GetTime()
  %4 = add nsw i32 %3, 2
  store i32 %4, i32* %2, align 4
  br label %5

5:                                                ; preds = %9, %0
  %6 = call i32 (...) @I_GetTime()
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = call i32 (...) @I_StartTic()
  br label %5

11:                                               ; preds = %5
  %12 = call i32 (...) @I_StartTic()
  br label %13

13:                                               ; preds = %36, %11
  %14 = load i32, i32* @eventtail, align 4
  %15 = load i32, i32* @eventhead, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @events, align 8
  %19 = load i32, i32* @eventtail, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %1, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ev_keydown, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %17
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @KEY_ESCAPE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @I_Error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %27, %17
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* @eventtail, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @eventtail, align 4
  %39 = load i32, i32* @MAXEVENTS, align 4
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %38, %40
  store i32 %41, i32* @eventtail, align 4
  br label %13

42:                                               ; preds = %13
  ret void
}

declare dso_local i32 @I_GetTime(...) #1

declare dso_local i32 @I_StartTic(...) #1

declare dso_local i32 @I_Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
