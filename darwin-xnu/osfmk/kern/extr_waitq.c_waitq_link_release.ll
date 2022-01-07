; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_link_release.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_link_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.waitq_link = type { i32 }

@WQL_LINK = common dso_local global i32 0, align 4
@g_wqlinktable = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @waitq_link_release(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.waitq_link*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %17

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = load i32, i32* @WQL_LINK, align 4
  %10 = call %struct.waitq_link* @wql_get_reserved(i64 %8, i32 %9)
  store %struct.waitq_link* %10, %struct.waitq_link** %3, align 8
  %11 = load %struct.waitq_link*, %struct.waitq_link** %3, align 8
  %12 = icmp ne %struct.waitq_link* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  br label %17

14:                                               ; preds = %7
  %15 = load %struct.waitq_link*, %struct.waitq_link** %3, align 8
  %16 = call i32 @wql_put_link(%struct.waitq_link* %15)
  br label %17

17:                                               ; preds = %14, %13, %6
  ret void
}

declare dso_local %struct.waitq_link* @wql_get_reserved(i64, i32) #1

declare dso_local i32 @wql_put_link(%struct.waitq_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
