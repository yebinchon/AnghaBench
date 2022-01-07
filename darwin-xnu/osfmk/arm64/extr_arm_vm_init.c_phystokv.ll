; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_arm_vm_init.c_phystokv.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_arm_vm_init.c_phystokv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@PTOV_TABLE_SIZE = common dso_local global i64 0, align 8
@ptov_table = common dso_local global %struct.TYPE_2__* null, align 8
@gPhysBase = common dso_local global i64 0, align 8
@gVirtBase = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @phystokv(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %55, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @PTOV_TABLE_SIZE, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptov_table, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %9, %5
  %17 = phi i1 [ false, %5 ], [ %15, %9 ]
  br i1 %17, label %18, label %58

18:                                               ; preds = %16
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptov_table, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %19, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %18
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptov_table, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptov_table, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %32, %37
  %39 = icmp slt i64 %27, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %26
  %41 = load i64, i64* %3, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptov_table, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %41, %46
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptov_table, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %47, %52
  store i64 %53, i64* %2, align 8
  br label %64

54:                                               ; preds = %26, %18
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %4, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %4, align 8
  br label %5

58:                                               ; preds = %16
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* @gPhysBase, align 8
  %61 = sub nsw i64 %59, %60
  %62 = load i64, i64* @gVirtBase, align 8
  %63 = add nsw i64 %61, %62
  store i64 %63, i64* %2, align 8
  br label %64

64:                                               ; preds = %58, %40
  %65 = load i64, i64* %2, align 8
  ret i64 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
