; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_brushbsp.c_NextNodeFromList.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_brushbsp.c_NextNodeFromList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@numwaiting = common dso_local global i64 0, align 8
@firstnode = common dso_local global %struct.TYPE_4__* null, align 8
@nodelistsize = common dso_local global i32 0, align 4
@lastnode = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @NextNodeFromList() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = call i32 (...) @ThreadLock()
  %3 = load i64, i64* @numwaiting, align 8
  %4 = add nsw i64 %3, 1
  store i64 %4, i64* @numwaiting, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @firstnode, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* @numwaiting, align 8
  %9 = call i64 (...) @GetNumThreads()
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = call i64 (...) @GetNumThreads()
  %13 = call i32 @ThreadSemaphoreIncrease(i64 %12)
  br label %14

14:                                               ; preds = %11, %7
  br label %15

15:                                               ; preds = %14, %0
  %16 = call i32 (...) @ThreadUnlock()
  %17 = call i32 (...) @ThreadSemaphoreWait()
  %18 = call i32 (...) @ThreadLock()
  %19 = load i64, i64* @numwaiting, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* @numwaiting, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @firstnode, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %1, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @firstnode, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @firstnode, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** @firstnode, align 8
  %28 = load i32, i32* @nodelistsize, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* @nodelistsize, align 4
  br label %30

30:                                               ; preds = %24, %15
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @firstnode, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32* null, i32** @lastnode, align 8
  br label %34

34:                                               ; preds = %33, %30
  %35 = call i32 (...) @ThreadUnlock()
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %36
}

declare dso_local i32 @ThreadLock(...) #1

declare dso_local i64 @GetNumThreads(...) #1

declare dso_local i32 @ThreadSemaphoreIncrease(i64) #1

declare dso_local i32 @ThreadUnlock(...) #1

declare dso_local i32 @ThreadSemaphoreWait(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
