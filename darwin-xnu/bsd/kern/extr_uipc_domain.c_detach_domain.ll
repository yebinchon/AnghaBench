; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_domain.c_detach_domain.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_domain.c_detach_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain = type { i32, %struct.domain_old* }
%struct.domain_old = type { i32*, i32* }

@DOM_ATTACHED = common dso_local global i32 0, align 4
@domains = common dso_local global i32 0, align 4
@dom_entry = common dso_local global i32 0, align 4
@DOM_OLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.domain*)* @detach_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detach_domain(%struct.domain* %0) #0 {
  %2 = alloca %struct.domain*, align 8
  %3 = alloca %struct.domain_old*, align 8
  store %struct.domain* %0, %struct.domain** %2, align 8
  %4 = call i32 (...) @domain_proto_mtx_lock_assert_held()
  %5 = load %struct.domain*, %struct.domain** %2, align 8
  %6 = getelementptr inbounds %struct.domain, %struct.domain* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @DOM_ATTACHED, align 4
  %9 = and i32 %7, %8
  %10 = call i32 @VERIFY(i32 %9)
  %11 = load %struct.domain*, %struct.domain** %2, align 8
  %12 = load i32, i32* @dom_entry, align 4
  %13 = call i32 @TAILQ_REMOVE(i32* @domains, %struct.domain* %11, i32 %12)
  %14 = load i32, i32* @DOM_ATTACHED, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.domain*, %struct.domain** %2, align 8
  %17 = getelementptr inbounds %struct.domain, %struct.domain* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.domain*, %struct.domain** %2, align 8
  %21 = getelementptr inbounds %struct.domain, %struct.domain* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DOM_OLD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load %struct.domain*, %struct.domain** %2, align 8
  %28 = getelementptr inbounds %struct.domain, %struct.domain* %27, i32 0, i32 1
  %29 = load %struct.domain_old*, %struct.domain_old** %28, align 8
  store %struct.domain_old* %29, %struct.domain_old** %3, align 8
  %30 = load %struct.domain_old*, %struct.domain_old** %3, align 8
  %31 = icmp ne %struct.domain_old* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @VERIFY(i32 %32)
  %34 = load %struct.domain_old*, %struct.domain_old** %3, align 8
  %35 = getelementptr inbounds %struct.domain_old, %struct.domain_old* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.domain_old*, %struct.domain_old** %3, align 8
  %37 = getelementptr inbounds %struct.domain_old, %struct.domain_old* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @domain_proto_mtx_lock_assert_held(...) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.domain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
