; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_net_chan.c_NET_SendPacket.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_net_chan.c_NET_SendPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@showpackets = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"send packet %4i\0A\00", align 1
@NA_LOOPBACK = common dso_local global i64 0, align 8
@NA_BOT = common dso_local global i64 0, align 8
@NA_BAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NET_SendPacket(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i64 %3, i64* %9, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @showpackets, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @Com_Printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %14, %4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NA_LOOPBACK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @NET_SendLoopPacket(i32 %28, i32 %29, i8* %30, i64 %32)
  br label %52

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NA_BOT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %52

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NA_BAD, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %52

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @Sys_SendPacket(i32 %47, i8* %48, i64 %50)
  br label %52

52:                                               ; preds = %46, %45, %39, %27
  ret void
}

declare dso_local i32 @Com_Printf(i8*, i32) #1

declare dso_local i32 @NET_SendLoopPacket(i32, i32, i8*, i64) #1

declare dso_local i32 @Sys_SendPacket(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
