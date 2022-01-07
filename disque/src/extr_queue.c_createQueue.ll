; ModuleID = '/home/carl/AnghaBench/disque/src/extr_queue.c_createQueue.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_queue.c_createQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i64, i64, i64, i32, i64, i32, i32*, i32*, i64, i64, i64, i64, i32, i32, i32, i64 }

@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@skiplistCompareJobsInQueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @createQueue(i32* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @dictFind(i32 %5, i32* %6)
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %64

10:                                               ; preds = %1
  %11 = call %struct.TYPE_6__* @zmalloc(i32 128)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32* %12, i32** %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 16
  store i64 0, i64* %16, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @incrRefCount(i32* %17)
  %19 = load i32, i32* @skiplistCompareJobsInQueue, align 4
  %20 = call i32 @skiplistCreate(i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 15
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 2), align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 14
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 2), align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 13
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 12
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 11
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 10
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 9
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 8
  store i32* null, i32** %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 7
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1), align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 5
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1), align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @incrRefCount(i32* %55)
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = call i32 @dictAdd(i32 %57, i32* %60, %struct.TYPE_6__* %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %2, align 8
  br label %64

64:                                               ; preds = %10, %9
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %65
}

declare dso_local i32* @dictFind(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @zmalloc(i32) #1

declare dso_local i32 @incrRefCount(i32*) #1

declare dso_local i32 @skiplistCreate(i32) #1

declare dso_local i32 @dictAdd(i32, i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
