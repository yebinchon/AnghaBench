; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cgame.c_CL_InitCGame.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cgame.c_CL_InitCGame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 (...)* }

@cl = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@CS_SERVERINFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"maps/%s.bsp\00", align 1
@cl_connectedToPureServer = common dso_local global i64 0, align 8
@VMI_COMPILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"vm_cgame\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"cgame\00", align 1
@CL_CgameSystemCalls = common dso_local global i32 0, align 4
@cgvm = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"VM_Create on cgame failed\00", align 1
@CA_LOADING = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@CG_INIT = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@CA_PRIMED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"CL_InitCGame: %5.2f seconds\0A\00", align 1
@re = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_InitCGame() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @Sys_Milliseconds()
  store i32 %6, i32* %3, align 4
  %7 = call i32 (...) @Con_Close()
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cl, i32 0, i32 1, i32 0), align 8
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cl, i32 0, i32 1, i32 1), align 8
  %10 = load i64, i64* @CS_SERVERINFO, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %8, i64 %13
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = call i8* @Info_ValueForKey(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %2, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cl, i32 0, i32 0), align 8
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @Com_sprintf(i32 %17, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load i64, i64* @cl_connectedToPureServer, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %0
  %23 = load i32, i32* @VMI_COMPILED, align 4
  store i32 %23, i32* %5, align 4
  br label %26

24:                                               ; preds = %0
  %25 = call i32 @Cvar_VariableValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32, i32* @CL_CgameSystemCalls, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @VM_Create(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %27, i32 %28)
  store i32 %29, i32* @cgvm, align 4
  %30 = load i32, i32* @cgvm, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ERR_DROP, align 4
  %34 = call i32 @Com_Error(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i32, i32* @CA_LOADING, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0), align 4
  %37 = load i32, i32* @cgvm, align 4
  %38 = load i32, i32* @CG_INIT, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @clc, i32 0, i32 2), align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @clc, i32 0, i32 1), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @clc, i32 0, i32 0), align 4
  %42 = call i32 @VM_Call(i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* @CA_PRIMED, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0), align 4
  %44 = call i32 (...) @Sys_Milliseconds()
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %3, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %48, 1.000000e+03
  %50 = fptosi double %49 to i32
  %51 = call i32 @Com_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @re, i32 0, i32 0), align 8
  %53 = call i32 (...) %52()
  %54 = call i32 (...) @Sys_LowPhysicalMemory()
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %35
  %57 = call i32 (...) @Com_TouchMemory()
  br label %58

58:                                               ; preds = %56, %35
  %59 = call i32 (...) @Con_ClearNotify()
  ret void
}

declare dso_local i32 @Sys_Milliseconds(...) #1

declare dso_local i32 @Con_Close(...) #1

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @Com_sprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @Cvar_VariableValue(i8*) #1

declare dso_local i32 @VM_Create(i8*, i32, i32) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @VM_Call(i32, i32, i32, i32, i32) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

declare dso_local i32 @Sys_LowPhysicalMemory(...) #1

declare dso_local i32 @Com_TouchMemory(...) #1

declare dso_local i32 @Con_ClearNotify(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
