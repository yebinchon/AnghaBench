; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnPoll.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnPoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NnPoll(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = icmp eq %struct.TYPE_10__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %73

8:                                                ; preds = %1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @LockQueue(i32 %11)
  br label %13

13:                                               ; preds = %8, %21
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32* @GetNext(i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %27

21:                                               ; preds = %13
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @NnLayer2(%struct.TYPE_10__* %22, i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @FreePacketWithData(i32* %25)
  br label %13

27:                                               ; preds = %20
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @UnlockQueue(i32 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %27
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @Lock(i32 %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %36
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %4, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @AddRef(i32 %51)
  br label %53

53:                                               ; preds = %45, %36
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @Unlock(i32 %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = icmp ne %struct.TYPE_9__* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = call i32 @TubeFlushEx(%struct.TYPE_9__* %61, i32 1)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = call i32 @ReleaseTube(%struct.TYPE_9__* %65)
  br label %67

67:                                               ; preds = %60, %53
  br label %68

68:                                               ; preds = %67, %27
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %70 = call i32 @NnPollingIpCombine(%struct.TYPE_10__* %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %72 = call i32 @NnDeleteOldSessions(%struct.TYPE_10__* %71)
  br label %73

73:                                               ; preds = %68, %7
  ret void
}

declare dso_local i32 @LockQueue(i32) #1

declare dso_local i32* @GetNext(i32) #1

declare dso_local i32 @NnLayer2(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @FreePacketWithData(i32*) #1

declare dso_local i32 @UnlockQueue(i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @TubeFlushEx(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ReleaseTube(%struct.TYPE_9__*) #1

declare dso_local i32 @NnPollingIpCombine(%struct.TYPE_10__*) #1

declare dso_local i32 @NnDeleteOldSessions(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
