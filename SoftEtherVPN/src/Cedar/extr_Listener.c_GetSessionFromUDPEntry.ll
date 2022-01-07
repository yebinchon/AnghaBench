; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Listener.c_GetSessionFromUDPEntry.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Listener.c_GetSessionFromUDPEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @GetSessionFromUDPEntry(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = icmp eq %struct.TYPE_10__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %43

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @LockList(i32 %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_8__* @Search(i32 %21, %struct.TYPE_8__* %7)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %6, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = icmp eq %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %12
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @UnlockList(i32 %28)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %43

30:                                               ; preds = %12
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %8, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @AddRef(i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @UnlockList(i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %3, align 8
  br label %43

43:                                               ; preds = %30, %25, %11
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %44
}

declare dso_local i32 @LockList(i32) #1

declare dso_local %struct.TYPE_8__* @Search(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @AddRef(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
