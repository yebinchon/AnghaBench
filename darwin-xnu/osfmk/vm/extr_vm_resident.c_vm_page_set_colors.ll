; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_set_colors.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_set_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vm_clump_shift = common dso_local global i32 0, align 4
@vm_cache_geometry_colors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@DEFAULT_COLORS = common dso_local global i32 0, align 4
@MAX_COLORS = common dso_local global i32 0, align 4
@vm_colors = common dso_local global i32 0, align 4
@vm_color_mask = common dso_local global i32 0, align 4
@COLOR_GROUPS_TO_STEAL = common dso_local global i32 0, align 4
@vm_free_magazine_refill_limit = common dso_local global i32 0, align 4
@real_ncpus = common dso_local global i32 0, align 4
@vm_clump_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vm_page_set_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_page_set_colors() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @vm_clump_shift, align 4
  %4 = load i32, i32* @vm_cache_geometry_colors, align 4
  %5 = ashr i32 %4, %3
  store i32 %5, i32* @vm_cache_geometry_colors, align 4
  %6 = call i64 @PE_parse_boot_argn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %2, i32 4)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %18

10:                                               ; preds = %0
  %11 = load i32, i32* @vm_cache_geometry_colors, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @vm_cache_geometry_colors, align 4
  store i32 %14, i32* %1, align 4
  br label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @DEFAULT_COLORS, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %15, %13
  br label %18

18:                                               ; preds = %17, %8
  %19 = load i32, i32* %1, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 1, i32* %1, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @MAX_COLORS, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @MAX_COLORS, align 4
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = sub i32 %30, 1
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @DEFAULT_COLORS, align 4
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %34, %28
  %37 = load i32, i32* %1, align 4
  store i32 %37, i32* @vm_colors, align 4
  %38 = load i32, i32* %1, align 4
  %39 = sub i32 %38, 1
  store i32 %39, i32* @vm_color_mask, align 4
  %40 = load i32, i32* @vm_colors, align 4
  %41 = load i32, i32* @COLOR_GROUPS_TO_STEAL, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* @vm_free_magazine_refill_limit, align 4
  %43 = load i32, i32* @real_ncpus, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load i32, i32* @vm_clump_size, align 4
  %47 = load i32, i32* @real_ncpus, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* @vm_free_magazine_refill_limit, align 4
  %50 = mul nsw i32 %49, %48
  store i32 %50, i32* @vm_free_magazine_refill_limit, align 4
  br label %51

51:                                               ; preds = %45, %36
  ret void
}

declare dso_local i64 @PE_parse_boot_argn(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
