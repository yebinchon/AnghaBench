; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_free_asid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_free_asid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_MAX_ASID = common dso_local global i32 0, align 4
@pmaps_lock = common dso_local global i32 0, align 4
@asid_bitmap = common dso_local global i64 0, align 8
@MAX_ASID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @free_asid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_asid(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @ARM_MAX_ASID, align 4
  %5 = srem i32 %3, %4
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = call i32 @pmap_simple_lock(i32* @pmaps_lock)
  %10 = load i32, i32* %2, align 4
  %11 = load i64, i64* @asid_bitmap, align 8
  %12 = inttoptr i64 %11 to i32*
  %13 = call i32 @setbit(i32 %10, i32* %12)
  %14 = call i32 @pmap_simple_unlock(i32* @pmaps_lock)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pmap_simple_lock(i32*) #1

declare dso_local i32 @setbit(i32, i32*) #1

declare dso_local i32 @pmap_simple_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
