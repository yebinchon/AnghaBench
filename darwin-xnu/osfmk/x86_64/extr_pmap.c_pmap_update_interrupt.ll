; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_update_interrupt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_update_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@PMAP__UPDATE_INTERRUPT = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_update_interrupt() #0 {
  %1 = load i32, i32* @PMAP__UPDATE_INTERRUPT, align 4
  %2 = call i32 @PMAP_CODE(i32 %1)
  %3 = load i32, i32* @DBG_FUNC_START, align 4
  %4 = or i32 %2, %3
  %5 = call i32 @PMAP_TRACE(i32 %4)
  %6 = call %struct.TYPE_2__* (...) @current_cpu_datap()
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 (...) @process_pmap_updates()
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, i32* @PMAP__UPDATE_INTERRUPT, align 4
  %14 = call i32 @PMAP_CODE(i32 %13)
  %15 = load i32, i32* @DBG_FUNC_END, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @PMAP_TRACE(i32 %16)
  ret void
}

declare dso_local i32 @PMAP_TRACE(i32) #1

declare dso_local i32 @PMAP_CODE(i32) #1

declare dso_local %struct.TYPE_2__* @current_cpu_datap(...) #1

declare dso_local i32 @process_pmap_updates(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
