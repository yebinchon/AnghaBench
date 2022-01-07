; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/snes/src/lib/libco/extr_ucontext.c_co_create.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/snes/src/lib/libco/extr_ucontext.c_co_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32, i64 }

@co_running = common dso_local global i32* null, align 8
@co_primary = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @co_create(i32 %0, void ()* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca void ()*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %3, align 4
  store void ()* %1, void ()** %4, align 8
  %6 = load i32*, i32** @co_running, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32* @co_primary, i32** @co_running, align 8
  br label %9

9:                                                ; preds = %8, %2
  %10 = call i64 @malloc(i32 24)
  %11 = inttoptr i64 %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %46

14:                                               ; preds = %9
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = call i32 @getcontext(%struct.TYPE_6__* %15) #3
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  br i1 false, label %41, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @malloc(i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i64 %24, i64* %27, align 8
  %28 = icmp ne i64 %24, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %22
  %30 = load i32*, i32** @co_running, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = load void ()*, void ()** %4, align 8
  %39 = bitcast void ()* %38 to void (...)*
  %40 = call i32 @makecontext(%struct.TYPE_6__* %37, void (...)* %39, i32 0)
  br label %45

41:                                               ; preds = %22, %18, %14
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = ptrtoint %struct.TYPE_6__* %42 to i32
  %44 = call i32 @co_delete(i32 %43)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %45

45:                                               ; preds = %41, %29
  br label %46

46:                                               ; preds = %45, %9
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = ptrtoint %struct.TYPE_6__* %47 to i32
  ret i32 %48
}

declare dso_local i64 @malloc(i32) #1

; Function Attrs: returns_twice
declare dso_local i32 @getcontext(%struct.TYPE_6__*) #2

declare dso_local i32 @makecontext(%struct.TYPE_6__*, void (...)*, i32) #1

declare dso_local i32 @co_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
