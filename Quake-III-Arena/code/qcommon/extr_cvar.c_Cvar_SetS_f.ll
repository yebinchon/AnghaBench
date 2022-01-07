; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cvar.c_Cvar_SetS_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cvar.c_Cvar_SetS_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"usage: sets <variable> <value>\0A\00", align 1
@CVAR_SERVERINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cvar_SetS_f() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = call i32 (...) @Cmd_Argc()
  %3 = icmp ne i32 %2, 3
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @Com_Printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %19

6:                                                ; preds = %0
  %7 = call i32 (...) @Cvar_Set_f()
  %8 = call i32 @Cmd_Argv(i32 1)
  %9 = call %struct.TYPE_3__* @Cvar_FindVar(i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %1, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  br label %19

13:                                               ; preds = %6
  %14 = load i32, i32* @CVAR_SERVERINFO, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %13, %12, %4
  ret void
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @Cvar_Set_f(...) #1

declare dso_local %struct.TYPE_3__* @Cvar_FindVar(i32) #1

declare dso_local i32 @Cmd_Argv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
