; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_kasan.c_kasan_traverse_mappings.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_kasan.c_kasan_traverse_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MIN_KERNEL_AND_KEXT_ADDRESS = common dso_local global i32 0, align 4
@VM_MAX_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@HW_PAGE_MASK = common dso_local global i32 0, align 4
@HW_PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kasan_traverse_mappings(i32 (i64, i64, i8*)* %0, i8* %1) #0 {
  %3 = alloca i32 (i64, i64, i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 (i64, i64, i8*)* %0, i32 (i64, i64, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @VM_MIN_KERNEL_AND_KEXT_ADDRESS, align 4
  %11 = call i32 @SHADOW_FOR_ADDRESS(i32 %10)
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %5, align 8
  %13 = load i32, i32* @VM_MAX_KERNEL_ADDRESS, align 4
  %14 = call i32 @SHADOW_FOR_ADDRESS(i32 %13)
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* @HW_PAGE_MASK, align 4
  %18 = call i64 @vm_map_trunc_page(i64 %16, i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @HW_PAGE_MASK, align 4
  %21 = call i64 @vm_map_round_page(i64 %19, i32 %20)
  store i64 %21, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %54, %2
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %23
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @kasan_is_shadow_mapped(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i64, i64* %9, align 8
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @HW_PAGE_SIZE, align 8
  %39 = add i64 %37, %38
  store i64 %39, i64* %8, align 8
  br label %53

40:                                               ; preds = %27
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32 (i64, i64, i8*)*, i32 (i64, i64, i8*)** %3, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 %47(i64 %48, i64 %49, i8* %50)
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %52

52:                                               ; preds = %46, %43, %40
  br label %53

53:                                               ; preds = %52, %36
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* @HW_PAGE_SIZE, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %9, align 8
  br label %23

58:                                               ; preds = %23
  %59 = load i64, i64* %7, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32 (i64, i64, i8*)*, i32 (i64, i64, i8*)** %3, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 %65(i64 %66, i64 %67, i8* %68)
  br label %70

70:                                               ; preds = %64, %61, %58
  ret i32 0
}

declare dso_local i32 @SHADOW_FOR_ADDRESS(i32) #1

declare dso_local i64 @vm_map_trunc_page(i64, i32) #1

declare dso_local i64 @vm_map_round_page(i64, i32) #1

declare dso_local i64 @kasan_is_shadow_mapped(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
