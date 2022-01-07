; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_usr_socheckopt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_usr_socheckopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockopt = type { i64, i32, i32 }

@SOL_SOCKET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockopt*)* @mptcp_usr_socheckopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptcp_usr_socheckopt(%struct.socket* %0, %struct.sockopt* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sockopt*, align 8
  %5 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.sockopt* %1, %struct.sockopt** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %7 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SOL_SOCKET, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @VERIFY(i32 %11)
  %13 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %14 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %26 [
    i32 155, label %16
    i32 154, label %16
    i32 129, label %16
    i32 145, label %16
    i32 144, label %16
    i32 160, label %16
    i32 134, label %16
    i32 140, label %16
    i32 133, label %16
    i32 139, label %16
    i32 132, label %16
    i32 138, label %16
    i32 150, label %16
    i32 147, label %16
    i32 149, label %16
    i32 156, label %16
    i32 143, label %16
    i32 163, label %16
    i32 158, label %16
    i32 130, label %16
    i32 162, label %16
    i32 161, label %16
    i32 164, label %17
    i32 157, label %17
    i32 128, label %17
    i32 141, label %17
    i32 131, label %17
    i32 136, label %17
    i32 142, label %17
    i32 137, label %17
    i32 135, label %17
    i32 159, label %17
    i32 146, label %17
    i32 148, label %17
    i32 153, label %17
  ]

16:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %28

17:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %18 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %19 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %17
  br label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %25, %16
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
