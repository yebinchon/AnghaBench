; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_protocol.c_proto_unregister_plumber.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_protocol.c_proto_unregister_plumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_family_str = type { i32 }

@proto_family_mutex = common dso_local global i32 0, align 4
@proto_family_head = common dso_local global i32 0, align 4
@proto_fam_next = common dso_local global i32 0, align 4
@M_IFADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proto_unregister_plumber(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.proto_family_str*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @proto_family_mutex, align 4
  %7 = call i32 @lck_mtx_lock(i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.proto_family_str* @proto_plumber_find(i32 %8, i32 %9)
  store %struct.proto_family_str* %10, %struct.proto_family_str** %5, align 8
  %11 = load %struct.proto_family_str*, %struct.proto_family_str** %5, align 8
  %12 = icmp eq %struct.proto_family_str* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @proto_family_mutex, align 4
  %15 = call i32 @lck_mtx_unlock(i32 %14)
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.proto_family_str*, %struct.proto_family_str** %5, align 8
  %18 = load i32, i32* @proto_fam_next, align 4
  %19 = call i32 @TAILQ_REMOVE(i32* @proto_family_head, %struct.proto_family_str* %17, i32 %18)
  %20 = load %struct.proto_family_str*, %struct.proto_family_str** %5, align 8
  %21 = load i32, i32* @M_IFADDR, align 4
  %22 = call i32 @FREE(%struct.proto_family_str* %20, i32 %21)
  %23 = load i32, i32* @proto_family_mutex, align 4
  %24 = call i32 @lck_mtx_unlock(i32 %23)
  br label %25

25:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local %struct.proto_family_str* @proto_plumber_find(i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.proto_family_str*, i32) #1

declare dso_local i32 @FREE(%struct.proto_family_str*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
