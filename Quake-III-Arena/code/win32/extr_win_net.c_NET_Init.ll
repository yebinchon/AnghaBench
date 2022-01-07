; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NET_Init.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NET_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@winsockdata = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"WARNING: Winsock initialization failed, returned %d\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@winsockInitialized = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Winsock Initialized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NET_Init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @MAKEWORD(i32 1, i32 1)
  %3 = call i32 @WSAStartup(i32 %2, i32* @winsockdata)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* %1, align 4
  %8 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %15

9:                                                ; preds = %0
  %10 = load i32, i32* @qtrue, align 4
  store i32 %10, i32* @winsockInitialized, align 4
  %11 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 (...) @NET_GetCvars()
  %13 = load i32, i32* @qtrue, align 4
  %14 = call i32 @NET_Config(i32 %13)
  br label %15

15:                                               ; preds = %9, %6
  ret void
}

declare dso_local i32 @WSAStartup(i32, i32*) #1

declare dso_local i32 @MAKEWORD(i32, i32) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @NET_GetCvars(...) #1

declare dso_local i32 @NET_Config(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
