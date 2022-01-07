; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageclean_setup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageclean_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8*, i32, i8*, i8*, i8*, i8*, i32 }

@XPR_VM_PAGEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"vm_pageclean_setup, obj 0x%X off 0x%X page 0x%X new 0x%X new_off 0x%X\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@vm_page_fictitious_addr = common dso_local global i64 0, align 8
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_12__*, i32, i32)* @vm_pageclean_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_pageclean_setup(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* @XPR_VM_PAGEOUT, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = call i32 @VM_PAGE_OBJECT(%struct.TYPE_12__* %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @XPR(i32 %16, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, %struct.TYPE_12__* %22, %struct.TYPE_12__* %23, i32 %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = call i64 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_12__* %26)
  %28 = call i32 @pmap_clear_modify(i64 %27)
  %29 = load i8*, i8** @TRUE, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 6
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = load i8*, i8** @FALSE, align 8
  %34 = call i32 @SET_PAGE_DIRTY(%struct.TYPE_12__* %32, i8* %33)
  %35 = load i8*, i8** @FALSE, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = call i64 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_12__* %42)
  %44 = load i64, i64* @vm_page_fictitious_addr, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i8*, i8** @FALSE, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i8*, i8** @TRUE, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @TRUE, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = call i64 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_12__* %59)
  %61 = call i32 @VM_PAGE_SET_PHYS_PAGE(%struct.TYPE_12__* %58, i64 %60)
  %62 = call i32 (...) @vm_page_lockspin_queues()
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %65 = load i8*, i8** @TRUE, align 8
  %66 = call i32 @vm_page_wire(%struct.TYPE_12__* %63, i32 %64, i8* %65)
  %67 = call i32 (...) @vm_page_unlock_queues()
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %72 = call i32 @vm_page_insert_wired(%struct.TYPE_12__* %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load i8*, i8** @FALSE, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @XPR(i32, i8*, i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @VM_PAGE_OBJECT(%struct.TYPE_12__*) #1

declare dso_local i32 @pmap_clear_modify(i64) #1

declare dso_local i64 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_12__*) #1

declare dso_local i32 @SET_PAGE_DIRTY(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @VM_PAGE_SET_PHYS_PAGE(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @vm_page_lockspin_queues(...) #1

declare dso_local i32 @vm_page_wire(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @vm_page_unlock_queues(...) #1

declare dso_local i32 @vm_page_insert_wired(%struct.TYPE_12__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
