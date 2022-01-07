; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_ui.c_CL_InitUI.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_ui.c_CL_InitUI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@cl_connectedToPureServer = common dso_local global i64 0, align 8
@VMI_COMPILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"vm_ui\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ui\00", align 1
@CL_UISystemCalls = common dso_local global i32 0, align 4
@uivm = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"VM_Create on UI failed\00", align 1
@UI_GETAPIVERSION = common dso_local global i32 0, align 4
@UI_OLD_API_VERSION = common dso_local global i32 0, align 4
@UI_INIT = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CA_AUTHORIZING = common dso_local global i64 0, align 8
@CA_ACTIVE = common dso_local global i64 0, align 8
@UI_API_VERSION = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"User Interface is version %d, expected %d\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_InitUI() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @cl_connectedToPureServer, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @VMI_COMPILED, align 4
  store i32 %6, i32* %2, align 4
  br label %9

7:                                                ; preds = %0
  %8 = call i32 @Cvar_VariableValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %2, align 4
  br label %9

9:                                                ; preds = %7, %5
  %10 = load i32, i32* @CL_UISystemCalls, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @VM_Create(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %11)
  store i32 %12, i32* @uivm, align 4
  %13 = load i32, i32* @uivm, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* @ERR_FATAL, align 4
  %17 = call i32 (i32, i8*, ...) @Com_Error(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %9
  %19 = load i32, i32* @uivm, align 4
  %20 = load i32, i32* @UI_GETAPIVERSION, align 4
  %21 = call i32 (i32, i32, ...) @VM_Call(i32 %19, i32 %20)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @UI_OLD_API_VERSION, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = load i32, i32* @uivm, align 4
  %27 = load i32, i32* @UI_INIT, align 4
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 0), align 8
  %29 = load i64, i64* @CA_AUTHORIZING, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 0), align 8
  %33 = load i64, i64* @CA_ACTIVE, align 8
  %34 = icmp slt i64 %32, %33
  br label %35

35:                                               ; preds = %31, %25
  %36 = phi i1 [ false, %25 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i32, ...) @VM_Call(i32 %26, i32 %27, i32 %37)
  br label %64

39:                                               ; preds = %18
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @UI_API_VERSION, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* @ERR_DROP, align 4
  %45 = load i32, i32* %1, align 4
  %46 = load i32, i32* @UI_API_VERSION, align 4
  %47 = call i32 (i32, i8*, ...) @Com_Error(i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* @qfalse, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 1), align 8
  br label %63

49:                                               ; preds = %39
  %50 = load i32, i32* @uivm, align 4
  %51 = load i32, i32* @UI_INIT, align 4
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 0), align 8
  %53 = load i64, i64* @CA_AUTHORIZING, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 0), align 8
  %57 = load i64, i64* @CA_ACTIVE, align 8
  %58 = icmp slt i64 %56, %57
  br label %59

59:                                               ; preds = %55, %49
  %60 = phi i1 [ false, %49 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i32, ...) @VM_Call(i32 %50, i32 %51, i32 %61)
  br label %63

63:                                               ; preds = %59, %43
  br label %64

64:                                               ; preds = %63, %35
  ret void
}

declare dso_local i32 @Cvar_VariableValue(i8*) #1

declare dso_local i32 @VM_Create(i8*, i32, i32) #1

declare dso_local i32 @Com_Error(i32, i8*, ...) #1

declare dso_local i32 @VM_Call(i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
