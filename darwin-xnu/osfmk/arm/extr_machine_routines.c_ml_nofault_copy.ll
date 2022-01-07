; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_machine_routines.c_ml_nofault_copy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_machine_routines.c_ml_nofault_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ml_nofault_copy(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %60, %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %77

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @kvtophys(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %77

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @kvtophys(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %77

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @trunc_page_64(i32 %25)
  %27 = call i32 @pmap_valid_address(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @trunc_page_64(i32 %30)
  %32 = call i32 @pmap_valid_address(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %24
  br label %77

35:                                               ; preds = %29
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @PAGE_MASK, align 4
  %39 = and i32 %37, %38
  %40 = sub nsw i32 %36, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @PAGE_MASK, align 4
  %45 = and i32 %43, %44
  %46 = sub nsw i32 %42, %45
  %47 = icmp sgt i32 %41, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %35
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @PAGE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = sub nsw i32 %49, %52
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %48, %35
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @bcopy_phys(i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %11

77:                                               ; preds = %34, %23, %18, %11
  %78 = load i32, i32* %10, align 4
  ret i32 %78
}

declare dso_local i32 @kvtophys(i32) #1

declare dso_local i32 @pmap_valid_address(i32) #1

declare dso_local i32 @trunc_page_64(i32) #1

declare dso_local i32 @bcopy_phys(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
