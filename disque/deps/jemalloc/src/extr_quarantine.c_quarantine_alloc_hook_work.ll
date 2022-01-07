; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_quarantine.c_quarantine_alloc_hook_work.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_quarantine.c_quarantine_alloc_hook_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LG_MAXOBJS_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quarantine_alloc_hook_work(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @tsd_nominal(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %25

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @LG_MAXOBJS_INIT, align 4
  %11 = call i32* @quarantine_init(i32* %9, i32 %10)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32* @tsd_quarantine_get(i32* %12)
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = load i32*, i32** %2, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @tsd_quarantine_set(i32* %16, i32* %17)
  br label %25

19:                                               ; preds = %8
  %20 = load i32*, i32** %2, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @tcache_get(i32* %22, i32 0)
  %24 = call i32 @idalloctm(i32* %20, i32* %21, i32 %23, i32 1)
  br label %25

25:                                               ; preds = %7, %19, %15
  ret void
}

declare dso_local i32 @tsd_nominal(i32*) #1

declare dso_local i32* @quarantine_init(i32*, i32) #1

declare dso_local i32* @tsd_quarantine_get(i32*) #1

declare dso_local i32 @tsd_quarantine_set(i32*, i32*) #1

declare dso_local i32 @idalloctm(i32*, i32*, i32, i32) #1

declare dso_local i32 @tcache_get(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
