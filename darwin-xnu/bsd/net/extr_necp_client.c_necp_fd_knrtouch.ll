; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_fd_knrtouch.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_fd_knrtouch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64 }
%struct.kevent_internal_s = type { i32 }
%struct.necp_fd_data = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.kevent_internal_s*)* @necp_fd_knrtouch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_fd_knrtouch(%struct.knote* %0, %struct.kevent_internal_s* %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.kevent_internal_s*, align 8
  %5 = alloca %struct.necp_fd_data*, align 8
  %6 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %3, align 8
  store %struct.kevent_internal_s* %1, %struct.kevent_internal_s** %4, align 8
  %7 = load %struct.knote*, %struct.knote** %3, align 8
  %8 = getelementptr inbounds %struct.knote, %struct.knote* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.necp_fd_data*
  store %struct.necp_fd_data* %10, %struct.necp_fd_data** %5, align 8
  %11 = load %struct.necp_fd_data*, %struct.necp_fd_data** %5, align 8
  %12 = call i32 @NECP_FD_LOCK(%struct.necp_fd_data* %11)
  %13 = load %struct.necp_fd_data*, %struct.necp_fd_data** %5, align 8
  %14 = load i32, i32* @POLLIN, align 4
  %15 = call i32 (...) @current_proc()
  %16 = call i32 @necp_fd_poll(%struct.necp_fd_data* %13, i32 %14, i32* null, i32 %15, i32 1)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.necp_fd_data*, %struct.necp_fd_data** %5, align 8
  %18 = call i32 @NECP_FD_UNLOCK(%struct.necp_fd_data* %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @POLLIN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i32 @NECP_FD_LOCK(%struct.necp_fd_data*) #1

declare dso_local i32 @necp_fd_poll(%struct.necp_fd_data*, i32, i32*, i32, i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @NECP_FD_UNLOCK(%struct.necp_fd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
