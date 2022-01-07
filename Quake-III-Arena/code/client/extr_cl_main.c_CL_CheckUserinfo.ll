; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_CheckUserinfo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_CheckUserinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@cls = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CA_CHALLENGING = common dso_local global i64 0, align 8
@cl_paused = common dso_local global %struct.TYPE_4__* null, align 8
@cvar_modifiedFlags = common dso_local global i32 0, align 4
@CVAR_USERINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"userinfo \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_CheckUserinfo() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 8
  %2 = load i64, i64* @CA_CHALLENGING, align 8
  %3 = icmp slt i64 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %25

5:                                                ; preds = %0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cl_paused, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %25

11:                                               ; preds = %5
  %12 = load i32, i32* @cvar_modifiedFlags, align 4
  %13 = load i32, i32* @CVAR_USERINFO, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load i32, i32* @CVAR_USERINFO, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* @cvar_modifiedFlags, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* @cvar_modifiedFlags, align 4
  %21 = load i32, i32* @CVAR_USERINFO, align 4
  %22 = call i32 @Cvar_InfoString(i32 %21)
  %23 = call i32 @va(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 @CL_AddReliableCommand(i32 %23)
  br label %25

25:                                               ; preds = %4, %10, %16, %11
  ret void
}

declare dso_local i32 @CL_AddReliableCommand(i32) #1

declare dso_local i32 @va(i8*, i32) #1

declare dso_local i32 @Cvar_InfoString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
