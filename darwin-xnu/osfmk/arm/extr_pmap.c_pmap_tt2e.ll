; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_tt2e.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_tt2e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@ARM_TTE_TYPE_MASK = common dso_local global i32 0, align 4
@ARM_TTE_VALID = common dso_local global i32 0, align 4
@ARM_TTE_TYPE_TABLE = common dso_local global i32 0, align 4
@PT_ENTRY_NULL = common dso_local global i32* null, align 8
@ARM_TTE_TABLE_MASK = common dso_local global i32 0, align 4
@ARM_TTE_TYPE_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i64)* @pmap_tt2e to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pmap_tt2e(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32* @pmap_tt1e(%struct.TYPE_6__* %8, i64 %9)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @ARM_TTE_TYPE_MASK, align 4
  %15 = load i32, i32* @ARM_TTE_VALID, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = load i32, i32* @ARM_TTE_TYPE_TABLE, align 4
  %19 = load i32, i32* @ARM_TTE_VALID, align 4
  %20 = or i32 %18, %19
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32*, i32** @PT_ENTRY_NULL, align 8
  store i32* %23, i32** %3, align 8
  br label %35

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ARM_TTE_TABLE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = call i64 @phystokv(i32 %27)
  %29 = inttoptr i64 %28 to i32*
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @tt2_index(%struct.TYPE_6__* %30, i64 %31)
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  store i32* %34, i32** %3, align 8
  br label %35

35:                                               ; preds = %24, %22
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local i32* @pmap_tt1e(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @phystokv(i32) #1

declare dso_local i64 @tt2_index(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
