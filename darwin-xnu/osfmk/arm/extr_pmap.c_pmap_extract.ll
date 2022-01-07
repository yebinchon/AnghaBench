; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_extract.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@kernel_pmap = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pmap_extract(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @kernel_pmap, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @mmu_kvtop(i32 %11)
  store i64 %12, i64* %6, align 8
  br label %24

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = call %struct.TYPE_2__* (...) @current_thread()
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @vm_map_pmap(i32 %17)
  %19 = icmp eq i64 %14, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @mmu_uvtop(i32 %21)
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %20, %13
  br label %24

24:                                               ; preds = %23, %10
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %3, align 8
  br label %33

29:                                               ; preds = %24
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @pmap_extract_internal(i64 %30, i32 %31)
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %29, %27
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

declare dso_local i64 @mmu_kvtop(i32) #1

declare dso_local i64 @vm_map_pmap(i32) #1

declare dso_local %struct.TYPE_2__* @current_thread(...) #1

declare dso_local i64 @mmu_uvtop(i32) #1

declare dso_local i64 @pmap_extract_internal(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
