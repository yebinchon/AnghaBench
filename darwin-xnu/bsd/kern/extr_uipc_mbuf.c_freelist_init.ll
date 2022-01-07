; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_freelist_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_freelist_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mbuf_mlock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@MC_CL = common dso_local global i64 0, align 8
@MC_BIGCL = common dso_local global i64 0, align 8
@M_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @freelist_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freelist_init(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @mbuf_mlock, align 4
  %4 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %5 = call i32 @LCK_MTX_ASSERT(i32 %3, i32 %4)
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @MC_CL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @MC_BIGCL, align 8
  %12 = icmp eq i64 %10, %11
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i1 [ true, %1 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @VERIFY(i32 %15)
  %17 = load i64, i64* %2, align 8
  %18 = call i64 @m_total(i64 %17)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @VERIFY(i32 %20)
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @m_minlimit(i64 %22)
  %24 = icmp sgt i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @VERIFY(i32 %25)
  br label %27

27:                                               ; preds = %33, %13
  %28 = load i64, i64* %2, align 8
  %29 = call i64 @m_total(i64 %28)
  %30 = load i64, i64* %2, align 8
  %31 = call i64 @m_minlimit(i64 %30)
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* %2, align 8
  %36 = call i64 @m_minlimit(i64 %35)
  %37 = load i32, i32* @M_WAIT, align 4
  %38 = call i32 @freelist_populate(i64 %34, i64 %36, i32 %37)
  br label %27

39:                                               ; preds = %27
  %40 = load i64, i64* %2, align 8
  %41 = call i64 @m_total(i64 %40)
  %42 = load i64, i64* %2, align 8
  %43 = call i64 @m_minlimit(i64 %42)
  %44 = icmp sge i64 %41, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @VERIFY(i32 %45)
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @m_total(i64) #1

declare dso_local i64 @m_minlimit(i64) #1

declare dso_local i32 @freelist_populate(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
