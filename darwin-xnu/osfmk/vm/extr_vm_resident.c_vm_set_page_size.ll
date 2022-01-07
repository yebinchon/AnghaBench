; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_set_page_size.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_set_page_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@page_size = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@page_mask = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@page_shift = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"vm_set_page_size: page size not a power of two\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_set_page_size() #0 {
  %1 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %1, i32* @page_size, align 4
  %2 = load i32, i32* @PAGE_MASK, align 4
  store i32 %2, i32* @page_mask, align 4
  %3 = load i32, i32* @PAGE_SHIFT, align 4
  store i32 %3, i32* @page_shift, align 4
  %4 = load i32, i32* @page_mask, align 4
  %5 = load i32, i32* @page_size, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  store i32 0, i32* @page_shift, align 4
  br label %11

11:                                               ; preds = %18, %10
  %12 = load i32, i32* @page_shift, align 4
  %13 = shl i32 1, %12
  %14 = load i32, i32* @page_size, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %21

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* @page_shift, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* @page_shift, align 4
  br label %11

21:                                               ; preds = %16
  ret void
}

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
