; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_ScspDeInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_ScspDeInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@scsp_thread_running = common dso_local global i64 0, align 8
@YAB_THREAD_SCSP = common dso_local global i32 0, align 4
@SNDCore = common dso_local global %struct.TYPE_2__* null, align 8
@SoundRam = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ScspDeInit() #0 {
  %1 = load i64, i64* @scsp_thread_running, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  store i64 0, i64* @scsp_thread_running, align 8
  %4 = load i32, i32* @YAB_THREAD_SCSP, align 4
  %5 = call i32 @YabThreadWake(i32 %4)
  %6 = load i32, i32* @YAB_THREAD_SCSP, align 4
  %7 = call i32 @YabThreadWait(i32 %6)
  br label %8

8:                                                ; preds = %3, %0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SNDCore, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SNDCore, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (...)*, i32 (...)** %13, align 8
  %15 = call i32 (...) %14()
  br label %16

16:                                               ; preds = %11, %8
  store %struct.TYPE_2__* null, %struct.TYPE_2__** @SNDCore, align 8
  %17 = load i32*, i32** @SoundRam, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** @SoundRam, align 8
  %21 = call i32 @T2MemoryDeInit(i32* %20)
  br label %22

22:                                               ; preds = %19, %16
  store i32* null, i32** @SoundRam, align 8
  ret void
}

declare dso_local i32 @YabThreadWake(i32) #1

declare dso_local i32 @YabThreadWait(i32) #1

declare dso_local i32 @T2MemoryDeInit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
