; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_HubPaInit.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_HubPaInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i8*, i8*, i32, %struct.TYPE_12__*, i32, i32, i32 }

@CompareStormList = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HubPaInit(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %4 = call %struct.TYPE_13__* @ZeroMalloc(i32 56)
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %3, align 8
  %5 = call i32 (...) @NewCancel()
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 7
  store i32 %5, i32* %7, align 8
  %8 = call i32 (...) @NewQueue()
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 4
  %11 = call i32 (...) @Tick64()
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 4
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %16, align 8
  %17 = load i32, i32* @CompareStormList, align 4
  %18 = call i32 @NewList(i32 %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @UsernameToInt64(i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @UsernameToInt64(i32 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %37, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %1
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @LockList(i32 %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %59 = call i32 @Insert(i32 %57, %struct.TYPE_12__* %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @UnlockList(i32 %64)
  br label %66

66:                                               ; preds = %44, %1
  ret i32 1
}

declare dso_local %struct.TYPE_13__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewCancel(...) #1

declare dso_local i32 @NewQueue(...) #1

declare dso_local i32 @Tick64(...) #1

declare dso_local i32 @NewList(i32) #1

declare dso_local i8* @UsernameToInt64(i32) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i32 @Insert(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @UnlockList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
