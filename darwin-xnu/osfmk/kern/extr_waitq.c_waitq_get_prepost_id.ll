; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_get_prepost_id.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_get_prepost_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i64 }
%struct.wq_prepost = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.waitq* }

@WQP_WQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @waitq_get_prepost_id(%struct.waitq* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.waitq*, align 8
  %4 = alloca %struct.wq_prepost*, align 8
  %5 = alloca i64, align 8
  store %struct.waitq* %0, %struct.waitq** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.waitq*, %struct.waitq** %3, align 8
  %7 = call i32 @waitq_valid(%struct.waitq* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %80

10:                                               ; preds = %1
  %11 = load %struct.waitq*, %struct.waitq** %3, align 8
  %12 = call i32 @waitq_irq_safe(%struct.waitq* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.waitq*, %struct.waitq** %3, align 8
  %18 = call i32 @waitq_lock(%struct.waitq* %17)
  %19 = load %struct.waitq*, %struct.waitq** %3, align 8
  %20 = call i32 @waitq_valid(%struct.waitq* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %10
  br label %76

23:                                               ; preds = %10
  %24 = load %struct.waitq*, %struct.waitq** %3, align 8
  %25 = getelementptr inbounds %struct.waitq, %struct.waitq* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.waitq*, %struct.waitq** %3, align 8
  %30 = getelementptr inbounds %struct.waitq, %struct.waitq* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %5, align 8
  br label %76

32:                                               ; preds = %23
  %33 = load %struct.waitq*, %struct.waitq** %3, align 8
  %34 = call i32 @waitq_unlock(%struct.waitq* %33)
  %35 = load i32, i32* @WQP_WQ, align 4
  %36 = call %struct.wq_prepost* @wq_prepost_alloc(i32 %35, i32 1)
  store %struct.wq_prepost* %36, %struct.wq_prepost** %4, align 8
  %37 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %38 = icmp ne %struct.wq_prepost* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i64 0, i64* %2, align 8
  br label %80

40:                                               ; preds = %32
  %41 = load %struct.waitq*, %struct.waitq** %3, align 8
  %42 = call i32 @waitq_lock(%struct.waitq* %41)
  %43 = load %struct.waitq*, %struct.waitq** %3, align 8
  %44 = call i32 @waitq_valid(%struct.waitq* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %48 = call i32 @wq_prepost_put(%struct.wq_prepost* %47)
  store i64 0, i64* %5, align 8
  br label %76

49:                                               ; preds = %40
  %50 = load %struct.waitq*, %struct.waitq** %3, align 8
  %51 = getelementptr inbounds %struct.waitq, %struct.waitq* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %56 = call i32 @wq_prepost_put(%struct.wq_prepost* %55)
  %57 = load %struct.waitq*, %struct.waitq** %3, align 8
  %58 = getelementptr inbounds %struct.waitq, %struct.waitq* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %5, align 8
  br label %76

60:                                               ; preds = %49
  %61 = load %struct.waitq*, %struct.waitq** %3, align 8
  %62 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %63 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store %struct.waitq* %61, %struct.waitq** %64, align 8
  %65 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %66 = call i32 @wqp_set_valid(%struct.wq_prepost* %65)
  %67 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %68 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.waitq*, %struct.waitq** %3, align 8
  %73 = getelementptr inbounds %struct.waitq, %struct.waitq* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.wq_prepost*, %struct.wq_prepost** %4, align 8
  %75 = call i32 @wq_prepost_put(%struct.wq_prepost* %74)
  br label %76

76:                                               ; preds = %60, %54, %46, %28, %22
  %77 = load %struct.waitq*, %struct.waitq** %3, align 8
  %78 = call i32 @waitq_unlock(%struct.waitq* %77)
  %79 = load i64, i64* %5, align 8
  store i64 %79, i64* %2, align 8
  br label %80

80:                                               ; preds = %76, %39, %9
  %81 = load i64, i64* %2, align 8
  ret i64 %81
}

declare dso_local i32 @waitq_valid(%struct.waitq*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i32 @waitq_lock(%struct.waitq*) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

declare dso_local %struct.wq_prepost* @wq_prepost_alloc(i32, i32) #1

declare dso_local i32 @wq_prepost_put(%struct.wq_prepost*) #1

declare dso_local i32 @wqp_set_valid(%struct.wq_prepost*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
