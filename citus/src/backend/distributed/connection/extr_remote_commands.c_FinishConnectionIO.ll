; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_remote_commands.c_FinishConnectionIO.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_remote_commands.c_FinishConnectionIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32 }

@WL_POSTMASTER_DEATH = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_SOCKET_WRITEABLE = common dso_local global i32 0, align 4
@WL_SOCKET_READABLE = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32 0, align 4
@PG_WAIT_EXTENSION = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"postmaster was shut down, exiting\00", align 1
@InterruptHoldoffCount = common dso_local global i64 0, align 8
@QueryCancelPending = common dso_local global i64 0, align 8
@ProcDiePending = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @FinishConnectionIO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FinishConnectionIO(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @PQsocket(i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @Assert(i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @PQisnonblocking(i32* %18)
  %20 = call i32 @Assert(i32* %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %25

25:                                               ; preds = %23, %2
  br label %26

26:                                               ; preds = %25, %104
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %27 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %28 = load i32, i32* @WL_LATCH_SET, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @PQflush(i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %106

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @WL_SOCKET_WRITEABLE, align 4
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %38, %35
  br label %43

43:                                               ; preds = %42
  %44 = load i32*, i32** %6, align 8
  %45 = call i64 @PQconsumeInput(i32* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %106

48:                                               ; preds = %43
  %49 = load i32*, i32** %6, align 8
  %50 = call i64 @PQisBusy(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @WL_SOCKET_READABLE, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @WL_SOCKET_READABLE, align 4
  %59 = load i32, i32* @WL_SOCKET_WRITEABLE, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %106

64:                                               ; preds = %56
  %65 = load i32, i32* @MyLatch, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @PG_WAIT_EXTENSION, align 4
  %69 = call i32 @WaitLatchOrSocket(i32 %65, i32 %66, i32 %67, i32 0, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %64
  %75 = load i32, i32* @ERROR, align 4
  %76 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %77 = call i32 @ereport(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %64
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @WL_LATCH_SET, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %78
  %84 = load i32, i32* @MyLatch, align 4
  %85 = call i32 @ResetLatch(i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %90

90:                                               ; preds = %88, %83
  %91 = load i64, i64* @InterruptHoldoffCount, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load i64, i64* @QueryCancelPending, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* @ProcDiePending, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96, %93
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  br label %105

103:                                              ; preds = %96, %90
  br label %104

104:                                              ; preds = %103, %78
  br label %26

105:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %63, %47, %34
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @PQsocket(i32*) #1

declare dso_local i32 @Assert(i32*) #1

declare dso_local i32* @PQisnonblocking(i32*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @PQflush(i32*) #1

declare dso_local i64 @PQconsumeInput(i32*) #1

declare dso_local i64 @PQisBusy(i32*) #1

declare dso_local i32 @WaitLatchOrSocket(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @ResetLatch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
