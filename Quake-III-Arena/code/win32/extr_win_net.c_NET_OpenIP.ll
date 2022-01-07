; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NET_OpenIP.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NET_OpenIP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"net_ip\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@CVAR_LATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"net_port\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@PORT_SERVER = common dso_local global i32 0, align 4
@ip_socket = common dso_local global i64 0, align 8
@net_socksEnabled = common dso_local global %struct.TYPE_5__* null, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"WARNING: Couldn't allocate IP port\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NET_OpenIP() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @CVAR_LATCH, align 4
  %5 = call %struct.TYPE_4__* @Cvar_Get(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %4)
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %1, align 8
  %6 = load i32, i32* @PORT_SERVER, align 4
  %7 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @CVAR_LATCH, align 4
  %9 = call %struct.TYPE_4__* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %7, i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %42, %0
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %15, label %45

15:                                               ; preds = %12
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %19, %20
  %22 = call i64 @NET_IPSocket(i32 %18, i32 %21)
  store i64 %22, i64* @ip_socket, align 8
  %23 = load i64, i64* @ip_socket, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %15
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %26, %27
  %29 = call i32 @Cvar_SetValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @net_socksEnabled, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @NET_OpenSocks(i32 %37)
  br label %39

39:                                               ; preds = %34, %25
  %40 = call i32 (...) @NET_GetLocalAddress()
  br label %47

41:                                               ; preds = %15
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %12

45:                                               ; preds = %12
  %46 = call i32 @Com_Printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %39
  ret void
}

declare dso_local %struct.TYPE_4__* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i64 @NET_IPSocket(i32, i32) #1

declare dso_local i32 @Cvar_SetValue(i8*, i32) #1

declare dso_local i32 @NET_OpenSocks(i32) #1

declare dso_local i32 @NET_GetLocalAddress(...) #1

declare dso_local i32 @Com_Printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
