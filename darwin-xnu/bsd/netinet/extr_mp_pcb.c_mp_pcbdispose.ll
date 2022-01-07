; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mp_pcb.c_mp_pcbdispose.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mp_pcb.c_mp_pcbdispose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mppcb = type { i64, i32, %struct.TYPE_2__*, i32, %struct.mppcbinfo* }
%struct.TYPE_2__ = type { i64, i32* }
%struct.mppcbinfo = type { i64, i32, i32, i32, i32 }

@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@MPPCB_STATE_DEAD = common dso_local global i64 0, align 8
@MPP_ATTACHED = common dso_local global i32 0, align 4
@mpp_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_pcbdispose(%struct.mppcb* %0) #0 {
  %2 = alloca %struct.mppcb*, align 8
  %3 = alloca %struct.mppcbinfo*, align 8
  store %struct.mppcb* %0, %struct.mppcb** %2, align 8
  %4 = load %struct.mppcb*, %struct.mppcb** %2, align 8
  %5 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %4, i32 0, i32 4
  %6 = load %struct.mppcbinfo*, %struct.mppcbinfo** %5, align 8
  store %struct.mppcbinfo* %6, %struct.mppcbinfo** %3, align 8
  %7 = load %struct.mppcbinfo*, %struct.mppcbinfo** %3, align 8
  %8 = icmp ne %struct.mppcbinfo* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @VERIFY(i32 %9)
  %11 = load %struct.mppcbinfo*, %struct.mppcbinfo** %3, align 8
  %12 = getelementptr inbounds %struct.mppcbinfo, %struct.mppcbinfo* %11, i32 0, i32 4
  %13 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %14 = call i32 @LCK_MTX_ASSERT(i32* %12, i32 %13)
  %15 = load %struct.mppcb*, %struct.mppcb** %2, align 8
  %16 = call i32 @mpp_lock_assert_held(%struct.mppcb* %15)
  %17 = load %struct.mppcb*, %struct.mppcb** %2, align 8
  %18 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MPPCB_STATE_DEAD, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @VERIFY(i32 %22)
  %24 = load %struct.mppcb*, %struct.mppcb** %2, align 8
  %25 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MPP_ATTACHED, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @VERIFY(i32 %28)
  %30 = load i32, i32* @MPP_ATTACHED, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.mppcb*, %struct.mppcb** %2, align 8
  %33 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.mppcbinfo*, %struct.mppcbinfo** %3, align 8
  %37 = getelementptr inbounds %struct.mppcbinfo, %struct.mppcbinfo* %36, i32 0, i32 3
  %38 = load %struct.mppcb*, %struct.mppcb** %2, align 8
  %39 = load i32, i32* @mpp_entry, align 4
  %40 = call i32 @TAILQ_REMOVE(i32* %37, %struct.mppcb* %38, i32 %39)
  %41 = load %struct.mppcbinfo*, %struct.mppcbinfo** %3, align 8
  %42 = getelementptr inbounds %struct.mppcbinfo, %struct.mppcbinfo* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @VERIFY(i32 %45)
  %47 = load %struct.mppcbinfo*, %struct.mppcbinfo** %3, align 8
  %48 = getelementptr inbounds %struct.mppcbinfo, %struct.mppcbinfo* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.mppcb*, %struct.mppcb** %2, align 8
  %52 = call i32 @mpp_unlock(%struct.mppcb* %51)
  %53 = load %struct.mppcb*, %struct.mppcb** %2, align 8
  %54 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %53, i32 0, i32 3
  %55 = load %struct.mppcbinfo*, %struct.mppcbinfo** %3, align 8
  %56 = getelementptr inbounds %struct.mppcbinfo, %struct.mppcbinfo* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @lck_mtx_destroy(i32* %54, i32 %57)
  %59 = load %struct.mppcb*, %struct.mppcb** %2, align 8
  %60 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = icmp ne %struct.TYPE_2__* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @VERIFY(i32 %63)
  %65 = load %struct.mppcb*, %struct.mppcb** %2, align 8
  %66 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @VERIFY(i32 %71)
  %73 = load %struct.mppcb*, %struct.mppcb** %2, align 8
  %74 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  %77 = load %struct.mppcb*, %struct.mppcb** %2, align 8
  %78 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %77, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %78, align 8
  %79 = load %struct.mppcbinfo*, %struct.mppcbinfo** %3, align 8
  %80 = getelementptr inbounds %struct.mppcbinfo, %struct.mppcbinfo* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mppcb*, %struct.mppcb** %2, align 8
  %83 = call i32 @zfree(i32 %81, %struct.mppcb* %82)
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @mpp_lock_assert_held(%struct.mppcb*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.mppcb*, i32) #1

declare dso_local i32 @mpp_unlock(%struct.mppcb*) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32) #1

declare dso_local i32 @zfree(i32, %struct.mppcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
