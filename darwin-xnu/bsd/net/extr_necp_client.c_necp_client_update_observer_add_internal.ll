; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_update_observer_add_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_update_observer_add_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_fd_data = type { i64, i32 }
%struct.necp_client = type { i32, i32, i32 }
%struct.necp_client_update = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@necp_observer_message_limit = common dso_local global i64 0, align 8
@M_NECP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@NECP_CLIENT_UPDATE_TYPE_PARAMETERS = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.necp_fd_data*, %struct.necp_client*)* @necp_client_update_observer_add_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @necp_client_update_observer_add_internal(%struct.necp_fd_data* %0, %struct.necp_client* %1) #0 {
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
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.necp_client*, %struct.necp_client** %4, align 8
  %18 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 24, %20
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @M_NECP, align 4
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.necp_client_update* @_MALLOC(i32 %22, i32 %23, i32 %26)
  store %struct.necp_client_update* %27, %struct.necp_client_update** %5, align 8
  %28 = load %struct.necp_client_update*, %struct.necp_client_update** %5, align 8
  %29 = icmp ne %struct.necp_client_update* %28, null
  br i1 %29, label %30, label %71

30:                                               ; preds = %16
  %31 = load %struct.necp_client*, %struct.necp_client** %4, align 8
  %32 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 4, %34
  %36 = load %struct.necp_client_update*, %struct.necp_client_update** %5, align 8
  %37 = getelementptr inbounds %struct.necp_client_update, %struct.necp_client_update* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.necp_client_update*, %struct.necp_client_update** %5, align 8
  %39 = getelementptr inbounds %struct.necp_client_update, %struct.necp_client_update* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.necp_client*, %struct.necp_client** %4, align 8
  %42 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @uuid_copy(i32 %40, i32 %43)
  %45 = load i32, i32* @NECP_CLIENT_UPDATE_TYPE_PARAMETERS, align 4
  %46 = load %struct.necp_client_update*, %struct.necp_client_update** %5, align 8
  %47 = getelementptr inbounds %struct.necp_client_update, %struct.necp_client_update* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.necp_client_update*, %struct.necp_client_update** %5, align 8
  %50 = getelementptr inbounds %struct.necp_client_update, %struct.necp_client_update* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.necp_client*, %struct.necp_client** %4, align 8
  %54 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.necp_client*, %struct.necp_client** %4, align 8
  %57 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i32 %52, i32 %55, i32 %58)
  %60 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %61 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %60, i32 0, i32 1
  %62 = load %struct.necp_client_update*, %struct.necp_client_update** %5, align 8
  %63 = load i32, i32* @chain, align 4
  %64 = call i32 @TAILQ_INSERT_TAIL(i32* %61, %struct.necp_client_update* %62, i32 %63)
  %65 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %66 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %70 = call i32 @necp_fd_notify(%struct.necp_fd_data* %69, i32 1)
  br label %71

71:                                               ; preds = %30, %16
  %72 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %73 = call i32 @NECP_FD_UNLOCK(%struct.necp_fd_data* %72)
  br label %74

74:                                               ; preds = %71, %13
  ret void
}

declare dso_local i32 @NECP_FD_LOCK(%struct.necp_fd_data*) #1

declare dso_local i32 @NECP_FD_UNLOCK(%struct.necp_fd_data*) #1

declare dso_local %struct.necp_client_update* @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @uuid_copy(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.necp_client_update*, i32) #1

declare dso_local i32 @necp_fd_notify(%struct.necp_fd_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
