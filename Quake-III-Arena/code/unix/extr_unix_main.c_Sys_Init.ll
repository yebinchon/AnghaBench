; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_main.c_Sys_Init.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_main.c_Sys_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"in_restart\00", align 1
@Sys_In_Restart_f = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"arch\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"linux unknown\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"username\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Sys_Init() #0 {
  %1 = load i32, i32* @Sys_In_Restart_f, align 4
  %2 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %1)
  %3 = call i32 @Cvar_Set(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i8* (...) @Sys_GetCurrentUser()
  %5 = call i32 @Cvar_Set(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %4)
  %6 = call i32 (...) @IN_Init()
  ret void
}

declare dso_local i32 @Cmd_AddCommand(i8*, i32) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i8* @Sys_GetCurrentUser(...) #1

declare dso_local i32 @IN_Init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
