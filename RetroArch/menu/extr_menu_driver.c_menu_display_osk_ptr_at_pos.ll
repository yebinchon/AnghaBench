; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_osk_ptr_at_pos.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_osk_ptr_at_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_display_osk_ptr_at_pos(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = udiv i32 %18, 11
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %11, align 4
  %21 = udiv i32 %20, 10
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %25, %5
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %90, %27
  %29 = load i32, i32* %12, align 4
  %30 = icmp ult i32 %29, 44
  br i1 %30, label %31, label %93

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = udiv i32 %32, 11
  %34 = load i32, i32* %11, align 4
  %35 = mul i32 %33, %34
  %36 = uitofp i32 %35 to double
  %37 = fdiv double %36, 1.000000e+01
  %38 = fptosi double %37 to i32
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %10, align 4
  %40 = uitofp i32 %39 to double
  %41 = fdiv double %40, 2.000000e+00
  %42 = load i32, i32* %13, align 4
  %43 = mul nsw i32 11, %42
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 2.000000e+00
  %46 = fsub double %41, %45
  %47 = load i32, i32* %12, align 4
  %48 = urem i32 %47, 11
  %49 = load i32, i32* %13, align 4
  %50 = mul i32 %48, %49
  %51 = uitofp i32 %50 to double
  %52 = fadd double %46, %51
  %53 = fptosi double %52 to i32
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %11, align 4
  %55 = uitofp i32 %54 to double
  %56 = fdiv double %55, 2.000000e+00
  %57 = load i32, i32* %14, align 4
  %58 = sitofp i32 %57 to double
  %59 = fmul double %58, 1.500000e+00
  %60 = fadd double %56, %59
  %61 = load i32, i32* %15, align 4
  %62 = sitofp i32 %61 to double
  %63 = fadd double %60, %62
  %64 = load i32, i32* %14, align 4
  %65 = sitofp i32 %64 to double
  %66 = fsub double %63, %65
  %67 = fptosi double %66 to i32
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %31
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %73, %74
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %17, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %83, %84
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %6, align 4
  br label %94

89:                                               ; preds = %81, %77, %71, %31
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %12, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %28

93:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %87
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
