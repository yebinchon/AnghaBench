; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifnet_remove_from_ordered_list.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifnet_remove_from_ordered_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@ifnet_ordered_head = common dso_local global i32 0, align 4
@if_ordered_link = common dso_local global i32 0, align 4
@if_ordered_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ifnet_remove_from_ordered_list(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %3 = call i32 (...) @ifnet_head_assert_exclusive()
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = load i32, i32* @if_ordered_link, align 4
  %6 = call i32 @TAILQ_REMOVE(i32* @ifnet_ordered_head, %struct.ifnet* %4, i32 %5)
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i32* null, i32** %9, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load i64, i64* @if_ordered_count, align 8
  %14 = icmp sgt i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @VERIFY(i32 %15)
  %17 = load i64, i64* @if_ordered_count, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* @if_ordered_count, align 8
  ret void
}

declare dso_local i32 @ifnet_head_assert_exclusive(...) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ifnet*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
