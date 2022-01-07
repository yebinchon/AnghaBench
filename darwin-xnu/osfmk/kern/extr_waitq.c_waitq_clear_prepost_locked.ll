; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_clear_prepost_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_clear_prepost_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i64 }
%struct.wq_prepost = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"invalidate prepost 0x%llx (refcnt:%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waitq_clear_prepost_locked(%struct.waitq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.waitq*, align 8
  %4 = alloca %struct.wq_prepost*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.waitq* %0, %struct.waitq** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.waitq*, %struct.waitq** %3, align 8
  %8 = call i32 @waitq_irq_safe(%struct.waitq* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.waitq*, %struct.waitq** %3, align 8
  %14 = getelementptr inbounds %struct.waitq, %struct.waitq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

18:                                               ; preds = %1
  %19 = load %struct.waitq*, %struct.waitq** %3, align 8
  %20 = getelementptr inbounds %struct.waitq, %struct.waitq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.wq_prepost* @wq_prepost_get(i64 %21)
  store %struct.wq_prepost* %22, %struct.wq_prepost** %4, align 8
  %23 = load %struct.waitq*, %struct.waitq** %3, align 8
  %24 = getelementptr inbounds %struct.waitq, %struct.waitq* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %26 = icmp ne %struct.wq_prepost* %25, null
  br i1 %26, label %27, label %68

27:                                               ; preds = %18
  %28 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %29 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %6, align 8
  %32 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %33 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %37 = call i64 @wqp_refcnt(%struct.wq_prepost* %36)
  %38 = call i32 @wqdbg_v(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %37)
  %39 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %40 = call i32 @wq_prepost_invalidate(%struct.wq_prepost* %39)
  br label %41

41:                                               ; preds = %45, %27
  %42 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %43 = call i64 @wqp_refcnt(%struct.wq_prepost* %42)
  %44 = icmp sgt i64 %43, 1
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = call i32 (...) @disable_preemption()
  %47 = load %struct.waitq*, %struct.waitq** %3, align 8
  %48 = call i32 @waitq_unlock(%struct.waitq* %47)
  store i32 1, i32* %5, align 4
  %49 = call i32 @delay(i32 1)
  %50 = load %struct.waitq*, %struct.waitq** %3, align 8
  %51 = call i32 @waitq_lock(%struct.waitq* %50)
  %52 = call i32 (...) @enable_preemption()
  br label %41

53:                                               ; preds = %41
  %54 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %55 = call i64 @wqp_refcnt(%struct.wq_prepost* %54)
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %59 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %66 = call i32 @wq_prepost_put(%struct.wq_prepost* %65)
  br label %67

67:                                               ; preds = %64, %57, %53
  br label %68

68:                                               ; preds = %67, %18
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %17
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local %struct.wq_prepost* @wq_prepost_get(i64) #1

declare dso_local i32 @wqdbg_v(i8*, i64, i64) #1

declare dso_local i64 @wqp_refcnt(%struct.wq_prepost*) #1

declare dso_local i32 @wq_prepost_invalidate(%struct.wq_prepost*) #1

declare dso_local i32 @disable_preemption(...) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @waitq_lock(%struct.waitq*) #1

declare dso_local i32 @enable_preemption(...) #1

declare dso_local i32 @wq_prepost_put(%struct.wq_prepost*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
