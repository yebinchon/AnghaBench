; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_unlink_by_prepost_id.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_unlink_by_prepost_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq_set = type { i32 }
%struct.wq_prepost = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.waitq* }
%struct.waitq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @waitq_unlink_by_prepost_id(i32 %0, %struct.waitq_set* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.waitq_set*, align 8
  %5 = alloca %struct.wq_prepost*, align 8
  %6 = alloca %struct.waitq*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.waitq_set* %1, %struct.waitq_set** %4, align 8
  %7 = call i32 (...) @disable_preemption()
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.wq_prepost* @wq_prepost_get(i32 %8)
  store %struct.wq_prepost* %9, %struct.wq_prepost** %5, align 8
  %10 = load %struct.wq_prepost*, %struct.wq_prepost** %5, align 8
  %11 = icmp ne %struct.wq_prepost* %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load %struct.wq_prepost*, %struct.wq_prepost** %5, align 8
  %14 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.waitq*, %struct.waitq** %15, align 8
  store %struct.waitq* %16, %struct.waitq** %6, align 8
  %17 = load %struct.waitq*, %struct.waitq** %6, align 8
  %18 = call i32 @waitq_irq_safe(%struct.waitq* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.waitq*, %struct.waitq** %6, align 8
  %24 = call i32 @waitq_lock(%struct.waitq* %23)
  %25 = load %struct.wq_prepost*, %struct.wq_prepost** %5, align 8
  %26 = call i32 @wq_prepost_put(%struct.wq_prepost* %25)
  %27 = load %struct.waitq*, %struct.waitq** %6, align 8
  %28 = call i32 @waitq_valid(%struct.waitq* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %12
  %31 = load %struct.waitq*, %struct.waitq** %6, align 8
  %32 = call i32 @waitq_unlock(%struct.waitq* %31)
  %33 = call i32 (...) @enable_preemption()
  br label %42

34:                                               ; preds = %12
  %35 = load %struct.waitq*, %struct.waitq** %6, align 8
  %36 = load %struct.waitq_set*, %struct.waitq_set** %4, align 8
  %37 = call i32 @waitq_unlink_locked(%struct.waitq* %35, %struct.waitq_set* %36)
  %38 = load %struct.waitq*, %struct.waitq** %6, align 8
  %39 = call i32 @waitq_unlock(%struct.waitq* %38)
  br label %40

40:                                               ; preds = %34, %2
  %41 = call i32 (...) @enable_preemption()
  br label %42

42:                                               ; preds = %40, %30
  ret void
}

declare dso_local i32 @disable_preemption(...) #1

declare dso_local %struct.wq_prepost* @wq_prepost_get(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i32 @waitq_lock(%struct.waitq*) #1

declare dso_local i32 @wq_prepost_put(%struct.wq_prepost*) #1

declare dso_local i32 @waitq_valid(%struct.waitq*) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

declare dso_local i32 @enable_preemption(...) #1

declare dso_local i32 @waitq_unlink_locked(%struct.waitq*, %struct.waitq_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
