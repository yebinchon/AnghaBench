; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_ifnet_matches_agent.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_ifnet_matches_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { %struct.ifnet* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32*, i32)* @necp_ifnet_matches_agent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_ifnet_matches_agent(%struct.ifnet* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %10, %struct.ifnet** %8, align 8
  br label %11

11:                                               ; preds = %54, %3
  %12 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %13 = icmp ne %struct.ifnet* %12, null
  br i1 %13, label %14, label %59

14:                                               ; preds = %11
  %15 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %16 = call i32 @ifnet_lock_shared(%struct.ifnet* %15)
  %17 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %14
  store i64 0, i64* %9, align 8
  br label %22

22:                                               ; preds = %44, %21
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %22
  %29 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @uuid_compare(i32 %34, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %41 = call i32 @ifnet_lock_done(%struct.ifnet* %40)
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %4, align 4
  br label %61

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %9, align 8
  br label %22

47:                                               ; preds = %22
  br label %48

48:                                               ; preds = %47, %14
  %49 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %50 = call i32 @ifnet_lock_done(%struct.ifnet* %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %59

54:                                               ; preds = %48
  %55 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load %struct.ifnet*, %struct.ifnet** %57, align 8
  store %struct.ifnet* %58, %struct.ifnet** %8, align 8
  br label %11

59:                                               ; preds = %53, %11
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %39
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @ifnet_lock_shared(%struct.ifnet*) #1

declare dso_local i64 @uuid_compare(i32, i32) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
