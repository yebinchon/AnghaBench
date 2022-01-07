; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_assert_bb_radio_manager_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_assert_bb_radio_manager_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_client = type { i32, i32, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"BB radio manager agent not found\00", align 1
@FALSE = common dso_local global i32 0, align 4
@NETAGENT_MESSAGE_TYPE_CLIENT_UNASSERT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NETAGENT_MESSAGE_TYPE_CLIENT_ASSERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"netagent_client_message failed\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_client*, i32)* @necp_client_assert_bb_radio_manager_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_client_assert_bb_radio_manager_common(%struct.necp_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.necp_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.necp_client* %0, %struct.necp_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.necp_client*, %struct.necp_client** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @necp_client_lookup_bb_radio_manager(%struct.necp_client* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @LOG_ERR, align 4
  %16 = call i32 @NECPLOG0(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %61

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @FALSE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i32, i32* @NETAGENT_MESSAGE_TYPE_CLIENT_UNASSERT, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.necp_client*, %struct.necp_client** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @necp_client_remove_assertion(%struct.necp_client* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %61

30:                                               ; preds = %22
  br label %33

31:                                               ; preds = %18
  %32 = load i32, i32* @NETAGENT_MESSAGE_TYPE_CLIENT_ASSERT, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.necp_client*, %struct.necp_client** %4, align 8
  %36 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.necp_client*, %struct.necp_client** %4, align 8
  %39 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.necp_client*, %struct.necp_client** %4, align 8
  %42 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @netagent_client_message(i32 %34, i32 %37, i32 %40, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %33
  %49 = load i32, i32* @LOG_ERR, align 4
  %50 = call i32 @NECPLOG0(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %61

52:                                               ; preds = %33
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @TRUE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.necp_client*, %struct.necp_client** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @necp_client_add_assertion(%struct.necp_client* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %52
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %48, %28, %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @necp_client_lookup_bb_radio_manager(%struct.necp_client*, i32) #1

declare dso_local i32 @NECPLOG0(i32, i8*) #1

declare dso_local i32 @necp_client_remove_assertion(%struct.necp_client*, i32) #1

declare dso_local i32 @netagent_client_message(i32, i32, i32, i32, i32) #1

declare dso_local i32 @necp_client_add_assertion(%struct.necp_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
