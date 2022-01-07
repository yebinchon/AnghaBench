; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_policy_delete.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_policy_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_session = type { i32 }
%struct.necp_session_policy = type { i32*, i32*, i32* }

@FALSE = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@M_NECP = common dso_local global i32 0, align 4
@M_NECP_SESSION_POLICY = common dso_local global i32 0, align 4
@necp_debug = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Removed NECP policy\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_session*, %struct.necp_session_policy*)* @necp_policy_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_policy_delete(%struct.necp_session* %0, %struct.necp_session_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.necp_session*, align 8
  %5 = alloca %struct.necp_session_policy*, align 8
  store %struct.necp_session* %0, %struct.necp_session** %4, align 8
  store %struct.necp_session_policy* %1, %struct.necp_session_policy** %5, align 8
  %6 = load %struct.necp_session*, %struct.necp_session** %4, align 8
  %7 = icmp eq %struct.necp_session* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.necp_session_policy*, %struct.necp_session_policy** %5, align 8
  %10 = icmp eq %struct.necp_session_policy* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %3, align 4
  br label %66

13:                                               ; preds = %8
  %14 = load %struct.necp_session_policy*, %struct.necp_session_policy** %5, align 8
  %15 = load i32, i32* @chain, align 4
  %16 = call i32 @LIST_REMOVE(%struct.necp_session_policy* %14, i32 %15)
  %17 = load %struct.necp_session_policy*, %struct.necp_session_policy** %5, align 8
  %18 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load %struct.necp_session_policy*, %struct.necp_session_policy** %5, align 8
  %23 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @M_NECP, align 4
  %26 = call i32 @FREE(i32* %24, i32 %25)
  %27 = load %struct.necp_session_policy*, %struct.necp_session_policy** %5, align 8
  %28 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %21, %13
  %30 = load %struct.necp_session_policy*, %struct.necp_session_policy** %5, align 8
  %31 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.necp_session_policy*, %struct.necp_session_policy** %5, align 8
  %36 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @M_NECP, align 4
  %39 = call i32 @FREE(i32* %37, i32 %38)
  %40 = load %struct.necp_session_policy*, %struct.necp_session_policy** %5, align 8
  %41 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %34, %29
  %43 = load %struct.necp_session_policy*, %struct.necp_session_policy** %5, align 8
  %44 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.necp_session_policy*, %struct.necp_session_policy** %5, align 8
  %49 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @M_NECP, align 4
  %52 = call i32 @FREE(i32* %50, i32 %51)
  %53 = load %struct.necp_session_policy*, %struct.necp_session_policy** %5, align 8
  %54 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %47, %42
  %56 = load %struct.necp_session_policy*, %struct.necp_session_policy** %5, align 8
  %57 = load i32, i32* @M_NECP_SESSION_POLICY, align 4
  %58 = call i32 @FREE_ZONE(%struct.necp_session_policy* %56, i32 24, i32 %57)
  %59 = load i64, i64* @necp_debug, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @LOG_DEBUG, align 4
  %63 = call i32 @NECPLOG0(i32 %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %55
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %11
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @LIST_REMOVE(%struct.necp_session_policy*, i32) #1

declare dso_local i32 @FREE(i32*, i32) #1

declare dso_local i32 @FREE_ZONE(%struct.necp_session_policy*, i32, i32) #1

declare dso_local i32 @NECPLOG0(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
