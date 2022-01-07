; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_Disconnect_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_Disconnect_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"ui_singlePlayerActive\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@cls = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CA_DISCONNECTED = common dso_local global i64 0, align 8
@CA_CINEMATIC = common dso_local global i64 0, align 8
@ERR_DISCONNECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Disconnected from server\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_Disconnect_f() #0 {
  %1 = call i32 (...) @SCR_StopCinematic()
  %2 = call i32 @Cvar_Set(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 0), align 8
  %4 = load i64, i64* @CA_DISCONNECTED, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 0), align 8
  %8 = load i64, i64* @CA_CINEMATIC, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i32, i32* @ERR_DISCONNECT, align 4
  %12 = call i32 @Com_Error(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %6, %0
  ret void
}

declare dso_local i32 @SCR_StopCinematic(...) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
