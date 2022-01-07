; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_cga.c_in6_cga_generate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_cga.c_in6_cga_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.iovec, %struct.in6_cga_prepare }
%struct.iovec = type { i32* }
%struct.in6_cga_prepare = type { i32 }
%struct.in6_addr = type { i32 }

@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@in6_cga = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_cga_generate(%struct.in6_cga_prepare* %0, i32 %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.in6_cga_prepare*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iovec*, align 8
  store %struct.in6_cga_prepare* %0, %struct.in6_cga_prepare** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.in6_addr* %2, %struct.in6_addr** %6, align 8
  %9 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %10 = call i32 @in6_cga_node_lock_assert(i32 %9)
  %11 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %12 = icmp ne %struct.in6_addr* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @VERIFY(i32 %13)
  %15 = load %struct.in6_cga_prepare*, %struct.in6_cga_prepare** %4, align 8
  %16 = icmp eq %struct.in6_cga_prepare* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.in6_cga_prepare* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @in6_cga, i32 0, i32 1), %struct.in6_cga_prepare** %4, align 8
  br label %22

18:                                               ; preds = %3
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @in6_cga, i32 0, i32 1, i32 0), align 8
  %20 = load %struct.in6_cga_prepare*, %struct.in6_cga_prepare** %4, align 8
  %21 = getelementptr inbounds %struct.in6_cga_prepare, %struct.in6_cga_prepare* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %17
  store %struct.iovec* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @in6_cga, i32 0, i32 0), %struct.iovec** %8, align 8
  %23 = load %struct.iovec*, %struct.iovec** %8, align 8
  %24 = getelementptr inbounds %struct.iovec, %struct.iovec* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.in6_cga_prepare*, %struct.in6_cga_prepare** %4, align 8
  %29 = load %struct.iovec*, %struct.iovec** %8, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %32 = call i32 @in6_cga_generate_iid(%struct.in6_cga_prepare* %28, %struct.iovec* %29, i32 %30, %struct.in6_addr* %31)
  store i32 0, i32* %7, align 4
  br label %35

33:                                               ; preds = %22
  %34 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @in6_cga_node_lock_assert(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @in6_cga_generate_iid(%struct.in6_cga_prepare*, %struct.iovec*, i32, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
