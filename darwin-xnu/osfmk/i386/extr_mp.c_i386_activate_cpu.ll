; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_i386_activate_cpu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_i386_activate_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@smp_initialized = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@x86_topo_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i386_activate_cpu() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = call %struct.TYPE_3__* (...) @current_cpu_datap()
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %1, align 8
  %3 = call i32 (...) @ml_get_interrupts_enabled()
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i32, i32* @smp_initialized, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = load i8*, i8** @TRUE, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  br label %22

14:                                               ; preds = %0
  %15 = call i32 @mp_safe_spin_lock(i32* @x86_topo_lock)
  %16 = load i8*, i8** @TRUE, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = call i32 (...) @started_cpu()
  %20 = call i32 @simple_unlock(i32* @x86_topo_lock)
  %21 = call i32 (...) @flush_tlb_raw()
  br label %22

22:                                               ; preds = %14, %10
  ret void
}

declare dso_local %struct.TYPE_3__* @current_cpu_datap(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @mp_safe_spin_lock(i32*) #1

declare dso_local i32 @started_cpu(...) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @flush_tlb_raw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
