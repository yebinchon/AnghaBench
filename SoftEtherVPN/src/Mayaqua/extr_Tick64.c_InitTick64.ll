; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tick64.c_InitTick64.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tick64.c_InitTick64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@tk64 = common dso_local global %struct.TYPE_3__* null, align 8
@halt_tick_event = common dso_local global i32 0, align 4
@Tick64Thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitTick64() #0 {
  %1 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tk64, align 8
  %2 = icmp ne %struct.TYPE_3__* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %21

4:                                                ; preds = %0
  %5 = call i32 (...) @NewEvent()
  store i32 %5, i32* @halt_tick_event, align 4
  %6 = call %struct.TYPE_3__* @ZeroMalloc(i32 4)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** @tk64, align 8
  %7 = call i32 (...) @NewLock()
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tk64, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = call i32 @NewList(i32* null)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tk64, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @Tick64Thread, align 4
  %14 = call i32 @NewThread(i32 %13, i32* null)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tk64, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tk64, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @WaitThreadInit(i32 %19)
  br label %21

21:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @NewEvent(...) #1

declare dso_local %struct.TYPE_3__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewLock(...) #1

declare dso_local i32 @NewList(i32*) #1

declare dso_local i32 @NewThread(i32, i32*) #1

declare dso_local i32 @WaitThreadInit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
