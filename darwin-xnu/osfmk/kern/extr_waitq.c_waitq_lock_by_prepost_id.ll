; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_lock_by_prepost_id.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_lock_by_prepost_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }
%struct.wq_prepost = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.waitq* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.waitq* @waitq_lock_by_prepost_id(i32 %0) #0 {
  %2 = alloca %struct.waitq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.waitq*, align 8
  %5 = alloca %struct.wq_prepost*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.waitq* null, %struct.waitq** %4, align 8
  %6 = call i32 (...) @disable_preemption()
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.wq_prepost* @wq_prepost_get(i32 %7)
  store %struct.wq_prepost* %8, %struct.wq_prepost** %5, align 8
  %9 = load %struct.wq_prepost*, %struct.wq_prepost** %5, align 8
  %10 = icmp ne %struct.wq_prepost* %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = load %struct.wq_prepost*, %struct.wq_prepost** %5, align 8
  %13 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.waitq*, %struct.waitq** %14, align 8
  store %struct.waitq* %15, %struct.waitq** %4, align 8
  %16 = load %struct.waitq*, %struct.waitq** %4, align 8
  %17 = call i32 @waitq_irq_safe(%struct.waitq* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.waitq*, %struct.waitq** %4, align 8
  %23 = call i32 @waitq_lock(%struct.waitq* %22)
  %24 = load %struct.wq_prepost*, %struct.wq_prepost** %5, align 8
  %25 = call i32 @wq_prepost_put(%struct.wq_prepost* %24)
  %26 = load %struct.waitq*, %struct.waitq** %4, align 8
  %27 = call i32 @waitq_valid(%struct.waitq* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %11
  %30 = load %struct.waitq*, %struct.waitq** %4, align 8
  %31 = call i32 @waitq_unlock(%struct.waitq* %30)
  %32 = call i32 (...) @enable_preemption()
  store %struct.waitq* null, %struct.waitq** %2, align 8
  br label %37

33:                                               ; preds = %11
  br label %34

34:                                               ; preds = %33, %1
  %35 = call i32 (...) @enable_preemption()
  %36 = load %struct.waitq*, %struct.waitq** %4, align 8
  store %struct.waitq* %36, %struct.waitq** %2, align 8
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.waitq*, %struct.waitq** %2, align 8
  ret %struct.waitq* %38
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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
