; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/ml/i386/extr_kdp_x86_common.c_kdp_machine_phys_write.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/ml/i386/extr_kdp_x86_common.c_kdp_machine_phys_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@KDP_CURRENT_LCPU = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kdp_machine_phys_write(%struct.TYPE_4__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @KDP_CURRENT_LCPU, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8
  %28 = call i64 (...) @cpu_number()
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @kdp_x86_xcpu_invoke(i64 %31, i32 ptrtoint (i64 (%struct.TYPE_4__*, i64, i64)* @kdp_machine_phys_write to i32), %struct.TYPE_4__* %32, i64 %33)
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %4, align 8
  br label %100

36:                                               ; preds = %26, %3
  %37 = load i64, i64* %6, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = load i64, i64* %9, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %84, %36
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %94

46:                                               ; preds = %43
  %47 = load i32, i32* @kernel_pmap, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @kdp_vtophys(i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %95

52:                                               ; preds = %46
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @PAGE_MASK, align 4
  %56 = and i32 %54, %55
  %57 = sub i32 %53, %56
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @PAGE_MASK, align 4
  %61 = and i32 %59, %60
  %62 = sub i32 %58, %61
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %14, align 4
  br label %70

68:                                               ; preds = %52
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i64, i64* @EFAULT, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i64 @ml_copy_phys(i32 %78, i32 %79, i32 %80)
  %82 = icmp eq i64 %77, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %95

84:                                               ; preds = %76
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %10, align 4
  %87 = add i32 %86, %85
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %12, align 4
  %90 = add i32 %89, %88
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %13, align 4
  %93 = sub i32 %92, %91
  store i32 %93, i32* %13, align 4
  br label %43

94:                                               ; preds = %43
  br label %95

95:                                               ; preds = %94, %83, %51
  %96 = load i64, i64* %9, align 8
  %97 = load i32, i32* %13, align 4
  %98 = zext i32 %97 to i64
  %99 = sub nsw i64 %96, %98
  store i64 %99, i64* %4, align 8
  br label %100

100:                                              ; preds = %95, %30
  %101 = load i64, i64* %4, align 8
  ret i64 %101
}

declare dso_local i64 @cpu_number(...) #1

declare dso_local i32 @kdp_x86_xcpu_invoke(i64, i32, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @kdp_vtophys(i32, i32) #1

declare dso_local i64 @ml_copy_phys(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
