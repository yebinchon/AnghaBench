; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_vtophys.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_vtophys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@ARM_TTE_TYPE_MASK = common dso_local global i32 0, align 4
@ARM_TTE_VALID = common dso_local global i32 0, align 4
@ARM_TTE_TYPE_TABLE = common dso_local global i32 0, align 4
@ARM_TTE_TABLE_MASK = common dso_local global i32 0, align 4
@ARM_TTE_TYPE_BLOCK = common dso_local global i32 0, align 4
@ARM_TTE_BLOCK_L2_MASK = common dso_local global i32 0, align 4
@ARM_TT_L2_OFFMASK = common dso_local global i32 0, align 4
@ARM_PTE_MASK = common dso_local global i32 0, align 4
@ARM_TT_L3_OFFMASK = common dso_local global i32 0, align 4
@ARM_PGMASK = common dso_local global i32 0, align 4
@ARM_TTE_BLOCK_SUPER = common dso_local global i32 0, align 4
@ARM_TT_L1_BLOCK_OFFMASK = common dso_local global i32 0, align 4
@ARM_TT_L1_SUPER_OFFMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pmap_vtophys(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %2
  store i64 0, i64* %3, align 8
  br label %92

21:                                               ; preds = %14
  store i64 0, i64* %8, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32* @pmap_tt1e(%struct.TYPE_9__* %22, i32 %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @ARM_TTE_TYPE_MASK, align 4
  %29 = load i32, i32* @ARM_TTE_VALID, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = load i32, i32* @ARM_TTE_TYPE_TABLE, align 4
  %33 = load i32, i32* @ARM_TTE_VALID, align 4
  %34 = or i32 %32, %33
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %21
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %3, align 8
  br label %92

38:                                               ; preds = %21
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @ARM_TTE_TABLE_MASK, align 4
  %41 = and i32 %39, %40
  %42 = call i64 @phystokv(i32 %41)
  %43 = inttoptr i64 %42 to i32*
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @tt2_index(%struct.TYPE_9__* %44, i32 %45)
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @ARM_TTE_VALID, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @ARM_TTE_VALID, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %38
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %3, align 8
  br label %92

56:                                               ; preds = %38
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @ARM_TTE_TYPE_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @ARM_TTE_TYPE_BLOCK, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @ARM_TTE_BLOCK_L2_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @ARM_TT_L2_OFFMASK, align 4
  %68 = and i32 %66, %67
  %69 = or i32 %65, %68
  %70 = call i64 @atop(i32 %69)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  store i64 %71, i64* %3, align 8
  br label %92

72:                                               ; preds = %56
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @ARM_TTE_TABLE_MASK, align 4
  %75 = and i32 %73, %74
  %76 = call i64 @phystokv(i32 %75)
  %77 = inttoptr i64 %76 to i32*
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i64 @tt3_index(%struct.TYPE_9__* %78, i32 %79)
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @ARM_PTE_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @ARM_TT_L3_OFFMASK, align 4
  %88 = and i32 %86, %87
  %89 = or i32 %85, %88
  %90 = call i64 @atop(i32 %89)
  store i64 %90, i64* %8, align 8
  %91 = load i64, i64* %8, align 8
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %72, %62, %54, %36, %20
  %93 = load i64, i64* %3, align 8
  ret i64 %93
}

declare dso_local i32* @pmap_tt1e(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @phystokv(i32) #1

declare dso_local i64 @tt2_index(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @atop(i32) #1

declare dso_local i64 @tt3_index(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
