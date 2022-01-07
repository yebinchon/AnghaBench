; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_MapLoading.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_MapLoading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i64, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32* }
%struct.TYPE_8__ = type { i32 }

@com_cl_running = common dso_local global %struct.TYPE_5__* null, align 8
@cls = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CA_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@clc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@cl = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"nextmap\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@qtrue = common dso_local global i32 0, align 4
@CA_CHALLENGING = common dso_local global i64 0, align 8
@RETRANSMIT_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_MapLoading() #0 {
  %1 = load %struct.TYPE_5__*, %struct.TYPE_5__** @com_cl_running, align 8
  %2 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %36

6:                                                ; preds = %0
  %7 = call i32 (...) @Con_Close()
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 2), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 0), align 8
  %9 = load i64, i64* @CA_CONNECTED, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %6
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 1), align 8
  %13 = call i32 @Q_stricmp(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* @CA_CONNECTED, align 8
  store i64 %16, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 0), align 8
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 3), align 8
  %18 = call i32 @Com_Memset(i32* %17, i32 0, i32 8)
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clc, i32 0, i32 3), align 8
  %20 = call i32 @Com_Memset(i32* %19, i32 0, i32 8)
  %21 = call i32 @Com_Memset(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cl, i32 0, i32 0), i32 0, i32 4)
  store i32 -9999, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clc, i32 0, i32 0), align 8
  %22 = call i32 (...) @SCR_UpdateScreen()
  br label %36

23:                                               ; preds = %11, %6
  %24 = call i32 @Cvar_Set(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @qtrue, align 4
  %26 = call i32 @CL_Disconnect(i32 %25)
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 1), align 8
  %28 = call i32 @Q_strncpyz(i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 4)
  %29 = load i64, i64* @CA_CHALLENGING, align 8
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 2), align 8
  %30 = call i32 (...) @SCR_UpdateScreen()
  %31 = load i32, i32* @RETRANSMIT_TIMEOUT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clc, i32 0, i32 2), align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 1), align 8
  %34 = call i32 @NET_StringToAdr(i32 %33, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clc, i32 0, i32 1))
  %35 = call i32 (...) @CL_CheckForResend()
  br label %36

36:                                               ; preds = %5, %23, %15
  ret void
}

declare dso_local i32 @Con_Close(...) #1

declare dso_local i32 @Q_stricmp(i32, i8*) #1

declare dso_local i32 @Com_Memset(i32*, i32, i32) #1

declare dso_local i32 @SCR_UpdateScreen(...) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i32 @CL_Disconnect(i32) #1

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #1

declare dso_local i32 @NET_StringToAdr(i32, i32*) #1

declare dso_local i32 @CL_CheckForResend(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
