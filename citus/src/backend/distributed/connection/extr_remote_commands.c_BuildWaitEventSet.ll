; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_remote_commands.c_BuildWaitEventSet.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_remote_commands.c_BuildWaitEventSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FD_SETSIZE = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@WL_SOCKET_READABLE = common dso_local global i32 0, align 4
@WL_SOCKET_WRITEABLE = common dso_local global i32 0, align 4
@WL_POSTMASTER_DEATH = common dso_local global i32 0, align 4
@PGINVALID_SOCKET = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__**, i32, i32)* @BuildWaitEventSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @BuildWaitEventSet(%struct.TYPE_3__** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %13, %14
  store i32 %15, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @FD_SETSIZE, align 4
  %18 = sub nsw i32 %17, 3
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @FD_SETSIZE, align 4
  %22 = sub nsw i32 %21, 3
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i32, i32* @CurrentMemoryContext, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 2
  %27 = call i32* @CreateWaitEventSet(i32 %24, i32 %26)
  store i32* %27, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %53, %23
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %33, i64 %37
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %10, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PQsocket(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* @WL_SOCKET_READABLE, align 4
  %45 = load i32, i32* @WL_SOCKET_WRITEABLE, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %12, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %51 = bitcast %struct.TYPE_3__* %50 to i8*
  %52 = call i32 @AddWaitEventToSet(i32* %47, i32 %48, i32 %49, i32* null, i8* %51)
  br label %53

53:                                               ; preds = %32
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %28

56:                                               ; preds = %28
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %59 = load i32, i32* @PGINVALID_SOCKET, align 4
  %60 = call i32 @AddWaitEventToSet(i32* %57, i32 %58, i32 %59, i32* null, i8* null)
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* @WL_LATCH_SET, align 4
  %63 = load i32, i32* @PGINVALID_SOCKET, align 4
  %64 = load i32*, i32** @MyLatch, align 8
  %65 = call i32 @AddWaitEventToSet(i32* %61, i32 %62, i32 %63, i32* %64, i8* null)
  %66 = load i32*, i32** %8, align 8
  ret i32* %66
}

declare dso_local i32* @CreateWaitEventSet(i32, i32) #1

declare dso_local i32 @PQsocket(i32) #1

declare dso_local i32 @AddWaitEventToSet(i32*, i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
