; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_ForwardToServer_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_ForwardToServer_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@cls = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CA_ACTIVE = common dso_local global i64 0, align 8
@clc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"Not connected to a server.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ForwardToServer_f() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 8
  %2 = load i64, i64* @CA_ACTIVE, align 8
  %3 = icmp ne i64 %1, %2
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4, %0
  %8 = call i32 @Com_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %15

9:                                                ; preds = %4
  %10 = call i32 (...) @Cmd_Argc()
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = call i32 (...) @Cmd_Args()
  %14 = call i32 @CL_AddReliableCommand(i32 %13)
  br label %15

15:                                               ; preds = %7, %12, %9
  ret void
}

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @CL_AddReliableCommand(i32) #1

declare dso_local i32 @Cmd_Args(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
