; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_ff.c_f_setcp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_ff.c_f_setcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f_setcp.validcp = internal constant [21 x i32] [i32 437, i32 720, i32 737, i32 771, i32 775, i32 850, i32 852, i32 857, i32 860, i32 861, i32 862, i32 863, i32 864, i32 865, i32 866, i32 869, i32 932, i32 936, i32 949, i32 950, i32 0], align 16
@f_setcp.tables = internal constant [21 x i32*] [i32* inttoptr (i64 147 to i32*), i32* inttoptr (i64 146 to i32*), i32* inttoptr (i64 145 to i32*), i32* inttoptr (i64 144 to i32*), i32* inttoptr (i64 143 to i32*), i32* inttoptr (i64 142 to i32*), i32* inttoptr (i64 141 to i32*), i32* inttoptr (i64 140 to i32*), i32* inttoptr (i64 139 to i32*), i32* inttoptr (i64 138 to i32*), i32* inttoptr (i64 137 to i32*), i32* inttoptr (i64 136 to i32*), i32* inttoptr (i64 135 to i32*), i32* inttoptr (i64 134 to i32*), i32* inttoptr (i64 133 to i32*), i32* inttoptr (i64 132 to i32*), i32* inttoptr (i64 131 to i32*), i32* inttoptr (i64 130 to i32*), i32* inttoptr (i64 129 to i32*), i32* inttoptr (i64 128 to i32*), i32* null], align 16
@FR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@CodePage = common dso_local global i32 0, align 4
@ExCvt = common dso_local global i32* null, align 8
@DbcTbl = common dso_local global i32* null, align 8
@FR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_setcp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i64, i64* %4, align 8
  %7 = getelementptr inbounds [21 x i32], [21 x i32]* @f_setcp.validcp, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds [21 x i32], [21 x i32]* @f_setcp.validcp, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %13, %14
  br label %16

16:                                               ; preds = %10, %5
  %17 = phi i1 [ false, %5 ], [ %15, %10 ]
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %18
  %20 = load i64, i64* %4, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %4, align 8
  br label %5

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds [21 x i32], [21 x i32]* @f_setcp.validcp, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @FR_INVALID_PARAMETER, align 4
  store i32 %29, i32* %2, align 4
  br label %44

30:                                               ; preds = %22
  %31 = load i32, i32* %3, align 4
  store i32 %31, i32* @CodePage, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp sge i32 %32, 900
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  store i32* null, i32** @ExCvt, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds [21 x i32*], [21 x i32*]* @f_setcp.tables, i64 0, i64 %35
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** @DbcTbl, align 8
  br label %42

38:                                               ; preds = %30
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds [21 x i32*], [21 x i32*]* @f_setcp.tables, i64 0, i64 %39
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** @ExCvt, align 8
  store i32* null, i32** @DbcTbl, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i32, i32* @FR_OK, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %28
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
