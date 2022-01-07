; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_session_dump_all.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_session_dump_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_session = type { i32 }
%struct.necp_session_action_args = type { i64, i64 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"necp_session_dump_all invalid output buffer (%zu)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_session*, %struct.necp_session_action_args*, i32*)* @necp_session_dump_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_session_dump_all(%struct.necp_session* %0, %struct.necp_session_action_args* %1, i32* %2) #0 {
  %4 = alloca %struct.necp_session*, align 8
  %5 = alloca %struct.necp_session_action_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.necp_session* %0, %struct.necp_session** %4, align 8
  store %struct.necp_session_action_args* %1, %struct.necp_session_action_args** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %9 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %14 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12, %3
  %18 = load i32, i32* @LOG_ERR, align 4
  %19 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %20 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @NECPLOG(i32 %18, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %7, align 4
  br label %33

24:                                               ; preds = %12
  %25 = load %struct.necp_session*, %struct.necp_session** %4, align 8
  %26 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %27 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %30 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @necp_handle_policy_dump_all(%struct.necp_session* %25, i32 0, i32* null, i64 %28, i64 %31, i32 0)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %24, %17
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @NECPLOG(i32, i8*, i64) #1

declare dso_local i32 @necp_handle_policy_dump_all(%struct.necp_session*, i32, i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
