; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_wire_and_extract_external.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_wire_and_extract_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_map_wire_and_extract_external(i32 %0, i64 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @VM_MAP_PAGE_SIZE(i32 %15)
  %17 = add nsw i64 %14, %16
  %18 = load i32, i32* %8, align 4
  %19 = call i32 (...) @vm_tag_bt()
  %20 = load i32, i32* %9, align 4
  %21 = load i64*, i64** %10, align 8
  %22 = call i64 @vm_map_wire_nested(i32 %12, i64 %13, i64 %17, i32 %18, i32 %19, i32 %20, i32 0, i32 0, i64* %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @KERN_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load i64*, i64** %10, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64*, i64** %10, align 8
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %29, %26, %5
  %32 = load i64, i64* %11, align 8
  ret i64 %32
}

declare dso_local i64 @vm_map_wire_nested(i32, i64, i64, i32, i32, i32, i32, i32, i64*) #1

declare dso_local i64 @VM_MAP_PAGE_SIZE(i32) #1

declare dso_local i32 @vm_tag_bt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
