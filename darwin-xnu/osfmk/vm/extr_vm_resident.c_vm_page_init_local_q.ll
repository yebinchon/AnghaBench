; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_init_local_q.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_init_local_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vplq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vpl }
%struct.vpl = type { i64, i64, i64, i32 }

@vm_page_lck_grp_local = common dso_local global i32 0, align 4
@vm_page_lck_attr = common dso_local global i32 0, align 4
@vm_page_local_q_count = common dso_local global i32 0, align 4
@vm_page_local_q = common dso_local global %struct.vplq* null, align 8
@VM_PACKED_POINTER_ALIGNMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_init_local_q() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.vplq*, align 8
  %4 = alloca %struct.vpl*, align 8
  %5 = call i32 (...) @ml_get_max_cpus()
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp uge i32 %6, 2
  br i1 %7, label %8, label %44

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = mul i64 %10, 32
  %12 = trunc i64 %11 to i32
  %13 = call i32 @ROUNDUP_NEXTP2(i32 %12)
  %14 = call i64 @kalloc(i32 %13)
  %15 = inttoptr i64 %14 to %struct.vplq*
  store %struct.vplq* %15, %struct.vplq** %3, align 8
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %38, %8
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load %struct.vplq*, %struct.vplq** %3, align 8
  %22 = load i32, i32* %2, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.vplq, %struct.vplq* %21, i64 %23
  %25 = getelementptr inbounds %struct.vplq, %struct.vplq* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.vpl* %26, %struct.vpl** %4, align 8
  %27 = load %struct.vpl*, %struct.vpl** %4, align 8
  %28 = call i32 @VPL_LOCK_INIT(%struct.vpl* %27, i32* @vm_page_lck_grp_local, i32* @vm_page_lck_attr)
  %29 = load %struct.vpl*, %struct.vpl** %4, align 8
  %30 = getelementptr inbounds %struct.vpl, %struct.vpl* %29, i32 0, i32 3
  %31 = call i32 @vm_page_queue_init(i32* %30)
  %32 = load %struct.vpl*, %struct.vpl** %4, align 8
  %33 = getelementptr inbounds %struct.vpl, %struct.vpl* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.vpl*, %struct.vpl** %4, align 8
  %35 = getelementptr inbounds %struct.vpl, %struct.vpl* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.vpl*, %struct.vpl** %4, align 8
  %37 = getelementptr inbounds %struct.vpl, %struct.vpl* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %20
  %39 = load i32, i32* %2, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %16

41:                                               ; preds = %16
  %42 = load i32, i32* %1, align 4
  store i32 %42, i32* @vm_page_local_q_count, align 4
  %43 = load %struct.vplq*, %struct.vplq** %3, align 8
  store %struct.vplq* %43, %struct.vplq** @vm_page_local_q, align 8
  br label %44

44:                                               ; preds = %41, %0
  ret void
}

declare dso_local i32 @ml_get_max_cpus(...) #1

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @ROUNDUP_NEXTP2(i32) #1

declare dso_local i32 @VPL_LOCK_INIT(%struct.vpl*, i32*, i32*) #1

declare dso_local i32 @vm_page_queue_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
