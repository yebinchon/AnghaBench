; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_clone_detach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_clone_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_clone = type { i64, i32, i32, i32 }

@ifc_list = common dso_local global i32 0, align 4
@M_CLONE = common dso_local global i32 0, align 4
@ifnet_lock_group = common dso_local global i32 0, align 4
@if_cloners_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @if_clone_detach(%struct.if_clone* %0) #0 {
  %2 = alloca %struct.if_clone*, align 8
  store %struct.if_clone* %0, %struct.if_clone** %2, align 8
  %3 = load %struct.if_clone*, %struct.if_clone** %2, align 8
  %4 = load i32, i32* @ifc_list, align 4
  %5 = call i32 @LIST_REMOVE(%struct.if_clone* %3, i32 %4)
  %6 = load %struct.if_clone*, %struct.if_clone** %2, align 8
  %7 = getelementptr inbounds %struct.if_clone, %struct.if_clone* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @M_CLONE, align 4
  %10 = call i32 @FREE(i32 %8, i32 %9)
  %11 = load %struct.if_clone*, %struct.if_clone** %2, align 8
  %12 = getelementptr inbounds %struct.if_clone, %struct.if_clone* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.if_clone*, %struct.if_clone** %2, align 8
  %17 = getelementptr inbounds %struct.if_clone, %struct.if_clone* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @zdestroy(i32 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.if_clone*, %struct.if_clone** %2, align 8
  %22 = getelementptr inbounds %struct.if_clone, %struct.if_clone* %21, i32 0, i32 1
  %23 = load i32, i32* @ifnet_lock_group, align 4
  %24 = call i32 @lck_mtx_destroy(i32* %22, i32 %23)
  %25 = load i32, i32* @if_cloners_count, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @if_cloners_count, align 4
  ret void
}

declare dso_local i32 @LIST_REMOVE(%struct.if_clone*, i32) #1

declare dso_local i32 @FREE(i32, i32) #1

declare dso_local i32 @zdestroy(i32) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
