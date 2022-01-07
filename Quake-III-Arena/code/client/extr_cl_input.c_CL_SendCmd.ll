; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_input.c_CL_SendCmd.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_input.c_CL_SendCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@cls = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@CA_CONNECTED = common dso_local global i64 0, align 8
@com_sv_running = common dso_local global %struct.TYPE_7__* null, align 8
@sv_paused = common dso_local global %struct.TYPE_6__* null, align 8
@cl_paused = common dso_local global %struct.TYPE_10__* null, align 8
@cl_showSend = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c". \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_SendCmd() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0), align 8
  %2 = load i64, i64* @CA_CONNECTED, align 8
  %3 = icmp slt i64 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %35

5:                                                ; preds = %0
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @com_sv_running, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sv_paused, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cl_paused, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %35

21:                                               ; preds = %15, %10, %5
  %22 = call i32 (...) @CL_CreateNewCommands()
  %23 = call i32 (...) @CL_ReadyToSendPacket()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cl_showSend, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 @Com_Printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %25
  br label %35

33:                                               ; preds = %21
  %34 = call i32 (...) @CL_WritePacket()
  br label %35

35:                                               ; preds = %33, %32, %20, %4
  ret void
}

declare dso_local i32 @CL_CreateNewCommands(...) #1

declare dso_local i32 @CL_ReadyToSendPacket(...) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @CL_WritePacket(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
