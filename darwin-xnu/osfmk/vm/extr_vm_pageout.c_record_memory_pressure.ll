; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_record_memory_pressure.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_record_memory_pressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64 }

@vm_pageout_stats = common dso_local global %struct.TYPE_4__* null, align 8
@vm_pageout_stat_now = common dso_local global i32 0, align 4
@vm_pageout_state = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@vm_page_buckets_check_interval = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @record_memory_pressure() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vm_pageout_stats, align 8
  %3 = load i32, i32* @vm_pageout_stat_now, align 4
  %4 = call i64 @VM_PAGEOUT_STAT_BEFORE(i32 %3)
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i64 %4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vm_pageout_stats, align 8
  %9 = load i32, i32* @vm_pageout_stat_now, align 4
  %10 = call i64 @VM_PAGEOUT_STAT_BEFORE(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %7, %13
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vm_pageout_stats, align 8
  %16 = load i32, i32* @vm_pageout_stat_now, align 4
  %17 = call i64 @VM_PAGEOUT_STAT_BEFORE(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %14, %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vm_pageout_stats, align 8
  %23 = load i32, i32* @vm_pageout_stat_now, align 4
  %24 = call i64 @VM_PAGEOUT_STAT_BEFORE(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %21, %27
  store i64 %28, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vm_pageout_state, i32 0, i32 0), align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vm_pageout_state, i32 0, i32 0), align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @commpage_set_memory_pressure(i32 %30)
  %32 = load i32, i32* @vm_pageout_stat_now, align 4
  %33 = call i32 @VM_PAGEOUT_STAT_AFTER(i32 %32)
  store i32 %33, i32* %1, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vm_pageout_stats, align 8
  %35 = load i32, i32* %1, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = call i32 @bzero(%struct.TYPE_4__* %37, i32 4)
  %39 = load i32, i32* %1, align 4
  store i32 %39, i32* @vm_pageout_stat_now, align 4
  ret void
}

declare dso_local i64 @VM_PAGEOUT_STAT_BEFORE(i32) #1

declare dso_local i32 @commpage_set_memory_pressure(i32) #1

declare dso_local i32 @VM_PAGEOUT_STAT_AFTER(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
