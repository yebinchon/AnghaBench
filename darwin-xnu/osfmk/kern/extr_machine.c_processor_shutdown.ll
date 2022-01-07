; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_machine.c_processor_shutdown.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_machine.c_processor_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }

@PROCESSOR_OFF_LINE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@PROCESSOR_START = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@PROCESSOR_DISPATCHING = common dso_local global i64 0, align 8
@PROCESSOR_SHUTDOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @processor_shutdown(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = call i32 (...) @splsched()
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @pset_lock(i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PROCESSOR_OFF_LINE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @pset_unlock(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @splx(i32 %20)
  %22 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %22, i32* %2, align 4
  br label %79

23:                                               ; preds = %1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PROCESSOR_START, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @pset_unlock(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @splx(i32 %32)
  %34 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %34, i32* %2, align 4
  br label %79

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %42, %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PROCESSOR_DISPATCHING, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @pset_unlock(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @splx(i32 %45)
  %47 = call i32 @delay(i32 1)
  %48 = call i32 (...) @splsched()
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @pset_lock(i32 %49)
  br label %36

51:                                               ; preds = %36
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PROCESSOR_SHUTDOWN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @pset_unlock(i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @splx(i32 %60)
  %62 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %62, i32* %2, align 4
  br label %79

63:                                               ; preds = %51
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = load i64, i64* @PROCESSOR_SHUTDOWN, align 8
  %67 = call i32 @pset_update_processor_state(i32 %64, %struct.TYPE_5__* %65, i64 %66)
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @pset_unlock(i32 %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = call i32 @processor_doshutdown(%struct.TYPE_5__* %70)
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @splx(i32 %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @cpu_exit_wait(i32 %76)
  %78 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %63, %57, %29, %17
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @pset_lock(i32) #1

declare dso_local i32 @pset_unlock(i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @pset_update_processor_state(i32, %struct.TYPE_5__*, i64) #1

declare dso_local i32 @processor_doshutdown(%struct.TYPE_5__*) #1

declare dso_local i32 @cpu_exit_wait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
