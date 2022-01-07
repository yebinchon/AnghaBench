; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_domain.c_pffinddomain_old.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_domain.c_pffinddomain_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_old = type { i32 }
%struct.domain = type { i32, %struct.domain_old* }

@DOM_OLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.domain_old* @pffinddomain_old(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_old*, align 8
  %4 = alloca %struct.domain*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.domain_old* null, %struct.domain_old** %3, align 8
  %6 = call i32 (...) @domain_guard_deploy()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.domain* @pffinddomain_locked(i32 %7)
  store %struct.domain* %8, %struct.domain** %4, align 8
  %9 = icmp ne %struct.domain* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.domain*, %struct.domain** %4, align 8
  %12 = getelementptr inbounds %struct.domain, %struct.domain* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @DOM_OLD, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load %struct.domain*, %struct.domain** %4, align 8
  %19 = getelementptr inbounds %struct.domain, %struct.domain* %18, i32 0, i32 1
  %20 = load %struct.domain_old*, %struct.domain_old** %19, align 8
  store %struct.domain_old* %20, %struct.domain_old** %3, align 8
  br label %21

21:                                               ; preds = %17, %10, %1
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @domain_guard_release(i32 %22)
  %24 = load %struct.domain_old*, %struct.domain_old** %3, align 8
  ret %struct.domain_old* %24
}

declare dso_local i32 @domain_guard_deploy(...) #1

declare dso_local %struct.domain* @pffinddomain_locked(i32) #1

declare dso_local i32 @domain_guard_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
