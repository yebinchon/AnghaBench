; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wqset_iterate_prepost_cb.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wqset_iterate_prepost_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq_set = type { i32 }
%struct.wq_prepost = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.waitq = type { i32 }
%struct.wq_it_ctx = type { i32 (i32, %struct.waitq.0*, %struct.waitq_set.1*)*, i32 }
%struct.waitq.0 = type opaque
%struct.waitq_set.1 = type opaque

@WQ_ITERATE_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"dropped set:%p lock waiting for wqp:%p (0x%llx -> wq:%p)\00", align 1
@WQ_ITERATE_DROPPED = common dso_local global i32 0, align 4
@WQ_ITERATE_BREAK_KEEP_LOCKED = common dso_local global i32 0, align 4
@WQ_ITERATE_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.waitq_set*, i8*, %struct.wq_prepost*, %struct.waitq*)* @wqset_iterate_prepost_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wqset_iterate_prepost_cb(%struct.waitq_set* %0, i8* %1, %struct.wq_prepost* %2, %struct.waitq* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.waitq_set*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wq_prepost*, align 8
  %9 = alloca %struct.waitq*, align 8
  %10 = alloca %struct.wq_it_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.waitq_set* %0, %struct.waitq_set** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.wq_prepost* %2, %struct.wq_prepost** %8, align 8
  store %struct.waitq* %3, %struct.waitq** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.wq_it_ctx*
  store %struct.wq_it_ctx* %14, %struct.wq_it_ctx** %10, align 8
  %15 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %16 = load %struct.waitq*, %struct.waitq** %9, align 8
  %17 = call i32 @waitq_irq_safe(%struct.waitq* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.waitq*, %struct.waitq** %9, align 8
  %23 = call i64 @waitq_lock_try(%struct.waitq* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %60

26:                                               ; preds = %4
  %27 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %28 = call i32 @wqp_is_valid(%struct.wq_prepost* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @WQ_ITERATE_RESTART, align 4
  store i32 %31, i32* %5, align 4
  br label %89

32:                                               ; preds = %26
  %33 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %34 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  %37 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %38 = call i32 @wq_prepost_put(%struct.wq_prepost* %37)
  %39 = load %struct.waitq_set*, %struct.waitq_set** %6, align 8
  %40 = call i32 @waitq_set_unlock(%struct.waitq_set* %39)
  %41 = load %struct.waitq_set*, %struct.waitq_set** %6, align 8
  %42 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %43 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %44 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.waitq*, %struct.waitq** %9, align 8
  %48 = call i32 @wqdbg_v(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), %struct.waitq_set* %41, %struct.wq_prepost* %42, i32 %46, %struct.waitq* %47)
  %49 = call i32 @delay(i32 1)
  %50 = load %struct.waitq_set*, %struct.waitq_set** %6, align 8
  %51 = call i32 @waitq_set_lock(%struct.waitq_set* %50)
  %52 = load i32, i32* %11, align 4
  %53 = call %struct.wq_prepost* @wq_prepost_get(i32 %52)
  store %struct.wq_prepost* %53, %struct.wq_prepost** %8, align 8
  %54 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %55 = icmp ne %struct.wq_prepost* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %32
  %57 = load i32, i32* @WQ_ITERATE_DROPPED, align 4
  store i32 %57, i32* %5, align 4
  br label %89

58:                                               ; preds = %32
  %59 = load i32, i32* @WQ_ITERATE_RESTART, align 4
  store i32 %59, i32* %5, align 4
  br label %89

60:                                               ; preds = %25
  %61 = load %struct.wq_prepost*, %struct.wq_prepost** %8, align 8
  %62 = call i32 @wqp_is_valid(%struct.wq_prepost* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @WQ_ITERATE_RESTART, align 4
  store i32 %65, i32* %12, align 4
  br label %84

66:                                               ; preds = %60
  %67 = load %struct.wq_it_ctx*, %struct.wq_it_ctx** %10, align 8
  %68 = getelementptr inbounds %struct.wq_it_ctx, %struct.wq_it_ctx* %67, i32 0, i32 0
  %69 = load i32 (i32, %struct.waitq.0*, %struct.waitq_set.1*)*, i32 (i32, %struct.waitq.0*, %struct.waitq_set.1*)** %68, align 8
  %70 = load %struct.wq_it_ctx*, %struct.wq_it_ctx** %10, align 8
  %71 = getelementptr inbounds %struct.wq_it_ctx, %struct.wq_it_ctx* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.waitq*, %struct.waitq** %9, align 8
  %74 = bitcast %struct.waitq* %73 to %struct.waitq.0*
  %75 = load %struct.waitq_set*, %struct.waitq_set** %6, align 8
  %76 = bitcast %struct.waitq_set* %75 to %struct.waitq_set.1*
  %77 = call i32 %69(i32 %72, %struct.waitq.0* %74, %struct.waitq_set.1* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @WQ_ITERATE_BREAK_KEEP_LOCKED, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %66
  %82 = load i32, i32* @WQ_ITERATE_BREAK, align 4
  store i32 %82, i32* %12, align 4
  br label %87

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %83, %64
  %85 = load %struct.waitq*, %struct.waitq** %9, align 8
  %86 = call i32 @waitq_unlock(%struct.waitq* %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %58, %56, %30
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i64 @waitq_lock_try(%struct.waitq*) #1

declare dso_local i32 @wqp_is_valid(%struct.wq_prepost*) #1

declare dso_local i32 @wq_prepost_put(%struct.wq_prepost*) #1

declare dso_local i32 @waitq_set_unlock(%struct.waitq_set*) #1

declare dso_local i32 @wqdbg_v(i8*, %struct.waitq_set*, %struct.wq_prepost*, i32, %struct.waitq*) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @waitq_set_lock(%struct.waitq_set*) #1

declare dso_local %struct.wq_prepost* @wq_prepost_get(i32) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
