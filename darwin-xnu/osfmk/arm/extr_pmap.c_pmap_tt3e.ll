; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_tt3e.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_tt3e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PT_ENTRY_NULL = common dso_local global i32* null, align 8
@ARM_TTE_TYPE_MASK = common dso_local global i32 0, align 4
@ARM_TTE_VALID = common dso_local global i32 0, align 4
@ARM_TTE_TYPE_TABLE = common dso_local global i32 0, align 4
@ARM_TTE_TABLE_MASK = common dso_local global i32 0, align 4
@ARM_TTE_TYPE_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i64)* @pmap_tt3e to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pmap_tt3e(i32 %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i64, i64* %5, align 8
  %11 = call i32* @pmap_tt2e(i32 %9, i64 %10)
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32*, i32** @PT_ENTRY_NULL, align 8
  %14 = icmp eq i32* %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32*, i32** @PT_ENTRY_NULL, align 8
  store i32* %16, i32** %3, align 8
  br label %42

17:                                               ; preds = %2
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @ARM_TTE_TYPE_MASK, align 4
  %22 = load i32, i32* @ARM_TTE_VALID, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = load i32, i32* @ARM_TTE_TYPE_TABLE, align 4
  %26 = load i32, i32* @ARM_TTE_VALID, align 4
  %27 = or i32 %25, %26
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32*, i32** @PT_ENTRY_NULL, align 8
  store i32* %30, i32** %3, align 8
  br label %42

31:                                               ; preds = %17
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @ARM_TTE_TABLE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = call i64 @phystokv(i32 %34)
  %36 = inttoptr i64 %35 to i32*
  %37 = load i32, i32* %4, align 4
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @tt3_index(i32 %37, i64 %38)
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32* %40, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  store i32* %41, i32** %3, align 8
  br label %42

42:                                               ; preds = %31, %29, %15
  %43 = load i32*, i32** %3, align 8
  ret i32* %43
}

declare dso_local i32* @pmap_tt2e(i32, i64) #1

declare dso_local i64 @phystokv(i32) #1

declare dso_local i64 @tt3_index(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
