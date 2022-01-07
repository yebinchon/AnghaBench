; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_process_pmap_updates.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_process_pmap_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@pmap_pcid_ncpus = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_pmap_updates() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @cpu_number()
  store i32 %2, i32* %1, align 4
  %3 = call i64 (...) @ml_get_interrupts_enabled()
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = call i64 (...) @get_preemption_level()
  %7 = icmp ne i64 %6, 0
  br label %8

8:                                                ; preds = %5, %0
  %9 = phi i1 [ true, %0 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32
  %11 = call i32 @pmap_assert(i32 %10)
  %12 = load i64, i64* @pmap_pcid_ncpus, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = call i32 (...) @pmap_pcid_validate_current()
  %16 = load i8*, i8** @FALSE, align 8
  %17 = load i32, i32* %1, align 4
  %18 = call %struct.TYPE_4__* @cpu_datap(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  %20 = call i32 (...) @tlb_flush_global()
  br label %26

21:                                               ; preds = %8
  %22 = load i8*, i8** @FALSE, align 8
  %23 = call %struct.TYPE_3__* (...) @current_cpu_datap()
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = call i32 (...) @flush_tlb_raw()
  br label %26

26:                                               ; preds = %21, %14
  %27 = call i32 (...) @mfence()
  ret void
}

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @pmap_assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local i64 @get_preemption_level(...) #1

declare dso_local i32 @pmap_pcid_validate_current(...) #1

declare dso_local %struct.TYPE_4__* @cpu_datap(i32) #1

declare dso_local i32 @tlb_flush_global(...) #1

declare dso_local %struct.TYPE_3__* @current_cpu_datap(...) #1

declare dso_local i32 @flush_tlb_raw(...) #1

declare dso_local i32 @mfence(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
