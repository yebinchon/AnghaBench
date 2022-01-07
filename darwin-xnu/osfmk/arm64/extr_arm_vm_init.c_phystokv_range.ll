; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_arm_vm_init.c_phystokv_range.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_arm_vm_init.c_phystokv_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@PTOV_TABLE_SIZE = common dso_local global i64 0, align 8
@ptov_table = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@gPhysBase = common dso_local global i64 0, align 8
@gVirtBase = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @phystokv_range(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %79, %2
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @PTOV_TABLE_SIZE, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptov_table, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %12, %8
  %20 = phi i1 [ false, %8 ], [ %18, %12 ]
  br i1 %20, label %21, label %82

21:                                               ; preds = %19
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptov_table, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %22, %27
  br i1 %28, label %29, label %78

29:                                               ; preds = %21
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptov_table, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptov_table, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %35, %40
  %42 = icmp slt i64 %30, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %29
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptov_table, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptov_table, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %49, %54
  %56 = sub nsw i64 %48, %55
  store i64 %56, i64* %6, align 8
  %57 = load i64*, i64** %5, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %43
  %62 = load i64, i64* %6, align 8
  %63 = load i64*, i64** %5, align 8
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %61, %43
  %65 = load i64, i64* %4, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptov_table, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %65, %70
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ptov_table, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %71, %76
  store i64 %77, i64* %3, align 8
  br label %101

78:                                               ; preds = %29, %21
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %7, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %7, align 8
  br label %8

82:                                               ; preds = %19
  %83 = load i64, i64* @PAGE_SIZE, align 8
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* @PAGE_MASK, align 8
  %86 = and i64 %84, %85
  %87 = sub nsw i64 %83, %86
  store i64 %87, i64* %6, align 8
  %88 = load i64*, i64** %5, align 8
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load i64, i64* %6, align 8
  %94 = load i64*, i64** %5, align 8
  store i64 %93, i64* %94, align 8
  br label %95

95:                                               ; preds = %92, %82
  %96 = load i64, i64* %4, align 8
  %97 = load i64, i64* @gPhysBase, align 8
  %98 = sub nsw i64 %96, %97
  %99 = load i64, i64* @gVirtBase, align 8
  %100 = add nsw i64 %98, %99
  store i64 %100, i64* %3, align 8
  br label %101

101:                                              ; preds = %95, %64
  %102 = load i64, i64* %3, align 8
  ret i64 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
