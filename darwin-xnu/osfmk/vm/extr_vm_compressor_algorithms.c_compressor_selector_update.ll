; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_algorithms.c_compressor_selector_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_algorithms.c_compressor_selector_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i64 }

@compressor_stats = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@vmcstate = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@vmctune = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @compressor_selector_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compressor_selector_update(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @compressor_stats, i32 0, i32 4), align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @compressor_stats, i32 0, i32 4), align 4
  %10 = call i32 @VM_COMPRESSOR_STAT(i32 %8)
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @compressor_stats, i32 0, i32 0), align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @compressor_stats, i32 0, i32 0), align 4
  %17 = call i32 @VM_COMPRESSOR_STAT(i32 %16)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @compressor_stats, i32 0, i32 3), align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @compressor_stats, i32 0, i32 3), align 4
  %20 = call i32 @VM_COMPRESSOR_STAT(i32 %18)
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 2), align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 2), align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 4), align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 4), align 4
  %25 = call i32 @VM_COMPRESSOR_STAT(i32 %23)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 0), align 8
  br label %96

26:                                               ; preds = %3
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 2), align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @compressor_stats, i32 0, i32 0), align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @compressor_stats, i32 0, i32 0), align 4
  %30 = call i32 @VM_COMPRESSOR_STAT(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmctune, i32 0, i32 0), align 8
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 0), align 8
  br label %42

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 0), align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 0), align 8
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %95

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp sgt i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @__probable(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @compressor_stats, i32 0, i32 2), align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @compressor_stats, i32 0, i32 2), align 4
  %62 = call i32 @VM_COMPRESSOR_STAT(i32 %61)
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmctune, i32 0, i32 1), align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 0), align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 0), align 8
  br label %81

69:                                               ; preds = %52
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmctune, i32 0, i32 2), align 8
  %72 = icmp sle i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 2), align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 2), align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 3), align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 3), align 8
  %78 = call i32 @VM_COMPRESSOR_STAT(i32 %76)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 0), align 8
  br label %80

79:                                               ; preds = %69
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 0), align 8
  br label %80

80:                                               ; preds = %79, %73
  br label %81

81:                                               ; preds = %80, %66
  br label %94

82:                                               ; preds = %45
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %6, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @compressor_stats, i32 0, i32 1), align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @compressor_stats, i32 0, i32 1), align 4
  %88 = call i32 @VM_COMPRESSOR_STAT(i32 %87)
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 2), align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 2), align 8
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 1), align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 1), align 8
  %93 = call i32 @VM_COMPRESSOR_STAT(i32 %91)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vmcstate, i32 0, i32 0), align 8
  br label %94

94:                                               ; preds = %82, %81
  br label %95

95:                                               ; preds = %94, %42
  br label %96

96:                                               ; preds = %95, %13
  ret void
}

declare dso_local i32 @VM_COMPRESSOR_STAT(i32) #1

declare dso_local i64 @__probable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
