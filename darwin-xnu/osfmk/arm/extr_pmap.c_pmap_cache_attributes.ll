; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_cache_attributes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_cache_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@io_rgn_start = common dso_local global i64 0, align 8
@io_rgn_end = common dso_local global i64 0, align 8
@pmap_initialized = common dso_local global i32 0, align 4
@gPhysBase = common dso_local global i64 0, align 8
@gPhysSize = common dso_local global i64 0, align 8
@VM_WIMG_DEFAULT = common dso_local global i32 0, align 4
@VM_WIMG_IO = common dso_local global i32 0, align 4
@pp_attr_table = common dso_local global i32* null, align 8
@PP_ATTR_WIMG_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_cache_attributes(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @ptoa(i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @io_rgn_start, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @io_rgn_end, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @pmap_find_io_attr(i64 %18)
  store i32 %19, i32* %2, align 4
  br label %63

20:                                               ; preds = %13, %1
  %21 = load i32, i32* @pmap_initialized, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @gPhysBase, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @gPhysBase, align 8
  %30 = load i64, i64* @gPhysSize, align 8
  %31 = add nsw i64 %29, %30
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @VM_WIMG_DEFAULT, align 4
  store i32 %34, i32* %2, align 4
  br label %63

35:                                               ; preds = %27, %23
  %36 = load i32, i32* @VM_WIMG_IO, align 4
  store i32 %36, i32* %2, align 4
  br label %63

37:                                               ; preds = %20
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @pa_valid(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @VM_WIMG_IO, align 4
  store i32 %42, i32* %2, align 4
  br label %63

43:                                               ; preds = %37
  %44 = load i32, i32* @VM_WIMG_DEFAULT, align 4
  store i32 %44, i32* %6, align 4
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @pa_index(i64 %45)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %5, align 4
  %48 = load i32*, i32** @pp_attr_table, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @PP_ATTR_WIMG_MASK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %43
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @PP_ATTR_WIMG_MASK, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %43
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %41, %35, %33, %17
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @ptoa(i32) #1

declare dso_local i32 @pmap_find_io_attr(i64) #1

declare dso_local i32 @pa_valid(i64) #1

declare dso_local i64 @pa_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
