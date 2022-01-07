; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_pmap_find_phys.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_pmap_find_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@PD_ENTRY_NULL = common dso_local global i32* null, align 8
@PTE_PS = common dso_local global i32 0, align 4
@PT_ENTRY_NULL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pmap_find_phys(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = call i32 @is_ept_pmap(%struct.TYPE_6__* %11)
  store i32 %12, i32* %10, align 4
  %13 = call i32 (...) @mp_disable_preemption()
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %67

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32* @pmap_pde(%struct.TYPE_6__* %20, i32 %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** @PD_ENTRY_NULL, align 8
  %25 = icmp ne i32* %23, %24
  br i1 %25, label %26, label %66

26:                                               ; preds = %19
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @PTE_VALID_MASK(i32 %29)
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @PTE_PS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @pte_to_pa(i32 %39)
  %41 = call i64 @i386_btop(i32 %40)
  store i64 %41, i64* %7, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @ptenum(i32 %42)
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %7, align 8
  br label %65

46:                                               ; preds = %33
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32* @pmap_pte(%struct.TYPE_6__* %47, i32 %48)
  store i32* %49, i32** %5, align 8
  %50 = load i32*, i32** @PT_ENTRY_NULL, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = icmp ne i32* %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @PTE_VALID_MASK(i32 %56)
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @pte_to_pa(i32 %61)
  %63 = call i64 @i386_btop(i32 %62)
  store i64 %63, i64* %7, align 8
  br label %64

64:                                               ; preds = %60, %53, %46
  br label %65

65:                                               ; preds = %64, %38
  br label %66

66:                                               ; preds = %65, %26, %19
  br label %67

67:                                               ; preds = %66, %18
  %68 = call i32 (...) @mp_enable_preemption()
  %69 = load i64, i64* %7, align 8
  ret i64 %69
}

declare dso_local i32 @is_ept_pmap(%struct.TYPE_6__*) #1

declare dso_local i32 @mp_disable_preemption(...) #1

declare dso_local i32* @pmap_pde(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @PTE_VALID_MASK(i32) #1

declare dso_local i64 @i386_btop(i32) #1

declare dso_local i32 @pte_to_pa(i32) #1

declare dso_local i64 @ptenum(i32) #1

declare dso_local i32* @pmap_pte(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mp_enable_preemption(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
