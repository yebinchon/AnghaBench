; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_routines.c_ml_nofault_copy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_routines.c_ml_nofault_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ml_nofault_copy(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %60, %3
  %12 = load i64, i64* %6, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %81

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @kvtophys(i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %81

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @kvtophys(i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %81

24:                                               ; preds = %19
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @i386_btop(i64 %25)
  %27 = call i32 @pmap_valid_page(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @i386_btop(i64 %30)
  %32 = call i32 @pmap_valid_page(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %24
  br label %81

35:                                               ; preds = %29
  %36 = load i64, i64* @PAGE_SIZE, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @PAGE_MASK, align 8
  %39 = and i64 %37, %38
  %40 = sub nsw i64 %36, %39
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @PAGE_MASK, align 8
  %45 = and i64 %43, %44
  %46 = sub nsw i64 %42, %45
  %47 = icmp sgt i64 %41, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %35
  %49 = load i64, i64* @PAGE_SIZE, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @PAGE_MASK, align 8
  %52 = and i64 %50, %51
  %53 = sub nsw i64 %49, %52
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %48, %35
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i64, i64* %6, align 8
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @bcopy_phys(i64 %61, i64 %62, i64 %63)
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %4, align 4
  %73 = load i64, i64* %9, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %5, align 4
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %6, align 8
  %80 = sub nsw i64 %79, %78
  store i64 %80, i64* %6, align 8
  br label %11

81:                                               ; preds = %34, %23, %18, %11
  %82 = load i64, i64* %10, align 8
  ret i64 %82
}

declare dso_local i64 @kvtophys(i32) #1

declare dso_local i32 @pmap_valid_page(i32) #1

declare dso_local i32 @i386_btop(i64) #1

declare dso_local i32 @bcopy_phys(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
