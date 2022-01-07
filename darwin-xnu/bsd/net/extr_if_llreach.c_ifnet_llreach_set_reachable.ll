; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llreach.c_ifnet_llreach_set_reachable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llreach.c_ifnet_llreach_set_reachable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32 }
%struct.if_llreach = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IF_LLREACH_MAXLEN = common dso_local global i32 0, align 4
@ll_reach_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ifnet_llreach_set_reachable(%struct.ifnet* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.if_llreach, align 4
  %10 = alloca %struct.if_llreach*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @IF_LLREACH_MAXLEN, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @VERIFY(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %9, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %9, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* @IF_LLREACH_MAXLEN, align 4
  %23 = call i32 @bcopy(i8* %19, i32* %21, i32 %22)
  %24 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 0
  %26 = call i32 @lck_rw_lock_shared(i32* %25)
  %27 = load i32, i32* @ll_reach_tree, align 4
  %28 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 1
  %30 = call %struct.if_llreach* @RB_FIND(i32 %27, i32* %29, %struct.if_llreach* %9)
  store %struct.if_llreach* %30, %struct.if_llreach** %10, align 8
  %31 = load %struct.if_llreach*, %struct.if_llreach** %10, align 8
  %32 = icmp eq %struct.if_llreach* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %4
  %34 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 0
  %36 = call i32 @lck_rw_done(i32* %35)
  br label %44

37:                                               ; preds = %4
  %38 = call i32 (...) @net_uptime()
  %39 = load %struct.if_llreach*, %struct.if_llreach** %10, align 8
  %40 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 0
  %43 = call i32 @lck_rw_done(i32* %42)
  br label %44

44:                                               ; preds = %37, %33
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bcopy(i8*, i32*, i32) #1

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local %struct.if_llreach* @RB_FIND(i32, i32*, %struct.if_llreach*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

declare dso_local i32 @net_uptime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
