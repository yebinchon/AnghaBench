; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/ml/i386/extr_kdp_x86_common.c_kdp_machine_phys_read.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/ml/i386/extr_kdp_x86_common.c_kdp_machine_phys_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@KDP_CURRENT_LCPU = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kdp_machine_phys_read(%struct.TYPE_4__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
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
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @KDP_CURRENT_LCPU, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %3
  %28 = load i64, i64* %7, align 8
  %29 = call i64 (...) @cpu_number()
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @kdp_x86_xcpu_invoke(i64 %32, i32 ptrtoint (i64 (%struct.TYPE_4__*, i64, i64)* @kdp_machine_phys_read to i32), %struct.TYPE_4__* %33, i64 %34)
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %4, align 8
  br label %97

37:                                               ; preds = %27, %3
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %12, align 8
  br label %40

40:                                               ; preds = %82, %37
  %41 = load i64, i64* %13, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %92

43:                                               ; preds = %40
  %44 = load i32, i32* @kernel_pmap, align 4
  %45 = load i64, i64* %10, align 8
  %46 = call i64 @kdp_vtophys(i32 %44, i64 %45)
  store i64 %46, i64* %11, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %93

49:                                               ; preds = %43
  %50 = load i64, i64* @PAGE_SIZE, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @PAGE_MASK, align 8
  %53 = and i64 %51, %52
  %54 = sub nsw i64 %50, %53
  store i64 %54, i64* %15, align 8
  %55 = load i64, i64* @PAGE_SIZE, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @PAGE_MASK, align 8
  %58 = and i64 %56, %57
  %59 = sub nsw i64 %55, %58
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* %16, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %49
  %64 = load i64, i64* %16, align 8
  store i64 %64, i64* %14, align 8
  br label %67

65:                                               ; preds = %49
  %66 = load i64, i64* %15, align 8
  store i64 %66, i64* %14, align 8
  br label %67

67:                                               ; preds = %65, %63
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* %13, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i64, i64* %13, align 8
  store i64 %72, i64* %14, align 8
  br label %73

73:                                               ; preds = %71, %67
  %74 = load i64, i64* @EFAULT, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %14, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i64 @ml_copy_phys(i64 %75, i64 %76, i32 %78)
  %80 = icmp eq i64 %74, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %93

82:                                               ; preds = %73
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* %12, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* %10, align 8
  %88 = add nsw i64 %87, %86
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %14, align 8
  %90 = load i64, i64* %13, align 8
  %91 = sub nsw i64 %90, %89
  store i64 %91, i64* %13, align 8
  br label %40

92:                                               ; preds = %40
  br label %93

93:                                               ; preds = %92, %81, %48
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* %13, align 8
  %96 = sub nsw i64 %94, %95
  store i64 %96, i64* %4, align 8
  br label %97

97:                                               ; preds = %93, %31
  %98 = load i64, i64* %4, align 8
  ret i64 %98
}

declare dso_local i64 @cpu_number(...) #1

declare dso_local i32 @kdp_x86_xcpu_invoke(i64, i32, %struct.TYPE_4__*, i64) #1

declare dso_local i64 @kdp_vtophys(i32, i64) #1

declare dso_local i64 @ml_copy_phys(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
