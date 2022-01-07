; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_make_eligible.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_make_eligible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_if = type { i32 }

@QFQ_MIN_SLOT_SHIFT = common dso_local global i32 0, align 4
@IR = common dso_local global i32 0, align 4
@ER = common dso_local global i32 0, align 4
@IB = common dso_local global i32 0, align 4
@EB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_if*, i32)* @qfq_make_eligible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_make_eligible(%struct.qfq_if* %0, i32 %1) #0 {
  %3 = alloca %struct.qfq_if*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qfq_if* %0, %struct.qfq_if** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %9 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @QFQ_MIN_SLOT_SHIFT, align 4
  %12 = ashr i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @QFQ_MIN_SLOT_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = xor i32 %20, %21
  %23 = call i64 @__fls(i32 %22)
  %24 = shl i64 2, %23
  %25 = sub i64 %24, 1
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @IR, align 4
  %30 = load i32, i32* @ER, align 4
  %31 = call i32 @qfq_move_groups(%struct.qfq_if* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @IB, align 4
  %35 = load i32, i32* @EB, align 4
  %36 = call i32 @qfq_move_groups(%struct.qfq_if* %32, i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %19, %2
  ret void
}

declare dso_local i64 @__fls(i32) #1

declare dso_local i32 @qfq_move_groups(%struct.qfq_if*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
