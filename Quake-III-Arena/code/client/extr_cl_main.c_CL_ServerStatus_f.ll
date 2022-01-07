; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_ServerStatus_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_ServerStatus_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i8*, i8*, i32 }

@cls = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CA_ACTIVE = common dso_local global i64 0, align 8
@clc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"Not connected to a server.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: serverstatus [server]\0A\00", align 1
@NS_CLIENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"getstatus\00", align 1
@qtrue = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ServerStatus_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = call i32 @Com_Memset(i32* %1, i32 0, i32 4)
  %5 = call i32 (...) @Cmd_Argc()
  %6 = icmp ne i32 %5, 2
  br i1 %6, label %7, label %19

7:                                                ; preds = %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 0), align 8
  %9 = load i64, i64* @CA_ACTIVE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clc, i32 0, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %7
  %15 = call i32 @Com_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %41

17:                                               ; preds = %11
  %18 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 1), align 8
  store i8* %18, i8** %2, align 8
  br label %21

19:                                               ; preds = %0
  %20 = call i8* @Cmd_Argv(i32 1)
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @NET_StringToAdr(i8* %22, i32* %1)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %41

26:                                               ; preds = %21
  %27 = load i32, i32* @NS_CLIENT, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @NET_OutOfBandPrint(i32 %27, i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* %1, align 4
  %31 = call %struct.TYPE_5__* @CL_GetServerStatus(i32 %30)
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %3, align 8
  %32 = load i32, i32* %1, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** @qtrue, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @qtrue, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %26, %25, %14
  ret void
}

declare dso_local i32 @Com_Memset(i32*, i32, i32) #1

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @NET_StringToAdr(i8*, i32*) #1

declare dso_local i32 @NET_OutOfBandPrint(i32, i32, i8*) #1

declare dso_local %struct.TYPE_5__* @CL_GetServerStatus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
