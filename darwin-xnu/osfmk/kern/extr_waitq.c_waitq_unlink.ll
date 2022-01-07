; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_unlink.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }
%struct.waitq_set = type { i32 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unlink waitq %p from set 0x%llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waitq_unlink(%struct.waitq* %0, %struct.waitq_set* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.waitq*, align 8
  %5 = alloca %struct.waitq_set*, align 8
  %6 = alloca i32, align 4
  store %struct.waitq* %0, %struct.waitq** %4, align 8
  store %struct.waitq_set* %1, %struct.waitq_set** %5, align 8
  %7 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %9 = call i32 @waitqs_is_set(%struct.waitq_set* %8)
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.waitq*, %struct.waitq** %4, align 8
  %12 = call i32 @waitq_valid(%struct.waitq* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.waitq*, %struct.waitq** %4, align 8
  %18 = call i64 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.waitq* %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %21 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @wqdbg_v(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %22)
  %24 = load %struct.waitq*, %struct.waitq** %4, align 8
  %25 = call i32 @waitq_irq_safe(%struct.waitq* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.waitq*, %struct.waitq** %4, align 8
  %31 = call i32 @waitq_lock(%struct.waitq* %30)
  %32 = load %struct.waitq*, %struct.waitq** %4, align 8
  %33 = load %struct.waitq_set*, %struct.waitq_set** %5, align 8
  %34 = call i32 @waitq_unlink_locked(%struct.waitq* %32, %struct.waitq_set* %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.waitq*, %struct.waitq** %4, align 8
  %36 = call i32 @waitq_unlock(%struct.waitq* %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %16, %14
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitqs_is_set(%struct.waitq_set*) #1

declare dso_local i32 @waitq_valid(%struct.waitq*) #1

declare dso_local i32 @wqdbg_v(i8*, i8*, i32) #1

declare dso_local i64 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.waitq*) #1

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i32 @waitq_lock(%struct.waitq*) #1

declare dso_local i32 @waitq_unlink_locked(%struct.waitq*, %struct.waitq_set*) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
