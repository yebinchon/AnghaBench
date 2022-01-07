; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_unlink_all_unlock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_unlink_all_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"unlink waitq %p from all sets\00", align 1
@KERN_SUCCESS = common dso_local global i32 0, align 4
@LINK_WALK_ONE_LEVEL = common dso_local global i32 0, align 4
@WQL_LINK = common dso_local global i32 0, align 4
@waitq_unlink_all_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waitq_unlink_all_unlock(%struct.waitq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.waitq*, align 8
  %4 = alloca i64, align 8
  store %struct.waitq* %0, %struct.waitq** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.waitq*, %struct.waitq** %3, align 8
  %6 = call i64 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.waitq* %5)
  %7 = inttoptr i64 %6 to i8*
  %8 = call i32 @wqdbg_v(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load %struct.waitq*, %struct.waitq** %3, align 8
  %10 = call i32 @waitq_irq_safe(%struct.waitq* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.waitq*, %struct.waitq** %3, align 8
  %16 = getelementptr inbounds %struct.waitq, %struct.waitq* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.waitq*, %struct.waitq** %3, align 8
  %21 = call i32 @waitq_unlock(%struct.waitq* %20)
  %22 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %22, i32* %2, align 4
  br label %44

23:                                               ; preds = %1
  %24 = load %struct.waitq*, %struct.waitq** %3, align 8
  %25 = getelementptr inbounds %struct.waitq, %struct.waitq* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %4, align 8
  %27 = load %struct.waitq*, %struct.waitq** %3, align 8
  %28 = getelementptr inbounds %struct.waitq, %struct.waitq* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.waitq*, %struct.waitq** %3, align 8
  %30 = call i32 @waitq_clear_prepost_locked(%struct.waitq* %29)
  %31 = load %struct.waitq*, %struct.waitq** %3, align 8
  %32 = call i32 @waitq_unlock(%struct.waitq* %31)
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %23
  %36 = load i32, i32* @LINK_WALK_ONE_LEVEL, align 4
  %37 = load %struct.waitq*, %struct.waitq** %3, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i32, i32* @WQL_LINK, align 4
  %40 = load i32, i32* @waitq_unlink_all_cb, align 4
  %41 = call i32 @walk_waitq_links(i32 %36, %struct.waitq* %37, i64 %38, i32 %39, i32* null, i32 %40)
  br label %42

42:                                               ; preds = %35, %23
  %43 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %19
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @wqdbg_v(i8*, i8*) #1

declare dso_local i64 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.waitq*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

declare dso_local i32 @waitq_clear_prepost_locked(%struct.waitq*) #1

declare dso_local i32 @walk_waitq_links(i32, %struct.waitq*, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
