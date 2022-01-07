; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_DownloadsComplete.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_DownloadsComplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64, i32 }

@clc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@qfalse = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"donedl\00", align 1
@CA_LOADING = common dso_local global i64 0, align 8
@cls = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"r_uiFullScreen\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_DownloadsComplete() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 1), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i64, i64* @qfalse, align 8
  store i64 %4, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 1), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %6 = call i32 @FS_Restart(i32 %5)
  %7 = call i32 @CL_AddReliableCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %24

8:                                                ; preds = %0
  %9 = load i64, i64* @CA_LOADING, align 8
  store i64 %9, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 8
  %10 = call i32 (...) @Com_EventLoop()
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 8
  %12 = load i64, i64* @CA_LOADING, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %24

15:                                               ; preds = %8
  %16 = call i32 @Cvar_Set(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 (...) @CL_FlushMemory()
  %18 = load i32, i32* @qtrue, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 1), align 8
  %19 = call i32 (...) @CL_InitCGame()
  %20 = call i32 (...) @CL_SendPureChecksums()
  %21 = call i32 (...) @CL_WritePacket()
  %22 = call i32 (...) @CL_WritePacket()
  %23 = call i32 (...) @CL_WritePacket()
  br label %24

24:                                               ; preds = %15, %14, %3
  ret void
}

declare dso_local i32 @FS_Restart(i32) #1

declare dso_local i32 @CL_AddReliableCommand(i8*) #1

declare dso_local i32 @Com_EventLoop(...) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i32 @CL_FlushMemory(...) #1

declare dso_local i32 @CL_InitCGame(...) #1

declare dso_local i32 @CL_SendPureChecksums(...) #1

declare dso_local i32 @CL_WritePacket(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
