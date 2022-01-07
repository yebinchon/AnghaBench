; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_fd_knrdetach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_fd_knrdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64 }
%struct.necp_fd_data = type { %struct.selinfo }
%struct.selinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @necp_fd_knrdetach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @necp_fd_knrdetach(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.necp_fd_data*, align 8
  %4 = alloca %struct.selinfo*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %5 = load %struct.knote*, %struct.knote** %2, align 8
  %6 = getelementptr inbounds %struct.knote, %struct.knote* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.necp_fd_data*
  store %struct.necp_fd_data* %8, %struct.necp_fd_data** %3, align 8
  %9 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %10 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %9, i32 0, i32 0
  store %struct.selinfo* %10, %struct.selinfo** %4, align 8
  %11 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %12 = call i32 @NECP_FD_LOCK(%struct.necp_fd_data* %11)
  %13 = load %struct.selinfo*, %struct.selinfo** %4, align 8
  %14 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %13, i32 0, i32 0
  %15 = load %struct.knote*, %struct.knote** %2, align 8
  %16 = call i32 @KNOTE_DETACH(i32* %14, %struct.knote* %15)
  %17 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %18 = call i32 @NECP_FD_UNLOCK(%struct.necp_fd_data* %17)
  ret void
}

declare dso_local i32 @NECP_FD_LOCK(%struct.necp_fd_data*) #1

declare dso_local i32 @KNOTE_DETACH(i32*, %struct.knote*) #1

declare dso_local i32 @NECP_FD_UNLOCK(%struct.necp_fd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
