; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wql_alloc_link.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_wql_alloc_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq_link = type { i32 }
%struct.lt_elem = type { i32 }

@g_wqlinktable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.waitq_link* (i32)* @wql_alloc_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.waitq_link* @wql_alloc_link(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lt_elem*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.lt_elem* @ltable_alloc_elem(i32* @g_wqlinktable, i32 %4, i32 1, i32 0)
  store %struct.lt_elem* %5, %struct.lt_elem** %3, align 8
  %6 = load %struct.lt_elem*, %struct.lt_elem** %3, align 8
  %7 = call i32 @wql_do_alloc_stats(%struct.lt_elem* %6)
  %8 = load %struct.lt_elem*, %struct.lt_elem** %3, align 8
  %9 = bitcast %struct.lt_elem* %8 to %struct.waitq_link*
  ret %struct.waitq_link* %9
}

declare dso_local %struct.lt_elem* @ltable_alloc_elem(i32*, i32, i32, i32) #1

declare dso_local i32 @wql_do_alloc_stats(%struct.lt_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
