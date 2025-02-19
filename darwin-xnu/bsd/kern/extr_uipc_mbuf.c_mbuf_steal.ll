; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mbuf_steal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mbuf_steal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mbuf_mlock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mbuf_steal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbuf_steal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32** %6, i32*** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @mbuf_mlock, align 4
  %10 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %11 = call i32 @LCK_MTX_ASSERT(i32 %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %36 [
    i32 131, label %13
    i32 132, label %13
    i32 133, label %13
    i32 134, label %13
    i32 128, label %15
    i32 129, label %15
    i32 130, label %15
  ]

13:                                               ; preds = %2, %2, %2, %2
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %43

15:                                               ; preds = %2, %2, %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @m_infree(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @m_minlimit(i32 %18)
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @m_infree(i32 %24)
  %26 = call i32 @MIN(i32 %23, i32 %25)
  %27 = call i32 @cslab_alloc(i32 %22, i32*** %7, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %21, %15
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @cslab_free(i32 %32, i32* %33, i32 1)
  br label %35

35:                                               ; preds = %31, %28
  br label %38

36:                                               ; preds = %2
  %37 = call i32 @VERIFY(i32 0)
  br label %38

38:                                               ; preds = %36, %35
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @m_infree(i32) #1

declare dso_local i32 @m_minlimit(i32) #1

declare dso_local i32 @cslab_alloc(i32, i32***, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @cslab_free(i32, i32*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
