; ModuleID = '/home/carl/AnghaBench/disque/src/extr_queue.c_destroyQueue.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_queue.c_destroyQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }

@C_ERR = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @destroyQueue(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call %struct.TYPE_5__* @lookupQueue(i32* %5)
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @C_ERR, align 4
  store i32 %10, i32* %2, align 4
  br label %53

11:                                               ; preds = %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @dictDelete(i32 %12, i32* %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @decrRefCount(i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @skiplistFree(i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %11
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @dictRelease(i64 %30)
  br label %32

32:                                               ; preds = %27, %11
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @listLength(i64 %40)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @serverAssert(i32 %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @listRelease(i64 %47)
  br label %49

49:                                               ; preds = %37, %32
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = call i32 @zfree(%struct.TYPE_5__* %50)
  %52 = load i32, i32* @C_OK, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %9
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_5__* @lookupQueue(i32*) #1

declare dso_local i32 @dictDelete(i32, i32*) #1

declare dso_local i32 @decrRefCount(i32) #1

declare dso_local i32 @skiplistFree(i32) #1

declare dso_local i32 @dictRelease(i64) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i64 @listLength(i64) #1

declare dso_local i32 @listRelease(i64) #1

declare dso_local i32 @zfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
