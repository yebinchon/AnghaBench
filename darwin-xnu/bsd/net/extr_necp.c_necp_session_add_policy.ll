; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_session_add_policy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_session_add_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_session = type { i32 }
%struct.necp_session_action_args = type { i32, i64, i32, i32 }

@NECP_MAX_POLICY_SIZE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"necp_session_add_policy invalid input (%zu)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"necp_session_add_policy invalid output buffer (%zu)\00", align 1
@M_NECP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"necp_session_add_policy tlv copyin error (%d)\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"necp_session_add_policy failed to add policy (%d)\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"necp_session_add_policy policy_id copyout error (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_session*, %struct.necp_session_action_args*, i32*)* @necp_session_add_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_session_add_policy(%struct.necp_session* %0, %struct.necp_session_action_args* %1, i32* %2) #0 {
  %4 = alloca %struct.necp_session*, align 8
  %5 = alloca %struct.necp_session_action_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.necp_session* %0, %struct.necp_session** %4, align 8
  store %struct.necp_session_action_args* %1, %struct.necp_session_action_args** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %10 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %11 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %3
  %15 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %16 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NECP_MAX_POLICY_SIZE, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %22 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20, %14, %3
  %26 = load i32, i32* @LOG_ERR, align 4
  %27 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %28 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @NECPLOG(i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %7, align 4
  br label %102

32:                                               ; preds = %20
  %33 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %34 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 4
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %40 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38, %32
  %44 = load i32, i32* @LOG_ERR, align 4
  %45 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %46 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @NECPLOG(i32 %44, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %7, align 4
  br label %102

50:                                               ; preds = %38
  %51 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %52 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @M_NECP, align 4
  %55 = load i32, i32* @M_WAITOK, align 4
  %56 = load i32, i32* @M_ZERO, align 4
  %57 = or i32 %55, %56
  %58 = call i32* @_MALLOC(i32 %53, i32 %54, i32 %57)
  store i32* %58, i32** %8, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %7, align 4
  br label %102

62:                                               ; preds = %50
  %63 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %64 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %68 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @copyin(i64 %65, i32* %66, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %62
  %74 = load i32, i32* @LOG_ERR, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @NECPLOG(i32 %74, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %102

77:                                               ; preds = %62
  %78 = load %struct.necp_session*, %struct.necp_session** %4, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %81 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @necp_handle_policy_add(%struct.necp_session* %78, i32 0, i32* null, i32* %79, i32 %82, i32 0, i32* %7)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %77
  %87 = load i32, i32* @LOG_ERR, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @NECPLOG(i32 %87, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %102

90:                                               ; preds = %77
  %91 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %5, align 8
  %92 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @copyout(i32* %9, i32 %93, i32 4)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i32, i32* @LOG_ERR, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @NECPLOG(i32 %98, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  br label %102

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %97, %86, %73, %60, %43, %25
  %103 = load i32*, i32** %8, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* @M_NECP, align 4
  %108 = call i32 @FREE(i32* %106, i32 %107)
  store i32* null, i32** %8, align 8
  br label %109

109:                                              ; preds = %105, %102
  %110 = load i32, i32* %7, align 4
  %111 = load i32*, i32** %6, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32 @NECPLOG(i32, i8*, i32) #1

declare dso_local i32* @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @copyin(i64, i32*, i32) #1

declare dso_local i32 @necp_handle_policy_add(%struct.necp_session*, i32, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @FREE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
