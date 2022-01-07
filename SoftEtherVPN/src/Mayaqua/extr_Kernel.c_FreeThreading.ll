; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_FreeThreading.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_FreeThreading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.TYPE_8__ = type { i64 }

@thread_count = common dso_local global i32* null, align 8
@thread_pool = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeThreading() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  br label %3

3:                                                ; preds = %0, %8
  %4 = load i32*, i32** @thread_count, align 8
  %5 = call i64 @Count(i32* %4)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %10

8:                                                ; preds = %3
  %9 = call i32 @SleepThread(i32 25)
  br label %3

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %17
  %12 = load i32, i32* @thread_pool, align 4
  %13 = call %struct.TYPE_8__* @Pop(i32 %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %2, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %46

17:                                               ; preds = %11
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %1, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @Set(i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = call i32 @WaitThreadInternal(%struct.TYPE_8__* %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %1, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ReleaseEvent(i32 %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ReleaseEvent(i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = call i32 @ReleaseThreadInternal(%struct.TYPE_8__* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %45 = call i32 @Free(%struct.TYPE_7__* %44)
  br label %11

46:                                               ; preds = %16
  %47 = load i32, i32* @thread_pool, align 4
  %48 = call i32 @ReleaseSk(i32 %47)
  %49 = load i32*, i32** @thread_count, align 8
  %50 = call i32 @DeleteCounter(i32* %49)
  store i32* null, i32** @thread_count, align 8
  ret void
}

declare dso_local i64 @Count(i32*) #1

declare dso_local i32 @SleepThread(i32) #1

declare dso_local %struct.TYPE_8__* @Pop(i32) #1

declare dso_local i32 @Set(i32) #1

declare dso_local i32 @WaitThreadInternal(%struct.TYPE_8__*) #1

declare dso_local i32 @ReleaseEvent(i32) #1

declare dso_local i32 @ReleaseThreadInternal(%struct.TYPE_8__*) #1

declare dso_local i32 @Free(%struct.TYPE_7__*) #1

declare dso_local i32 @ReleaseSk(i32) #1

declare dso_local i32 @DeleteCounter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
