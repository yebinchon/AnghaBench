; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rtrequest_scoped.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rtrequest_scoped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.rtentry = type { i32 }

@rnh_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtrequest_scoped(i32 %0, %struct.sockaddr* %1, %struct.sockaddr* %2, %struct.sockaddr* %3, i32 %4, %struct.rtentry** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.rtentry**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %10, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.rtentry** %5, %struct.rtentry*** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* @rnh_lock, align 4
  %17 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %18 = call i32 @LCK_MTX_ASSERT(i32 %16, i32 %17)
  %19 = load i32, i32* @rnh_lock, align 4
  %20 = call i32 @lck_mtx_lock(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %23 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %24 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.rtentry**, %struct.rtentry*** %13, align 8
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @rtrequest_scoped_locked(i32 %21, %struct.sockaddr* %22, %struct.sockaddr* %23, %struct.sockaddr* %24, i32 %25, %struct.rtentry** %26, i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* @rnh_lock, align 4
  %30 = call i32 @lck_mtx_unlock(i32 %29)
  %31 = load i32, i32* %15, align 4
  ret i32 %31
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @rtrequest_scoped_locked(i32, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, i32, %struct.rtentry**, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
