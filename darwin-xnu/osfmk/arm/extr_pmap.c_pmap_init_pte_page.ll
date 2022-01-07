; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_init_pte_page.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_init_pte_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PVH_TYPE_NULL = common dso_local global i32 0, align 4
@PVH_TYPE_PTDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"pmap_init_pte_page(): pte_p %p\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"pmap_init_pte_page(): invalid PVH type for pte_p %p\00", align 1
@ARM_PGBYTES = common dso_local global i32 0, align 4
@DMB_ISHST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_init_pte_page(i32 %0, i32* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store i32* null, i32** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = ptrtoint i32* %13 to i32
  %15 = call i32 @ml_static_vtop(i32 %14)
  %16 = call i32 @pa_index(i32 %15)
  %17 = call i64 @pai_to_pvh(i32 %16)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = load i32, i32* @PVH_TYPE_NULL, align 4
  %21 = call i64 @pvh_test_type(i32* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %5
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = call i32* @ptd_alloc(i32 %27)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* @PVH_TYPE_PTDP, align 4
  %32 = call i32 @pvh_update_head_unlocked(i32* %29, i32* %30, i32 %31)
  br label %36

33:                                               ; preds = %23
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %34)
  br label %36

36:                                               ; preds = %33, %26
  br label %50

37:                                               ; preds = %5
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* @PVH_TYPE_PTDP, align 4
  %40 = call i64 @pvh_test_type(i32* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32*, i32** %12, align 8
  %44 = call i64 @pvh_list(i32* %43)
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %11, align 8
  br label %49

46:                                               ; preds = %37
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @panic(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32* %47)
  br label %49

49:                                               ; preds = %46, %42
  br label %50

50:                                               ; preds = %49, %36
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @ARM_PGBYTES, align 4
  %53 = call i32 @bzero(i32* %51, i32 %52)
  %54 = load i32, i32* @DMB_ISHST, align 4
  %55 = call i32 @__builtin_arm_dmb(i32 %54)
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @ptd_init(i32* %56, i32 %57, i32 %58, i32 %59, i32* %60)
  ret void
}

declare dso_local i64 @pai_to_pvh(i32) #1

declare dso_local i32 @pa_index(i32) #1

declare dso_local i32 @ml_static_vtop(i32) #1

declare dso_local i64 @pvh_test_type(i32*, i32) #1

declare dso_local i32* @ptd_alloc(i32) #1

declare dso_local i32 @pvh_update_head_unlocked(i32*, i32*, i32) #1

declare dso_local i32 @panic(i8*, i32*) #1

declare dso_local i64 @pvh_list(i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @__builtin_arm_dmb(i32) #1

declare dso_local i32 @ptd_init(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
