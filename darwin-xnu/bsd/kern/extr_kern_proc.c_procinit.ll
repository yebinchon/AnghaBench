; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_procinit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_procinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@allproc = common dso_local global i32 0, align 4
@zombproc = common dso_local global i32 0, align 4
@maxproc = common dso_local global i32 0, align 4
@M_PROC = common dso_local global i32 0, align 4
@pidhash = common dso_local global i32 0, align 4
@pidhashtbl = common dso_local global i8* null, align 8
@pgrphash = common dso_local global i32 0, align 4
@pgrphashtbl = common dso_local global i8* null, align 8
@sesshash = common dso_local global i32 0, align 4
@sesshashtbl = common dso_local global i8* null, align 8
@uihash = common dso_local global i32 0, align 4
@uihashtbl = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procinit() #0 {
  %1 = call i32 @LIST_INIT(i32* @allproc)
  %2 = call i32 @LIST_INIT(i32* @zombproc)
  %3 = load i32, i32* @maxproc, align 4
  %4 = sdiv i32 %3, 4
  %5 = load i32, i32* @M_PROC, align 4
  %6 = call i8* @hashinit(i32 %4, i32 %5, i32* @pidhash)
  store i8* %6, i8** @pidhashtbl, align 8
  %7 = load i32, i32* @maxproc, align 4
  %8 = sdiv i32 %7, 4
  %9 = load i32, i32* @M_PROC, align 4
  %10 = call i8* @hashinit(i32 %8, i32 %9, i32* @pgrphash)
  store i8* %10, i8** @pgrphashtbl, align 8
  %11 = load i32, i32* @maxproc, align 4
  %12 = sdiv i32 %11, 4
  %13 = load i32, i32* @M_PROC, align 4
  %14 = call i8* @hashinit(i32 %12, i32 %13, i32* @sesshash)
  store i8* %14, i8** @sesshashtbl, align 8
  %15 = load i32, i32* @maxproc, align 4
  %16 = sdiv i32 %15, 16
  %17 = load i32, i32* @M_PROC, align 4
  %18 = call i8* @hashinit(i32 %16, i32 %17, i32* @uihash)
  store i8* %18, i8** @uihashtbl, align 8
  ret void
}

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i8* @hashinit(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
