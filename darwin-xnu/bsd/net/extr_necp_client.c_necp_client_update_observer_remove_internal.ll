; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_update_observer_remove_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_update_observer_remove_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_fd_data = type { i64, i32 }
%struct.necp_client = type { i32 }
%struct.necp_client_update = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@necp_observer_message_limit = common dso_local global i64 0, align 8
@M_NECP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@NECP_CLIENT_UPDATE_TYPE_REMOVE = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.necp_fd_data*, %struct.necp_client*)* @necp_client_update_observer_remove_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @necp_client_update_observer_remove_internal(%struct.necp_fd_data* %0, %struct.necp_client* %1) #0 {
  %3 = alloca %struct.necp_fd_data*, align 8
  %4 = alloca %struct.necp_client*, align 8
  %5 = alloca %struct.necp_client_update*, align 8
  store %struct.necp_fd_data* %0, %struct.necp_fd_data** %3, align 8
  store %struct.necp_client* %1, %struct.necp_client** %4, align 8
  %6 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %7 = call i32 @NECP_FD_LOCK(%struct.necp_fd_data* %6)
  %8 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %9 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @necp_observer_message_limit, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %15 = call i32 @NECP_FD_UNLOCK(%struct.necp_fd_data* %14)
  br label %52

16:                                               ; preds = %2
  %17 = load i32, i32* @M_NECP, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.necp_client_update* @_MALLOC(i32 12, i32 %17, i32 %20)
  store %struct.necp_client_update* %21, %struct.necp_client_update** %5, align 8
  %22 = load %struct.necp_client_update*, %struct.necp_client_update** %5, align 8
  %23 = icmp ne %struct.necp_client_update* %22, null
  br i1 %23, label %24, label %49

24:                                               ; preds = %16
  %25 = load %struct.necp_client_update*, %struct.necp_client_update** %5, align 8
  %26 = getelementptr inbounds %struct.necp_client_update, %struct.necp_client_update* %25, i32 0, i32 0
  store i32 4, i32* %26, align 4
  %27 = load %struct.necp_client_update*, %struct.necp_client_update** %5, align 8
  %28 = getelementptr inbounds %struct.necp_client_update, %struct.necp_client_update* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.necp_client*, %struct.necp_client** %4, align 8
  %31 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @uuid_copy(i32 %29, i32 %32)
  %34 = load i32, i32* @NECP_CLIENT_UPDATE_TYPE_REMOVE, align 4
  %35 = load %struct.necp_client_update*, %struct.necp_client_update** %5, align 8
  %36 = getelementptr inbounds %struct.necp_client_update, %struct.necp_client_update* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %39 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %38, i32 0, i32 1
  %40 = load %struct.necp_client_update*, %struct.necp_client_update** %5, align 8
  %41 = load i32, i32* @chain, align 4
  %42 = call i32 @TAILQ_INSERT_TAIL(i32* %39, %struct.necp_client_update* %40, i32 %41)
  %43 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %44 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %48 = call i32 @necp_fd_notify(%struct.necp_fd_data* %47, i32 1)
  br label %49

49:                                               ; preds = %24, %16
  %50 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %51 = call i32 @NECP_FD_UNLOCK(%struct.necp_fd_data* %50)
  br label %52

52:                                               ; preds = %49, %13
  ret void
}

declare dso_local i32 @NECP_FD_LOCK(%struct.necp_fd_data*) #1

declare dso_local i32 @NECP_FD_UNLOCK(%struct.necp_fd_data*) #1

declare dso_local %struct.necp_client_update* @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @uuid_copy(i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.necp_client_update*, i32) #1

declare dso_local i32 @necp_fd_notify(%struct.necp_fd_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
