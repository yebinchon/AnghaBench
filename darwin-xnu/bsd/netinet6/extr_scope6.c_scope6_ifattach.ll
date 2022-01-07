; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_scope6.c_scope6_ifattach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_scope6.c_scope6_ifattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.scope6_id = type { i32* }

@IPV6_ADDR_SCOPE_INTFACELOCAL = common dso_local global i64 0, align 8
@IPV6_ADDR_SCOPE_LINKLOCAL = common dso_local global i64 0, align 8
@IPV6_ADDR_SCOPE_ORGLOCAL = common dso_local global i64 0, align 8
@IPV6_ADDR_SCOPE_SITELOCAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scope6_ifattach(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.scope6_id*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = call i32* @IN6_IFEXTRA(%struct.ifnet* %4)
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @VERIFY(i32 %7)
  %9 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %10 = call i32 @if_inet6data_lock_exclusive(%struct.ifnet* %9)
  %11 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %12 = call %struct.scope6_id* @SID(%struct.ifnet* %11)
  store %struct.scope6_id* %12, %struct.scope6_id** %3, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.scope6_id*, %struct.scope6_id** %3, align 8
  %17 = getelementptr inbounds %struct.scope6_id, %struct.scope6_id* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @IPV6_ADDR_SCOPE_INTFACELOCAL, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %15, i32* %20, align 4
  %21 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.scope6_id*, %struct.scope6_id** %3, align 8
  %25 = getelementptr inbounds %struct.scope6_id, %struct.scope6_id* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @IPV6_ADDR_SCOPE_LINKLOCAL, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 %23, i32* %28, align 4
  %29 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %30 = call i32 @if_inet6data_lock_done(%struct.ifnet* %29)
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32* @IN6_IFEXTRA(%struct.ifnet*) #1

declare dso_local i32 @if_inet6data_lock_exclusive(%struct.ifnet*) #1

declare dso_local %struct.scope6_id* @SID(%struct.ifnet*) #1

declare dso_local i32 @if_inet6data_lock_done(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
