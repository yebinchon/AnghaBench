; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_copy_validate_size.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_copy_validate_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@VM_MAP_COPY_NULL = common dso_local global %struct.TYPE_4__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_copy_validate_size(i32 %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @VM_MAP_COPY_NULL, align 8
  %12 = icmp eq %struct.TYPE_4__* %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %4, align 4
  br label %50

15:                                               ; preds = %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %47 [
    i32 128, label %24
    i32 129, label %24
    i32 130, label %31
  ]

24:                                               ; preds = %15, %15
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %4, align 4
  br label %50

30:                                               ; preds = %24
  br label %48

31:                                               ; preds = %15
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @VM_MAP_PAGE_MASK(i32 %38)
  %40 = call i32 @vm_map_round_page(i32 %37, i32 %39)
  %41 = icmp sle i32 %36, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %4, align 4
  br label %50

46:                                               ; preds = %35, %31
  br label %48

47:                                               ; preds = %15
  br label %48

48:                                               ; preds = %47, %46, %30
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %42, %28, %13
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @vm_map_round_page(i32, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
