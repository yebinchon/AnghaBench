; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace_ptss.c_dtrace_ptss_exec_exit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace_ptss.c_dtrace_ptss_exec_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.dtrace_ptss_page*, i32*, i32, i32 }
%struct.dtrace_ptss_page = type { %struct.dtrace_ptss_page* }

@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_ptss_exec_exit(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca %struct.dtrace_ptss_page*, align 8
  %4 = alloca %struct.dtrace_ptss_page*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %5 = load %struct.proc*, %struct.proc** %2, align 8
  %6 = getelementptr inbounds %struct.proc, %struct.proc* %5, i32 0, i32 3
  %7 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %8 = call i32 @LCK_MTX_ASSERT(i32* %6, i32 %7)
  %9 = load %struct.proc*, %struct.proc** %2, align 8
  %10 = getelementptr inbounds %struct.proc, %struct.proc* %9, i32 0, i32 2
  %11 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %12 = call i32 @LCK_MTX_ASSERT(i32* %10, i32 %11)
  %13 = load %struct.proc*, %struct.proc** %2, align 8
  %14 = getelementptr inbounds %struct.proc, %struct.proc* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.proc*, %struct.proc** %2, align 8
  %16 = getelementptr inbounds %struct.proc, %struct.proc* %15, i32 0, i32 0
  %17 = load %struct.dtrace_ptss_page*, %struct.dtrace_ptss_page** %16, align 8
  store %struct.dtrace_ptss_page* %17, %struct.dtrace_ptss_page** %3, align 8
  %18 = load %struct.proc*, %struct.proc** %2, align 8
  %19 = getelementptr inbounds %struct.proc, %struct.proc* %18, i32 0, i32 0
  store %struct.dtrace_ptss_page* null, %struct.dtrace_ptss_page** %19, align 8
  br label %20

20:                                               ; preds = %23, %1
  %21 = load %struct.dtrace_ptss_page*, %struct.dtrace_ptss_page** %3, align 8
  %22 = icmp ne %struct.dtrace_ptss_page* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.dtrace_ptss_page*, %struct.dtrace_ptss_page** %3, align 8
  %25 = getelementptr inbounds %struct.dtrace_ptss_page, %struct.dtrace_ptss_page* %24, i32 0, i32 0
  %26 = load %struct.dtrace_ptss_page*, %struct.dtrace_ptss_page** %25, align 8
  store %struct.dtrace_ptss_page* %26, %struct.dtrace_ptss_page** %4, align 8
  %27 = load %struct.dtrace_ptss_page*, %struct.dtrace_ptss_page** %3, align 8
  %28 = load i32, i32* @M_TEMP, align 4
  %29 = call i32 @_FREE(%struct.dtrace_ptss_page* %27, i32 %28)
  %30 = load %struct.dtrace_ptss_page*, %struct.dtrace_ptss_page** %4, align 8
  store %struct.dtrace_ptss_page* %30, %struct.dtrace_ptss_page** %3, align 8
  br label %20

31:                                               ; preds = %20
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @_FREE(%struct.dtrace_ptss_page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
