; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/commpage/extr_commpage.c_commpage_is_in_pfz64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/commpage/extr_commpage.c_commpage_is_in_pfz64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@commpage_text64_location = common dso_local global i64 0, align 8
@_COMM_TEXT_PFZ_START_OFFSET = common dso_local global i64 0, align 8
@_COMM_TEXT_PFZ_END_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @commpage_is_in_pfz64(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @commpage_text64_location, align 8
  %6 = load i64, i64* @_COMM_TEXT_PFZ_START_OFFSET, align 8
  %7 = add nsw i64 %5, %6
  %8 = icmp sge i64 %4, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @commpage_text64_location, align 8
  %12 = load i64, i64* @_COMM_TEXT_PFZ_END_OFFSET, align 8
  %13 = add nsw i64 %11, %12
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %17

16:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
