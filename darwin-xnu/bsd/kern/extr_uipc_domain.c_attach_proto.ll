; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_domain.c_attach_proto.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_domain.c_attach_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protosw = type { i32, i32, %struct.protosw*, %struct.domain* }
%struct.domain = type { i32 }

@PR_ATTACHED = common dso_local global i32 0, align 4
@pr_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.protosw*, %struct.domain*)* @attach_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_proto(%struct.protosw* %0, %struct.domain* %1) #0 {
  %3 = alloca %struct.protosw*, align 8
  %4 = alloca %struct.domain*, align 8
  store %struct.protosw* %0, %struct.protosw** %3, align 8
  store %struct.domain* %1, %struct.domain** %4, align 8
  %5 = call i32 (...) @domain_proto_mtx_lock_assert_held()
  %6 = load %struct.protosw*, %struct.protosw** %3, align 8
  %7 = getelementptr inbounds %struct.protosw, %struct.protosw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PR_ATTACHED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @VERIFY(i32 %13)
  %15 = load %struct.protosw*, %struct.protosw** %3, align 8
  %16 = getelementptr inbounds %struct.protosw, %struct.protosw* %15, i32 0, i32 3
  %17 = load %struct.domain*, %struct.domain** %16, align 8
  %18 = icmp eq %struct.domain* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @VERIFY(i32 %19)
  %21 = load %struct.protosw*, %struct.protosw** %3, align 8
  %22 = getelementptr inbounds %struct.protosw, %struct.protosw* %21, i32 0, i32 2
  %23 = load %struct.protosw*, %struct.protosw** %22, align 8
  %24 = icmp eq %struct.protosw* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @VERIFY(i32 %25)
  %27 = load %struct.domain*, %struct.domain** %4, align 8
  %28 = getelementptr inbounds %struct.domain, %struct.domain* %27, i32 0, i32 0
  %29 = load %struct.protosw*, %struct.protosw** %3, align 8
  %30 = load i32, i32* @pr_entry, align 4
  %31 = call i32 @TAILQ_INSERT_TAIL(i32* %28, %struct.protosw* %29, i32 %30)
  %32 = load i32, i32* @PR_ATTACHED, align 4
  %33 = load %struct.protosw*, %struct.protosw** %3, align 8
  %34 = getelementptr inbounds %struct.protosw, %struct.protosw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.domain*, %struct.domain** %4, align 8
  %38 = load %struct.protosw*, %struct.protosw** %3, align 8
  %39 = getelementptr inbounds %struct.protosw, %struct.protosw* %38, i32 0, i32 3
  store %struct.domain* %37, %struct.domain** %39, align 8
  %40 = load %struct.protosw*, %struct.protosw** %3, align 8
  %41 = load %struct.protosw*, %struct.protosw** %3, align 8
  %42 = getelementptr inbounds %struct.protosw, %struct.protosw* %41, i32 0, i32 2
  store %struct.protosw* %40, %struct.protosw** %42, align 8
  %43 = load %struct.protosw*, %struct.protosw** %3, align 8
  %44 = getelementptr inbounds %struct.protosw, %struct.protosw* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pru_sanitize(i32 %45)
  ret void
}

declare dso_local i32 @domain_proto_mtx_lock_assert_held(...) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.protosw*, i32) #1

declare dso_local i32 @pru_sanitize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
