; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_throttle_up_batch.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_throttle_up_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_pageout_queue = type { i64, i64, i64 }

@vm_page_queue_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@vm_pageout_throttle_up_count = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_pageout_queue*, i32)* @vm_pageout_throttle_up_batch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_pageout_throttle_up_batch(%struct.vm_pageout_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.vm_pageout_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.vm_pageout_queue* %0, %struct.vm_pageout_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %6 = call i32 @LCK_MTX_ASSERT(i32* @vm_page_queue_lock, i32 %5)
  %7 = load i32, i32* @vm_pageout_throttle_up_count, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @VM_PAGEOUT_DEBUG(i32 %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = load %struct.vm_pageout_queue*, %struct.vm_pageout_queue** %3, align 8
  %13 = getelementptr inbounds %struct.vm_pageout_queue, %struct.vm_pageout_queue* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %14, %11
  store i64 %15, i64* %13, align 8
  %16 = load %struct.vm_pageout_queue*, %struct.vm_pageout_queue** %3, align 8
  %17 = getelementptr inbounds %struct.vm_pageout_queue, %struct.vm_pageout_queue* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TRUE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load i8*, i8** @FALSE, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = load %struct.vm_pageout_queue*, %struct.vm_pageout_queue** %3, align 8
  %25 = getelementptr inbounds %struct.vm_pageout_queue, %struct.vm_pageout_queue* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.vm_pageout_queue*, %struct.vm_pageout_queue** %3, align 8
  %27 = getelementptr inbounds %struct.vm_pageout_queue, %struct.vm_pageout_queue* %26, i32 0, i32 0
  %28 = ptrtoint i64* %27 to i32
  %29 = call i32 @thread_wakeup(i32 %28)
  br label %30

30:                                               ; preds = %21, %2
  %31 = load %struct.vm_pageout_queue*, %struct.vm_pageout_queue** %3, align 8
  %32 = getelementptr inbounds %struct.vm_pageout_queue, %struct.vm_pageout_queue* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TRUE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load %struct.vm_pageout_queue*, %struct.vm_pageout_queue** %3, align 8
  %38 = getelementptr inbounds %struct.vm_pageout_queue, %struct.vm_pageout_queue* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i8*, i8** @FALSE, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.vm_pageout_queue*, %struct.vm_pageout_queue** %3, align 8
  %45 = getelementptr inbounds %struct.vm_pageout_queue, %struct.vm_pageout_queue* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.vm_pageout_queue*, %struct.vm_pageout_queue** %3, align 8
  %47 = getelementptr inbounds %struct.vm_pageout_queue, %struct.vm_pageout_queue* %46, i32 0, i32 0
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = ptrtoint i64* %48 to i32
  %50 = call i32 @thread_wakeup(i32 %49)
  br label %51

51:                                               ; preds = %41, %36, %30
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @VM_PAGEOUT_DEBUG(i32, i32) #1

declare dso_local i32 @thread_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
