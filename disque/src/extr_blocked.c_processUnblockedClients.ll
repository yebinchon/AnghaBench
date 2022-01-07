; ModuleID = '/home/carl/AnghaBench/disque/src/extr_blocked.c_processUnblockedClients.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_blocked.c_processUnblockedClients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i32 }

@server = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@CLIENT_UNBLOCKED = common dso_local global i32 0, align 4
@CLIENT_BLOCKED = common dso_local global i32 0, align 4
@BLOCKED_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @processUnblockedClients() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  br label %3

3:                                                ; preds = %50, %0
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 4
  %5 = call i64 @listLength(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %51

7:                                                ; preds = %3
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 4
  %9 = call %struct.TYPE_7__* @listFirst(i32 %8)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %1, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @serverAssert(i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %2, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %19 = call i32 @listDelNode(i32 %17, %struct.TYPE_7__* %18)
  %20 = load i32, i32* @CLIENT_UNBLOCKED, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CLIENT_BLOCKED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %7
  %33 = load i32, i32* @BLOCKED_NONE, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @sdslen(i64 %43)
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = call i32 @processInputBuffer(%struct.TYPE_8__* %47)
  br label %49

49:                                               ; preds = %46, %40, %32
  br label %50

50:                                               ; preds = %49, %7
  br label %3

51:                                               ; preds = %3
  ret void
}

declare dso_local i64 @listLength(i32) #1

declare dso_local %struct.TYPE_7__* @listFirst(i32) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @listDelNode(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @sdslen(i64) #1

declare dso_local i32 @processInputBuffer(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
