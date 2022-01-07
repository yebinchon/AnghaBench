; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_socket_defunct.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_socket_defunct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@SHUTDOWN_SOCKET_LEVEL_DISCONNECT_SVC = common dso_local global i32 0, align 4
@SHUTDOWN_SOCKET_LEVEL_DISCONNECT_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@SB_UNIX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @socket_defunct(%struct.proc* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @SHUTDOWN_SOCKET_LEVEL_DISCONNECT_SVC, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SHUTDOWN_SOCKET_LEVEL_DISCONNECT_ALL, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i64, i64* @EINVAL, align 8
  store i64 %17, i64* %4, align 8
  br label %59

18:                                               ; preds = %12, %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = call i32 @socket_lock(%struct.TYPE_11__* %19, i32 1)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SHUTDOWN_SOCKET_LEVEL_DISCONNECT_SVC, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %28, %32
  %34 = load i32, i32* @SB_UNIX, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @SB_UNIX, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = call i32 @socket_unlock(%struct.TYPE_11__* %39, i32 1)
  %41 = load i64, i64* @EOPNOTSUPP, align 8
  store i64 %41, i64* %4, align 8
  br label %59

42:                                               ; preds = %24, %18
  %43 = load %struct.proc*, %struct.proc** %5, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @TRUE, align 4
  %47 = call i64 @sosetdefunct(%struct.proc* %43, %struct.TYPE_11__* %44, i32 %45, i32 %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.proc*, %struct.proc** %5, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @sodefunct(%struct.proc* %51, %struct.TYPE_11__* %52, i32 %53)
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %50, %42
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = call i32 @socket_unlock(%struct.TYPE_11__* %56, i32 1)
  %58 = load i64, i64* %8, align 8
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %55, %38, %16
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

declare dso_local i32 @socket_lock(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @socket_unlock(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @sosetdefunct(%struct.proc*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @sodefunct(%struct.proc*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
