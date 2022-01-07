; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_agent_use.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_agent_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_fd_data = type { i32 }
%struct.necp_client_action_args = type { i64, i32, i32, i64 }
%struct.necp_client = type { i32 }
%struct.necp_agent_use_parameters = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Copyin client_id error (%d)\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Parameters copyin error (%d)\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Parameters copyout error (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_fd_data*, %struct.necp_client_action_args*, i32*)* @necp_client_agent_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_client_agent_use(%struct.necp_fd_data* %0, %struct.necp_client_action_args* %1, i32* %2) #0 {
  %4 = alloca %struct.necp_fd_data*, align 8
  %5 = alloca %struct.necp_client_action_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.necp_client*, align 8
  %9 = alloca %struct.necp_agent_use_parameters*, align 8
  %10 = alloca %struct.necp_agent_use_parameters, align 4
  store %struct.necp_fd_data* %0, %struct.necp_fd_data** %4, align 8
  store %struct.necp_client_action_args* %1, %struct.necp_client_action_args** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.necp_client* null, %struct.necp_client** %8, align 8
  %11 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %12 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %3
  %16 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %17 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 8
  br i1 %20, label %32, label %21

21:                                               ; preds = %15
  %22 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %23 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 8
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %29 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %21, %15, %3
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %7, align 4
  br label %98

34:                                               ; preds = %27
  %35 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %36 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.necp_agent_use_parameters*, %struct.necp_agent_use_parameters** %9, align 8
  %39 = call i32 @copyin(i64 %37, %struct.necp_agent_use_parameters* %38, i32 8)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @NECPLOG(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %98

46:                                               ; preds = %34
  %47 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %48 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %51 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @copyin(i64 %49, %struct.necp_agent_use_parameters* %10, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load i32, i32* @LOG_ERR, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @NECPLOG(i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %98

60:                                               ; preds = %46
  %61 = load %struct.necp_fd_data*, %struct.necp_fd_data** %4, align 8
  %62 = call i32 @NECP_FD_LOCK(%struct.necp_fd_data* %61)
  %63 = load %struct.necp_fd_data*, %struct.necp_fd_data** %4, align 8
  %64 = load %struct.necp_agent_use_parameters*, %struct.necp_agent_use_parameters** %9, align 8
  %65 = call %struct.necp_client* @necp_client_fd_find_client_and_lock(%struct.necp_fd_data* %63, %struct.necp_agent_use_parameters* %64)
  store %struct.necp_client* %65, %struct.necp_client** %8, align 8
  %66 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %67 = icmp ne %struct.necp_client* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.necp_agent_use_parameters, %struct.necp_agent_use_parameters* %10, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.necp_agent_use_parameters, %struct.necp_agent_use_parameters* %10, i32 0, i32 0
  %72 = call i32 @netagent_use(i32 %70, i32* %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.necp_client*, %struct.necp_client** %8, align 8
  %74 = call i32 @NECP_CLIENT_UNLOCK(%struct.necp_client* %73)
  br label %77

75:                                               ; preds = %60
  %76 = load i32, i32* @ENOENT, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %68
  %78 = load %struct.necp_fd_data*, %struct.necp_fd_data** %4, align 8
  %79 = call i32 @NECP_FD_UNLOCK(%struct.necp_fd_data* %78)
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %84 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %5, align 8
  %87 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @copyout(%struct.necp_agent_use_parameters* %10, i64 %85, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %82
  %93 = load i32, i32* @LOG_ERR, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @NECPLOG(i32 %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %98

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %96, %77
  br label %98

98:                                               ; preds = %97, %92, %56, %42, %32
  %99 = load i32, i32* %7, align 4
  %100 = load i32*, i32** %6, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i32 @copyin(i64, %struct.necp_agent_use_parameters*, i32) #1

declare dso_local i32 @NECPLOG(i32, i8*, i32) #1

declare dso_local i32 @NECP_FD_LOCK(%struct.necp_fd_data*) #1

declare dso_local %struct.necp_client* @necp_client_fd_find_client_and_lock(%struct.necp_fd_data*, %struct.necp_agent_use_parameters*) #1

declare dso_local i32 @netagent_use(i32, i32*) #1

declare dso_local i32 @NECP_CLIENT_UNLOCK(%struct.necp_client*) #1

declare dso_local i32 @NECP_FD_UNLOCK(%struct.necp_fd_data*) #1

declare dso_local i32 @copyout(%struct.necp_agent_use_parameters*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
