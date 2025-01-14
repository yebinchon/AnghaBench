; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_wants_task_throttled.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_wants_task_throttled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@kernel_task = common dso_local global %struct.TYPE_6__* null, align 8
@VM_CONFIG_SWAP_IS_ACTIVE = common dso_local global i64 0, align 8
@c_segment_pages_compressed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_wants_task_throttled(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kernel_task, align 8
  %6 = icmp eq %struct.TYPE_6__* %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

8:                                                ; preds = %1
  %9 = load i64, i64* @VM_CONFIG_SWAP_IS_ACTIVE, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  %12 = call i64 (...) @vm_compressor_low_on_space()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = call i64 (...) @HARD_THROTTLE_LIMIT_REACHED()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14, %11
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @pmap_compressed(i32 %22)
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @c_segment_pages_compressed, align 4
  %26 = sdiv i32 %25, 4
  %27 = icmp ugt i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %31

29:                                               ; preds = %17, %14
  br label %30

30:                                               ; preds = %29, %8
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %28, %7
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @vm_compressor_low_on_space(...) #1

declare dso_local i64 @HARD_THROTTLE_LIMIT_REACHED(...) #1

declare dso_local i64 @pmap_compressed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
