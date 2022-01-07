; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_timer.c_timer_queue_migrate_cpu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_timer.c_timer_queue_migrate_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@master_cpu = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DECR_TIMER_MIGRATE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@EndOfAllTime = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timer_queue_migrate_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.TYPE_6__* @cpu_datap(i32 %6)
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %3, align 8
  %8 = call %struct.TYPE_6__* (...) @current_cpu_datap()
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %4, align 8
  %9 = call i32 (...) @ml_get_interrupts_enabled()
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @master_cpu, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* @KDEBUG_TRACE, align 4
  %27 = load i32, i32* @DECR_TIMER_MIGRATE, align 4
  %28 = load i32, i32* @DBG_FUNC_START, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %2, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 32
  %40 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %26, i32 %29, i32 %30, i32 %34, i32 %39, i32 0, i32 0)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = call i32 @timer_queue_migrate(i32* %43, i32* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %1
  %51 = load i32, i32* @EndOfAllTime, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @EndOfAllTime, align 4
  %56 = call i32 @setPop(i32 %55)
  br label %57

57:                                               ; preds = %50, %1
  %58 = load i32, i32* @KDEBUG_TRACE, align 4
  %59 = load i32, i32* @DECR_TIMER_MIGRATE, align 4
  %60 = load i32, i32* @DBG_FUNC_END, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %58, i32 %61, i32 %62, i32 %63, i32 0, i32 0, i32 0)
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_6__* @cpu_datap(i32) #1

declare dso_local %struct.TYPE_6__* @current_cpu_datap(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @timer_queue_migrate(i32*, i32*) #1

declare dso_local i32 @setPop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
