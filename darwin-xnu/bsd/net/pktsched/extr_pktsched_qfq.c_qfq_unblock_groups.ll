; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_unblock_groups.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_unblock_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_if = type { i32* }
%struct.qfq_group = type { i32 }

@ER = common dso_local global i64 0, align 8
@EB = common dso_local global i32 0, align 4
@IB = common dso_local global i32 0, align 4
@IR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_if*, i32, i32)* @qfq_unblock_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_unblock_groups(%struct.qfq_if* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qfq_if*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qfq_group*, align 8
  store %struct.qfq_if* %0, %struct.qfq_if** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.qfq_if*, %struct.qfq_if** %4, align 8
  %10 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @ER, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i32 @mask_from(i32 %14, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = load %struct.qfq_if*, %struct.qfq_if** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.qfq_group* @qfq_ffs(%struct.qfq_if* %21, i32 %22)
  store %struct.qfq_group* %23, %struct.qfq_group** %8, align 8
  %24 = load %struct.qfq_group*, %struct.qfq_group** %8, align 8
  %25 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @qfq_gt(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %48

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %3
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = shl i64 1, %34
  %36 = sub i64 %35, 1
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load %struct.qfq_if*, %struct.qfq_if** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @EB, align 4
  %41 = load i64, i64* @ER, align 8
  %42 = call i32 @qfq_move_groups(%struct.qfq_if* %38, i32 %39, i32 %40, i64 %41)
  %43 = load %struct.qfq_if*, %struct.qfq_if** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @IB, align 4
  %46 = load i64, i64* @IR, align 8
  %47 = call i32 @qfq_move_groups(%struct.qfq_if* %43, i32 %44, i32 %45, i64 %46)
  br label %48

48:                                               ; preds = %32, %30
  ret void
}

declare dso_local i32 @mask_from(i32, i32) #1

declare dso_local %struct.qfq_group* @qfq_ffs(%struct.qfq_if*, i32) #1

declare dso_local i32 @qfq_gt(i32, i32) #1

declare dso_local i32 @qfq_move_groups(%struct.qfq_if*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
