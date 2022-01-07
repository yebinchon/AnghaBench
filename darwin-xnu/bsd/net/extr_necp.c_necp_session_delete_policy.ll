; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_session_delete_policy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_session_delete_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_session = type { i32 }
%struct.necp_session_action_args = type { i32, i64 }
%struct.necp_session_policy = type { i64 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"necp_session_delete_policy invalid input (%zu)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"necp_session_delete_policy policy_id copyin error (%d)\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"necp_session_delete_policy failed to find policy with id %u\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_session*, %struct.necp_session_action_args*, i32*)* @necp_session_delete_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_session_delete_policy(%struct.necp_session* %0, %struct.necp_session_action_args* %1, i32* %2) #0 {
  %4 = alloca %struct.necp_session*, align 8
  %5 = alloca %struct.necp_session_action_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.necp_session_policy*, align 8
  store %struct.necp_session* %0, %struct.necp_session** %4, align 8
  store %struct.necp_session_action_args* %1, %struct.necp_session_action_args** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %11 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 4
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %17 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15, %3
  %21 = load i32, i32* @LOG_ERR, align 4
  %22 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %23 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @NECPLOG(i32 %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %7, align 4
  br label %58

27:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  %28 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %29 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @copyin(i64 %30, i32* %8, i32 4)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @LOG_ERR, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @NECPLOG(i32 %35, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %58

38:                                               ; preds = %27
  %39 = load %struct.necp_session*, %struct.necp_session** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call %struct.necp_session_policy* @necp_policy_find(%struct.necp_session* %39, i32 %40)
  store %struct.necp_session_policy* %41, %struct.necp_session_policy** %9, align 8
  %42 = load %struct.necp_session_policy*, %struct.necp_session_policy** %9, align 8
  %43 = icmp eq %struct.necp_session_policy* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load %struct.necp_session_policy*, %struct.necp_session_policy** %9, align 8
  %46 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44, %38
  %50 = load i32, i32* @LOG_ERR, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @NECPLOG(i32 %50, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @ENOENT, align 4
  store i32 %53, i32* %7, align 4
  br label %58

54:                                               ; preds = %44
  %55 = load %struct.necp_session*, %struct.necp_session** %4, align 8
  %56 = load %struct.necp_session_policy*, %struct.necp_session_policy** %9, align 8
  %57 = call i32 @necp_policy_mark_for_deletion(%struct.necp_session* %55, %struct.necp_session_policy* %56)
  br label %58

58:                                               ; preds = %54, %49, %34, %20
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** %6, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @NECPLOG(i32, i8*, i32) #1

declare dso_local i32 @copyin(i64, i32*, i32) #1

declare dso_local %struct.necp_session_policy* @necp_policy_find(%struct.necp_session*, i32) #1

declare dso_local i32 @necp_policy_mark_for_deletion(%struct.necp_session*, %struct.necp_session_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
