; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_hibernate_i386.c_hibernate_vm_unlock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_hibernate_i386.c_hibernate_vm_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hibernate_vm_unlock() #0 {
  %1 = load i64, i64* @FALSE, align 8
  %2 = call i64 (...) @ml_get_interrupts_enabled()
  %3 = icmp eq i64 %1, %2
  %4 = zext i1 %3 to i32
  %5 = call i32 @assert(i32 %4)
  %6 = call %struct.TYPE_2__* (...) @current_cpu_datap()
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 (...) @hibernate_vm_unlock_queues()
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, i32* @TRUE, align 4
  %14 = call i32 @ml_set_is_quiescing(i32 %13)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local %struct.TYPE_2__* @current_cpu_datap(...) #1

declare dso_local i32 @hibernate_vm_unlock_queues(...) #1

declare dso_local i32 @ml_set_is_quiescing(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
