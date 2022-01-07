; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_mv_pool.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_mv_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_palist = type { i32 }
%struct.pf_pooladdr = type { i32 }

@entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_palist*, %struct.pf_palist*)* @pf_mv_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_mv_pool(%struct.pf_palist* %0, %struct.pf_palist* %1) #0 {
  %3 = alloca %struct.pf_palist*, align 8
  %4 = alloca %struct.pf_palist*, align 8
  %5 = alloca %struct.pf_pooladdr*, align 8
  store %struct.pf_palist* %0, %struct.pf_palist** %3, align 8
  store %struct.pf_palist* %1, %struct.pf_palist** %4, align 8
  br label %6

6:                                                ; preds = %10, %2
  %7 = load %struct.pf_palist*, %struct.pf_palist** %3, align 8
  %8 = call %struct.pf_pooladdr* @TAILQ_FIRST(%struct.pf_palist* %7)
  store %struct.pf_pooladdr* %8, %struct.pf_pooladdr** %5, align 8
  %9 = icmp ne %struct.pf_pooladdr* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load %struct.pf_palist*, %struct.pf_palist** %3, align 8
  %12 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %5, align 8
  %13 = load i32, i32* @entries, align 4
  %14 = call i32 @TAILQ_REMOVE(%struct.pf_palist* %11, %struct.pf_pooladdr* %12, i32 %13)
  %15 = load %struct.pf_palist*, %struct.pf_palist** %4, align 8
  %16 = load %struct.pf_pooladdr*, %struct.pf_pooladdr** %5, align 8
  %17 = load i32, i32* @entries, align 4
  %18 = call i32 @TAILQ_INSERT_TAIL(%struct.pf_palist* %15, %struct.pf_pooladdr* %16, i32 %17)
  br label %6

19:                                               ; preds = %6
  ret void
}

declare dso_local %struct.pf_pooladdr* @TAILQ_FIRST(%struct.pf_palist*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.pf_palist*, %struct.pf_pooladdr*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.pf_palist*, %struct.pf_pooladdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
