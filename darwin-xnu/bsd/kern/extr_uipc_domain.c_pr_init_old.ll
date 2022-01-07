; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_domain.c_pr_init_old.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_domain.c_pr_init_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protosw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (...)* }
%struct.domain = type { i32 }

@PR_OLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.protosw*, %struct.domain*)* @pr_init_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pr_init_old(%struct.protosw* %0, %struct.domain* %1) #0 {
  %3 = alloca %struct.protosw*, align 8
  %4 = alloca %struct.domain*, align 8
  store %struct.protosw* %0, %struct.protosw** %3, align 8
  store %struct.domain* %1, %struct.domain** %4, align 8
  %5 = load %struct.protosw*, %struct.protosw** %3, align 8
  %6 = getelementptr inbounds %struct.protosw, %struct.protosw* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @PR_OLD, align 4
  %9 = and i32 %7, %8
  %10 = call i32 @VERIFY(i32 %9)
  %11 = load %struct.protosw*, %struct.protosw** %3, align 8
  %12 = getelementptr inbounds %struct.protosw, %struct.protosw* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @VERIFY(i32 %15)
  %17 = load %struct.protosw*, %struct.protosw** %3, align 8
  %18 = getelementptr inbounds %struct.protosw, %struct.protosw* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (...)*, i32 (...)** %20, align 8
  %22 = icmp ne i32 (...)* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.protosw*, %struct.protosw** %3, align 8
  %25 = getelementptr inbounds %struct.protosw, %struct.protosw* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (...)*, i32 (...)** %27, align 8
  %29 = call i32 (...) %28()
  br label %30

30:                                               ; preds = %23, %2
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
