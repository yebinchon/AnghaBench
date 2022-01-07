; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_set_clear_preposts.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_set_clear_preposts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq_set = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Clearing all preposted queues on waitq_set: 0x%llx\00", align 1
@wqset_clear_prepost_chain_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @waitq_set_clear_preposts(%struct.waitq_set* %0) #0 {
  %2 = alloca %struct.waitq_set*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.waitq_set* %0, %struct.waitq_set** %2, align 8
  %5 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %6 = call i32 @waitqs_is_set(%struct.waitq_set* %5)
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %9 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %15 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %1
  br label %54

19:                                               ; preds = %13
  %20 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %21 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @wqdbg_v(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %25 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %24, i32 0, i32 0
  %26 = call i64 @waitq_irq_safe(%struct.TYPE_2__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = call i32 (...) @splsched()
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %19
  %31 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %32 = call i32 @waitq_set_lock(%struct.waitq_set* %31)
  %33 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %34 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %3, align 8
  %36 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %37 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %39 = call i32 @waitq_set_unlock(%struct.waitq_set* %38)
  %40 = load %struct.waitq_set*, %struct.waitq_set** %2, align 8
  %41 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %40, i32 0, i32 0
  %42 = call i64 @waitq_irq_safe(%struct.TYPE_2__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @splx(i32 %45)
  br label %47

47:                                               ; preds = %44, %30
  %48 = load i64, i64* %3, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i64, i64* %3, align 8
  %52 = load i32, i32* @wqset_clear_prepost_chain_cb, align 4
  %53 = call i32 @wq_prepost_iterate(i64 %51, i32* null, i32 %52)
  br label %54

54:                                               ; preds = %18, %50, %47
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitqs_is_set(%struct.waitq_set*) #1

declare dso_local i32 @wqdbg_v(i8*, i32) #1

declare dso_local i64 @waitq_irq_safe(%struct.TYPE_2__*) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @waitq_set_lock(%struct.waitq_set*) #1

declare dso_local i32 @waitq_set_unlock(%struct.waitq_set*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @wq_prepost_iterate(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
