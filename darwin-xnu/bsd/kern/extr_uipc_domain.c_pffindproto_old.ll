; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_domain.c_pffindproto_old.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_domain.c_pffindproto_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protosw_old = type { i32 }
%struct.protosw = type { i32, %struct.protosw_old* }

@PR_OLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.protosw_old* @pffindproto_old(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.protosw_old*, align 8
  %8 = alloca %struct.protosw*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.protosw_old* null, %struct.protosw_old** %7, align 8
  %10 = call i32 (...) @domain_guard_deploy()
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.protosw* @pffindproto_locked(i32 %11, i32 %12, i32 %13)
  store %struct.protosw* %14, %struct.protosw** %8, align 8
  %15 = icmp ne %struct.protosw* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.protosw*, %struct.protosw** %8, align 8
  %18 = getelementptr inbounds %struct.protosw, %struct.protosw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PR_OLD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.protosw*, %struct.protosw** %8, align 8
  %25 = getelementptr inbounds %struct.protosw, %struct.protosw* %24, i32 0, i32 1
  %26 = load %struct.protosw_old*, %struct.protosw_old** %25, align 8
  store %struct.protosw_old* %26, %struct.protosw_old** %7, align 8
  br label %27

27:                                               ; preds = %23, %16, %3
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @domain_guard_release(i32 %28)
  %30 = load %struct.protosw_old*, %struct.protosw_old** %7, align 8
  ret %struct.protosw_old* %30
}

declare dso_local i32 @domain_guard_deploy(...) #1

declare dso_local %struct.protosw* @pffindproto_locked(i32, i32, i32) #1

declare dso_local i32 @domain_guard_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
