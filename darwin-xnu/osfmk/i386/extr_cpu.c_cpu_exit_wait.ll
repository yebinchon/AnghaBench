; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu.c_cpu_exit_wait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu.c_cpu_exit_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@x86_topo_lock = common dso_local global i32 0, align 4
@LCPU_HALT = common dso_local global i64 0, align 8
@LCPU_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"cpu_exit_wait(%d) timeout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_exit_wait(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.TYPE_5__* @cpu_datap(i32 %6)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %3, align 8
  %8 = load i32, i32* @FALSE, align 4
  %9 = call i32 @ml_set_interrupts_enabled(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = call i32 @mp_safe_spin_lock(i32* @x86_topo_lock)
  %11 = call i64 (...) @rdtsc64()
  %12 = add i64 %11, 10000000000
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %47, %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LCPU_HALT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LCPU_OFF, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %27, %20, %13
  %35 = phi i1 [ false, %20 ], [ false, %13 ], [ %33, %27 ]
  br i1 %35, label %36, label %51

36:                                               ; preds = %34
  %37 = call i32 @simple_unlock(i32* @x86_topo_lock)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ml_set_interrupts_enabled(i32 %38)
  %40 = call i32 (...) @cpu_pause()
  %41 = call i64 (...) @rdtsc64()
  %42 = load i64, i64* %5, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %36
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i32 @ml_set_interrupts_enabled(i32 %48)
  %50 = call i32 @mp_safe_spin_lock(i32* @x86_topo_lock)
  br label %13

51:                                               ; preds = %34
  %52 = call i32 @simple_unlock(i32* @x86_topo_lock)
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @ml_set_interrupts_enabled(i32 %53)
  ret void
}

declare dso_local %struct.TYPE_5__* @cpu_datap(i32) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @mp_safe_spin_lock(i32*) #1

declare dso_local i64 @rdtsc64(...) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @cpu_pause(...) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
