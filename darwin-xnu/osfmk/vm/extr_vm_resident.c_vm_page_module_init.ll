; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_module_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_module_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"vm pages array\00", align 1
@vm_page_array_zone = common dso_local global %struct.TYPE_5__* null, align 8
@Z_CALLERACCT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@Z_EXPAND = common dso_local global i32 0, align 4
@Z_EXHAUST = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@Z_FOREIGN = common dso_local global i32 0, align 4
@Z_GZALLOC_EXEMPT = common dso_local global i32 0, align 4
@vm_page_pages = common dso_local global i32 0, align 4
@VM_PACKED_POINTER_ALIGNMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"vm pages\00", align 1
@vm_page_zone = common dso_local global %struct.TYPE_5__* null, align 8
@Z_ALIGNMENT_REQUIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_module_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @PAGE_SIZE, align 4
  %5 = call %struct.TYPE_5__* @zinit(i32 4, i32 0, i32 %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** @vm_page_array_zone, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vm_page_array_zone, align 8
  %7 = load i32, i32* @Z_CALLERACCT, align 4
  %8 = load i32, i32* @FALSE, align 4
  %9 = call i32 @zone_change(%struct.TYPE_5__* %6, i32 %7, i32 %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vm_page_array_zone, align 8
  %11 = load i32, i32* @Z_EXPAND, align 4
  %12 = load i32, i32* @FALSE, align 4
  %13 = call i32 @zone_change(%struct.TYPE_5__* %10, i32 %11, i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vm_page_array_zone, align 8
  %15 = load i32, i32* @Z_EXHAUST, align 4
  %16 = load i32, i32* @TRUE, align 4
  %17 = call i32 @zone_change(%struct.TYPE_5__* %14, i32 %15, i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vm_page_array_zone, align 8
  %19 = load i32, i32* @Z_FOREIGN, align 4
  %20 = load i32, i32* @TRUE, align 4
  %21 = call i32 @zone_change(%struct.TYPE_5__* %18, i32 %19, i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vm_page_array_zone, align 8
  %23 = load i32, i32* @Z_GZALLOC_EXEMPT, align 4
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i32 @zone_change(%struct.TYPE_5__* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @vm_page_pages, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vm_page_array_zone, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @vm_page_pages, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vm_page_array_zone, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @vm_page_pages, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vm_page_array_zone, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vm_page_array_zone, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @round_page(i32 %46)
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* %1, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vm_page_array_zone, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  %53 = call i32 @OSAddAtomic64(i32 %50, i32* %52)
  %54 = load i32, i32* %1, align 4
  %55 = call i32 @VM_PAGE_MOVE_STOLEN(i32 %54)
  %56 = load i32, i32* @VM_PACKED_POINTER_ALIGNMENT, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = add i64 4, %58
  %60 = load i32, i32* @VM_PACKED_POINTER_ALIGNMENT, align 4
  %61 = sub nsw i32 %60, 1
  %62 = xor i32 %61, -1
  %63 = sext i32 %62 to i64
  %64 = and i64 %59, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = call %struct.TYPE_5__* @zinit(i32 %66, i32 0, i32 %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_5__* %68, %struct.TYPE_5__** @vm_page_zone, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vm_page_zone, align 8
  %70 = load i32, i32* @Z_CALLERACCT, align 4
  %71 = load i32, i32* @FALSE, align 4
  %72 = call i32 @zone_change(%struct.TYPE_5__* %69, i32 %70, i32 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vm_page_zone, align 8
  %74 = load i32, i32* @Z_EXPAND, align 4
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i32 @zone_change(%struct.TYPE_5__* %73, i32 %74, i32 %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vm_page_zone, align 8
  %78 = load i32, i32* @Z_EXHAUST, align 4
  %79 = load i32, i32* @TRUE, align 4
  %80 = call i32 @zone_change(%struct.TYPE_5__* %77, i32 %78, i32 %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vm_page_zone, align 8
  %82 = load i32, i32* @Z_FOREIGN, align 4
  %83 = load i32, i32* @TRUE, align 4
  %84 = call i32 @zone_change(%struct.TYPE_5__* %81, i32 %82, i32 %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vm_page_zone, align 8
  %86 = load i32, i32* @Z_GZALLOC_EXEMPT, align 4
  %87 = load i32, i32* @TRUE, align 4
  %88 = call i32 @zone_change(%struct.TYPE_5__* %85, i32 %86, i32 %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vm_page_zone, align 8
  %90 = load i32, i32* @Z_ALIGNMENT_REQUIRED, align 4
  %91 = load i32, i32* @TRUE, align 4
  %92 = call i32 @zone_change(%struct.TYPE_5__* %89, i32 %90, i32 %91)
  ret void
}

declare dso_local %struct.TYPE_5__* @zinit(i32, i32, i32, i8*) #1

declare dso_local i32 @zone_change(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

declare dso_local i32 @VM_PAGE_MOVE_STOLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
