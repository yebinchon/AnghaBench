; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_scope6.c_scope6_setdefault.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_scope6.c_scope6_setdefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.ifnet = type { i64 }

@scope6_lock = common dso_local global i32 0, align 4
@sid_default = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IPV6_ADDR_SCOPE_INTFACELOCAL = common dso_local global i64 0, align 8
@IPV6_ADDR_SCOPE_LINKLOCAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scope6_setdefault(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %3 = call i32 @lck_mtx_lock(i32* @scope6_lock)
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = icmp ne %struct.ifnet* %4, null
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sid_default, i32 0, i32 0), align 8
  %11 = load i64, i64* @IPV6_ADDR_SCOPE_INTFACELOCAL, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  store i64 %9, i64* %12, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sid_default, i32 0, i32 0), align 8
  %17 = load i64, i64* @IPV6_ADDR_SCOPE_LINKLOCAL, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  store i64 %15, i64* %18, align 8
  br label %26

19:                                               ; preds = %1
  %20 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sid_default, i32 0, i32 0), align 8
  %21 = load i64, i64* @IPV6_ADDR_SCOPE_INTFACELOCAL, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  store i64 0, i64* %22, align 8
  %23 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sid_default, i32 0, i32 0), align 8
  %24 = load i64, i64* @IPV6_ADDR_SCOPE_LINKLOCAL, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %19, %6
  %27 = call i32 @lck_mtx_unlock(i32* @scope6_lock)
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
