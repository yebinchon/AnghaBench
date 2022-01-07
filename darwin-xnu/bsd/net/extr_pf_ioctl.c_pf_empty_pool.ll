; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_empty_pool.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_empty_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_palist = type { i32 }
%struct.pf_pooladdr = type { i32, i32 }

@PFI_KIF_REF_RULE = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@pf_pooladdr_pl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_palist*)* @pf_empty_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_empty_pool(%struct.pf_palist* %0) #0 {
  %2 = alloca %struct.pf_palist*, align 8
  %3 = alloca %struct.pf_pooladdr*, align 8
  store %struct.pf_palist* %0, %struct.pf_palist** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = load %struct.pf_palist*, %struct.pf_palist** %2, align 8
  %6 = call %struct.pf_pooladdr* @TAILQ_FIRST(%struct.pf_palist* %5)
  store %struct.pf_pooladdr* %6, %struct.pf_pooladdr** %3, align 8
  %7 = icmp ne %struct.pf_pooladdr* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %4
  %9 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %3, align 8
  %10 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %9, i32 0, i32 1
  %11 = call i32 @pfi_dynaddr_remove(i32* %10)
  %12 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %3, align 8
  %13 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %12, i32 0, i32 1
  %14 = call i32 @pf_tbladdr_remove(i32* %13)
  %15 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %3, align 8
  %16 = getelementptr inbounds %struct.pf_pooladdr, %struct.pf_pooladdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PFI_KIF_REF_RULE, align 4
  %19 = call i32 @pfi_kif_unref(i32 %17, i32 %18)
  %20 = load %struct.pf_palist*, %struct.pf_palist** %2, align 8
  %21 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %3, align 8
  %22 = load i32, i32* @entries, align 4
  %23 = call i32 @TAILQ_REMOVE(%struct.pf_palist* %20, %struct.pf_pooladdr* %21, i32 %22)
  %24 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %3, align 8
  %25 = call i32 @pool_put(i32* @pf_pooladdr_pl, %struct.pf_pooladdr* %24)
  br label %4

26:                                               ; preds = %4
  ret void
}

declare dso_local %struct.pf_pooladdr* @TAILQ_FIRST(%struct.pf_palist*) #1

declare dso_local i32 @pfi_dynaddr_remove(i32*) #1

declare dso_local i32 @pf_tbladdr_remove(i32*) #1

declare dso_local i32 @pfi_kif_unref(i32, i32) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.pf_palist*, %struct.pf_pooladdr*, i32) #1

declare dso_local i32 @pool_put(i32*, %struct.pf_pooladdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
