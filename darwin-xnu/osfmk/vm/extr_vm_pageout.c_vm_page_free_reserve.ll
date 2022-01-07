; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_page_free_reserve.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_page_free_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@VM_CONFIG_COMPRESSOR_IS_PRESENT = common dso_local global i64 0, align 8
@vm_page_free_reserved = common dso_local global i64 0, align 8
@COMPRESSOR_FREE_RESERVED_LIMIT = common dso_local global i64 0, align 8
@VM_PAGE_FREE_RESERVED_LIMIT = common dso_local global i64 0, align 8
@vm_pageout_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@vm_page_free_min = common dso_local global i64 0, align 8
@VM_PAGE_FREE_MIN_LIMIT = common dso_local global i64 0, align 8
@vm_page_free_target = common dso_local global i64 0, align 8
@VM_PAGE_FREE_TARGET_LIMIT = common dso_local global i64 0, align 8
@vm_page_throttle_limit = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_free_reserve(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @VM_CONFIG_COMPRESSOR_IS_PRESENT, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = load i64, i64* @vm_page_free_reserved, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %7, %9
  %11 = load i64, i64* @COMPRESSOR_FREE_RESERVED_LIMIT, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i64, i64* @VM_PAGE_FREE_RESERVED_LIMIT, align 8
  %14 = load i64, i64* @COMPRESSOR_FREE_RESERVED_LIMIT, align 8
  %15 = add nsw i64 %13, %14
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = load i64, i64* @VM_PAGE_FREE_RESERVED_LIMIT, align 8
  %19 = load i64, i64* @COMPRESSOR_FREE_RESERVED_LIMIT, align 8
  %20 = add nsw i64 %18, %19
  store i64 %20, i64* @vm_page_free_reserved, align 8
  br label %28

21:                                               ; preds = %6
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @COMPRESSOR_FREE_RESERVED_LIMIT, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i64, i64* @vm_page_free_reserved, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* @vm_page_free_reserved, align 8
  br label %28

28:                                               ; preds = %21, %17
  br label %44

29:                                               ; preds = %1
  %30 = load i64, i64* @vm_page_free_reserved, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load i64, i64* @VM_PAGE_FREE_RESERVED_LIMIT, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i64, i64* @VM_PAGE_FREE_RESERVED_LIMIT, align 8
  store i64 %37, i64* @vm_page_free_reserved, align 8
  br label %43

38:                                               ; preds = %29
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* @vm_page_free_reserved, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* @vm_page_free_reserved, align 8
  br label %43

43:                                               ; preds = %38, %36
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_pageout_state, i32 0, i32 0), align 8
  %46 = load i64, i64* @vm_page_free_reserved, align 8
  %47 = sub nsw i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %3, align 4
  %49 = load i64, i64* @vm_page_free_reserved, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i64 @VM_PAGE_FREE_MIN(i32 %50)
  %52 = add nsw i64 %49, %51
  store i64 %52, i64* @vm_page_free_min, align 8
  %53 = load i64, i64* @vm_page_free_min, align 8
  %54 = load i64, i64* @VM_PAGE_FREE_MIN_LIMIT, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i64, i64* @VM_PAGE_FREE_MIN_LIMIT, align 8
  store i64 %57, i64* @vm_page_free_min, align 8
  br label %58

58:                                               ; preds = %56, %44
  %59 = load i64, i64* @vm_page_free_reserved, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i64 @VM_PAGE_FREE_TARGET(i32 %60)
  %62 = add nsw i64 %59, %61
  store i64 %62, i64* @vm_page_free_target, align 8
  %63 = load i64, i64* @vm_page_free_target, align 8
  %64 = load i64, i64* @VM_PAGE_FREE_TARGET_LIMIT, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i64, i64* @VM_PAGE_FREE_TARGET_LIMIT, align 8
  store i64 %67, i64* @vm_page_free_target, align 8
  br label %68

68:                                               ; preds = %66, %58
  %69 = load i64, i64* @vm_page_free_target, align 8
  %70 = load i64, i64* @vm_page_free_min, align 8
  %71 = add nsw i64 %70, 5
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i64, i64* @vm_page_free_min, align 8
  %75 = add nsw i64 %74, 5
  store i64 %75, i64* @vm_page_free_target, align 8
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i64, i64* @vm_page_free_target, align 8
  %78 = load i64, i64* @vm_page_free_target, align 8
  %79 = sdiv i64 %78, 2
  %80 = sub nsw i64 %77, %79
  store i64 %80, i64* @vm_page_throttle_limit, align 8
  ret void
}

declare dso_local i64 @VM_PAGE_FREE_MIN(i32) #1

declare dso_local i64 @VM_PAGE_FREE_TARGET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
