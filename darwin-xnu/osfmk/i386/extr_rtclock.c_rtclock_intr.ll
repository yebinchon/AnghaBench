; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_rtclock.c_rtclock_intr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_rtclock.c_rtclock_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtclock_intr(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i64, i64* @FALSE, align 8
  store i64 %7, i64* %4, align 8
  %8 = call i64 (...) @get_preemption_level()
  %9 = icmp sgt i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = call i32 (...) @ml_get_interrupts_enabled()
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i64 @is_saved_state64(i32* %17)
  %19 = load i64, i64* @TRUE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %1
  %22 = load i32*, i32** %2, align 8
  %23 = call %struct.TYPE_7__* @saved_state64(i32* %22)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %5, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 3
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i64, i64* @TRUE, align 8
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %30, %21
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %3, align 4
  br label %51

37:                                               ; preds = %1
  %38 = load i32*, i32** %2, align 8
  %39 = call %struct.TYPE_8__* @saved_state32(i32* %38)
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %6, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 3
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i64, i64* @TRUE, align 8
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %45, %37
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %32
  %52 = load i64, i64* %4, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @timer_intr(i64 %52, i32 %53)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_preemption_level(...) #1

declare dso_local i32 @ml_get_interrupts_enabled(...) #1

declare dso_local i64 @is_saved_state64(i32*) #1

declare dso_local %struct.TYPE_7__* @saved_state64(i32*) #1

declare dso_local %struct.TYPE_8__* @saved_state32(i32*) #1

declare dso_local i32 @timer_intr(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
