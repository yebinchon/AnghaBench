; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_wiiu.c_wiiu_log_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_wiiu.c_wiiu_log_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@wiiu_log_lock = common dso_local global i64 0, align 8
@wiiu_log_socket = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @wiiu_log_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiiu_log_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* @wiiu_log_lock, align 8
  %4 = load i32, i32* @wiiu_log_socket, align 4
  %5 = icmp sge i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %35

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @broadcast_init(i32 %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %35

12:                                               ; preds = %7
  %13 = load i32, i32* @AF_INET, align 4
  %14 = load i32, i32* @SOCK_DGRAM, align 4
  %15 = call i32 @socket(i32 %13, i32 %14, i32 0)
  store i32 %15, i32* @wiiu_log_socket, align 4
  %16 = load i32, i32* @wiiu_log_socket, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %35

19:                                               ; preds = %12
  %20 = call i32 @memset(%struct.sockaddr_in* %3, i32 0, i32 24)
  %21 = load i32, i32* @AF_INET, align 4
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @INADDR_ANY, align 4
  %25 = call i32 @htonl(i32 %24)
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @wiiu_log_socket, align 4
  %29 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %30 = call i64 @bind(i32 %28, %struct.sockaddr* %29, i32 24)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i32, i32* @wiiu_log_socket, align 4
  %34 = call i32 @socketclose(i32 %33)
  store i32 -1, i32* @wiiu_log_socket, align 4
  br label %35

35:                                               ; preds = %6, %11, %18, %32, %19
  ret void
}

declare dso_local i64 @broadcast_init(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @socketclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
