; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_osk_ptr_at_pos.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_osk_ptr_at_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32)* @stripes_osk_ptr_at_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripes_osk_ptr_at_pos(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %15, align 8
  %21 = load i32*, i32** %15, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %101

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = udiv i32 %25, 11
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %11, align 4
  %28 = udiv i32 %27, 10
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %32, %24
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %97, %34
  %36 = load i32, i32* %12, align 4
  %37 = icmp ult i32 %36, 44
  br i1 %37, label %38, label %100

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = udiv i32 %39, 11
  %41 = load i32, i32* %11, align 4
  %42 = mul i32 %40, %41
  %43 = uitofp i32 %42 to double
  %44 = fdiv double %43, 1.000000e+01
  %45 = fptosi double %44 to i32
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %10, align 4
  %47 = uitofp i32 %46 to double
  %48 = fdiv double %47, 2.000000e+00
  %49 = load i32, i32* %13, align 4
  %50 = mul nsw i32 11, %49
  %51 = sitofp i32 %50 to double
  %52 = fdiv double %51, 2.000000e+00
  %53 = fsub double %48, %52
  %54 = load i32, i32* %12, align 4
  %55 = urem i32 %54, 11
  %56 = load i32, i32* %13, align 4
  %57 = mul i32 %55, %56
  %58 = uitofp i32 %57 to double
  %59 = fadd double %53, %58
  %60 = fptosi double %59 to i32
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %11, align 4
  %62 = uitofp i32 %61 to double
  %63 = fdiv double %62, 2.000000e+00
  %64 = load i32, i32* %14, align 4
  %65 = sitofp i32 %64 to double
  %66 = fmul double %65, 1.500000e+00
  %67 = fadd double %63, %66
  %68 = load i32, i32* %16, align 4
  %69 = sitofp i32 %68 to double
  %70 = fadd double %67, %69
  %71 = load i32, i32* %14, align 4
  %72 = sitofp i32 %71 to double
  %73 = fsub double %70, %72
  %74 = fptosi double %73 to i32
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %38
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %80, %81
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %78
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %90, %91
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %6, align 4
  br label %101

96:                                               ; preds = %88, %84, %78, %38
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %12, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %35

100:                                              ; preds = %35
  store i32 -1, i32* %6, align 4
  br label %101

101:                                              ; preds = %100, %94, %23
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
