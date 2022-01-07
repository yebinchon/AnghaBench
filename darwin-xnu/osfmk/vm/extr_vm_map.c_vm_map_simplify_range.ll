; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_simplify_range.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_simplify_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64)* @vm_map_simplify_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_map_simplify_range(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %59

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @VM_MAP_PAGE_MASK(i32 %14)
  %16 = call i64 @vm_map_trunc_page(i64 %13, i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @VM_MAP_PAGE_MASK(i32 %18)
  %20 = call i64 @vm_map_round_page(i64 %17, i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @vm_map_lookup_entry(i32 %21, i64 %22, %struct.TYPE_6__** %7)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %12
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call %struct.TYPE_6__* @vm_map_to_entry(i32 %27)
  %29 = icmp eq %struct.TYPE_6__* %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = call %struct.TYPE_6__* @vm_map_first_entry(i32 %31)
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %7, align 8
  br label %37

33:                                               ; preds = %25
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %7, align 8
  br label %37

37:                                               ; preds = %33, %30
  br label %38

38:                                               ; preds = %37, %12
  br label %39

39:                                               ; preds = %52, %38
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call %struct.TYPE_6__* @vm_map_to_entry(i32 %41)
  %43 = icmp ne %struct.TYPE_6__* %40, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp sle i64 %47, %48
  br label %50

50:                                               ; preds = %44, %39
  %51 = phi i1 [ false, %39 ], [ %49, %44 ]
  br i1 %51, label %52, label %59

52:                                               ; preds = %50
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = call i32 @vm_map_simplify_entry(i32 %53, %struct.TYPE_6__* %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %7, align 8
  br label %39

59:                                               ; preds = %11, %50
  ret void
}

declare dso_local i64 @vm_map_trunc_page(i64, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(i32) #1

declare dso_local i64 @vm_map_round_page(i64, i32) #1

declare dso_local i32 @vm_map_lookup_entry(i32, i64, %struct.TYPE_6__**) #1

declare dso_local %struct.TYPE_6__* @vm_map_to_entry(i32) #1

declare dso_local %struct.TYPE_6__* @vm_map_first_entry(i32) #1

declare dso_local i32 @vm_map_simplify_entry(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
