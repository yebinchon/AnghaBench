; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mtrr.c_var_range_overlap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mtrr.c_var_range_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@IA32_MTRR_PHYSBASE_MASK = common dso_local global i32 0, align 4
@IA32_MTRR_PHYSBASE_TYPE = common dso_local global i32 0, align 4
@MTRR_TYPE_UNCACHEABLE = common dso_local global i64 0, align 8
@MTRR_TYPE_WRITEBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i64)* @var_range_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @var_range_overlap(%struct.TYPE_3__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IA32_MTRR_PHYSBASE_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IA32_MTRR_PHYSBASE_TYPE, align 4
  %22 = and i32 %20, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %11, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @MASK_TO_LEN(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %33, %34
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %47, label %37

37:                                               ; preds = %31, %4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %90

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %43, %44
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %90

47:                                               ; preds = %41, %31
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* %12, align 4
  br label %89

60:                                               ; preds = %55, %51, %47
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* @MTRR_TYPE_UNCACHEABLE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @MTRR_TYPE_UNCACHEABLE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %88

69:                                               ; preds = %64, %60
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @MTRR_TYPE_UNCACHEABLE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* @MTRR_TYPE_WRITEBACK, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %85, label %77

77:                                               ; preds = %73, %69
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* @MTRR_TYPE_WRITEBACK, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @MTRR_TYPE_UNCACHEABLE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %73
  br label %87

86:                                               ; preds = %81, %77
  store i32 -1, i32* %12, align 4
  br label %87

87:                                               ; preds = %86, %85
  br label %88

88:                                               ; preds = %87, %68
  br label %89

89:                                               ; preds = %88, %59
  br label %90

90:                                               ; preds = %89, %41, %37
  %91 = load i32, i32* %12, align 4
  ret i32 %91
}

declare dso_local i32 @MASK_TO_LEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
