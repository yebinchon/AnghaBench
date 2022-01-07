; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@kernel_map = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@pmap_initialized = common dso_local global i32 0, align 4
@mem_size = common dso_local global i32 0, align 4
@pmap_object = common dso_local global %struct.TYPE_3__* null, align 8
@MEMORY_OBJECT_COPY_NONE = common dso_local global i32 0, align 4
@hard_maxproc = common dso_local global i64 0, align 8
@MAX_ASID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_init() #0 {
  %1 = load i32, i32* @kernel_map, align 4
  %2 = load i32, i32* @PAGE_SIZE, align 4
  %3 = load i32, i32* @TRUE, align 4
  %4 = load i32, i32* @VM_PROT_NONE, align 4
  %5 = call i32 @vm_protect(i32 %1, i32 0, i32 %2, i32 %3, i32 %4)
  %6 = load i32, i32* @TRUE, align 4
  store i32 %6, i32* @pmap_initialized, align 4
  %7 = call i32 (...) @pmap_zone_init()
  %8 = load i32, i32* @mem_size, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmap_object, align 8
  %10 = call i32 @_vm_object_allocate(i32 %8, %struct.TYPE_3__* %9)
  %11 = load i32, i32* @MEMORY_OBJECT_COPY_NONE, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmap_object, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = call i32 (...) @pv_init()
  %15 = load i64, i64* @hard_maxproc, align 8
  %16 = load i64, i64* @MAX_ASID, align 8
  %17 = icmp slt i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  ret void
}

declare dso_local i32 @vm_protect(i32, i32, i32, i32, i32) #1

declare dso_local i32 @pmap_zone_init(...) #1

declare dso_local i32 @_vm_object_allocate(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @pv_init(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
