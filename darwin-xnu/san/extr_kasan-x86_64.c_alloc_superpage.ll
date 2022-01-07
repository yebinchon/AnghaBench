; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-x86_64.c_alloc_superpage.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-x86_64.c_alloc_superpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shadow_pnext = common dso_local global i64 0, align 8
@I386_LPGMASK = common dso_local global i64 0, align 8
@I386_LPGBYTES = common dso_local global i64 0, align 8
@I386_PGBYTES = common dso_local global i64 0, align 8
@shadow_pages_used = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @alloc_superpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alloc_superpage() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @shadow_pnext, align 8
  %3 = call i64 @ROUND_SUPERPAGE(i64 %2)
  store i64 %3, i64* @shadow_pnext, align 8
  %4 = load i64, i64* @shadow_pnext, align 8
  %5 = load i64, i64* @I386_LPGMASK, align 8
  %6 = and i64 %4, %5
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i64, i64* @shadow_pnext, align 8
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* @I386_LPGBYTES, align 8
  %12 = load i64, i64* @shadow_pnext, align 8
  %13 = add i64 %12, %11
  store i64 %13, i64* @shadow_pnext, align 8
  %14 = load i64, i64* @I386_LPGBYTES, align 8
  %15 = load i64, i64* @I386_PGBYTES, align 8
  %16 = udiv i64 %14, %15
  %17 = load i64, i64* @shadow_pages_used, align 8
  %18 = add i64 %17, %16
  store i64 %18, i64* @shadow_pages_used, align 8
  %19 = load i64, i64* %1, align 8
  ret i64 %19
}

declare dso_local i64 @ROUND_SUPERPAGE(i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
