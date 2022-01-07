; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_assert_bb_radio_manager.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_assert_bb_radio_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_client = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Couldn't find client\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @necp_client_assert_bb_radio_manager(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.necp_client*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = call i32 (...) @NECP_CLIENT_TREE_LOCK_SHARED()
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.necp_client* @necp_find_client_and_lock(i32 %8)
  store %struct.necp_client* %9, %struct.necp_client** %5, align 8
  %10 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %11 = icmp ne %struct.necp_client* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @necp_client_assert_bb_radio_manager_common(%struct.necp_client* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %17 = call i32 @NECP_CLIENT_UNLOCK(%struct.necp_client* %16)
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = call i32 @NECPLOG0(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOENT, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %12
  %23 = call i32 (...) @NECP_CLIENT_TREE_UNLOCK()
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @NECP_CLIENT_TREE_LOCK_SHARED(...) #1

declare dso_local %struct.necp_client* @necp_find_client_and_lock(i32) #1

declare dso_local i32 @necp_client_assert_bb_radio_manager_common(%struct.necp_client*, i32) #1

declare dso_local i32 @NECP_CLIENT_UNLOCK(%struct.necp_client*) #1

declare dso_local i32 @NECPLOG0(i32, i8*) #1

declare dso_local i32 @NECP_CLIENT_TREE_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
