; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_init.c_dyn_dblmap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_init.c_dyn_dblmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dblmap_max = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@PMAP_EXPAND_OPTIONS_ALIASMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dyn_dblmap(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @dblmap_max, align 8
  store i64 %6, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @PAGE_MASK, align 8
  %9 = and i64 %7, %8
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* @VM_PROT_READ, align 4
  %23 = load i32, i32* @VM_PROT_WRITE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @PMAP_EXPAND_OPTIONS_ALIASMAP, align 4
  %26 = call i32 @pmap_alias(i64 %17, i64 %18, i64 %21, i32 %24, i32 %25)
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @dblmap_max, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* @dblmap_max, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %3, align 8
  %32 = sub nsw i64 %30, %31
  ret i64 %32
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pmap_alias(i64, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
