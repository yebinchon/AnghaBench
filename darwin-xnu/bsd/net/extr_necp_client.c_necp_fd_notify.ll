; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_fd_notify.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_fd_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_fd_data = type { %struct.selinfo }
%struct.selinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.necp_fd_data*, i32)* @necp_fd_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @necp_fd_notify(%struct.necp_fd_data* %0, i32 %1) #0 {
  %3 = alloca %struct.necp_fd_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.selinfo*, align 8
  store %struct.necp_fd_data* %0, %struct.necp_fd_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %7 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %6, i32 0, i32 0
  store %struct.selinfo* %7, %struct.selinfo** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %12 = call i32 @NECP_FD_LOCK(%struct.necp_fd_data* %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.selinfo*, %struct.selinfo** %5, align 8
  %15 = call i32 @selwakeup(%struct.selinfo* %14)
  %16 = load %struct.selinfo*, %struct.selinfo** %5, align 8
  %17 = getelementptr inbounds %struct.selinfo, %struct.selinfo* %16, i32 0, i32 0
  %18 = call i32 @KNOTE(i32* %17, i32 1)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load %struct.necp_fd_data*, %struct.necp_fd_data** %3, align 8
  %23 = call i32 @NECP_FD_UNLOCK(%struct.necp_fd_data* %22)
  br label %24

24:                                               ; preds = %21, %13
  ret void
}

declare dso_local i32 @NECP_FD_LOCK(%struct.necp_fd_data*) #1

declare dso_local i32 @selwakeup(%struct.selinfo*) #1

declare dso_local i32 @KNOTE(i32*, i32) #1

declare dso_local i32 @NECP_FD_UNLOCK(%struct.necp_fd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
