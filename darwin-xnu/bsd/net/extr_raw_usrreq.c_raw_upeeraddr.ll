; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_raw_usrreq.c_raw_upeeraddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_raw_usrreq.c_raw_upeeraddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.rawcb = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr**)* @raw_upeeraddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_upeeraddr(%struct.socket* %0, %struct.sockaddr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr**, align 8
  %6 = alloca %struct.rawcb*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %5, align 8
  %7 = load %struct.socket*, %struct.socket** %4, align 8
  %8 = call %struct.rawcb* @sotorawcb(%struct.socket* %7)
  store %struct.rawcb* %8, %struct.rawcb** %6, align 8
  %9 = load %struct.rawcb*, %struct.rawcb** %6, align 8
  %10 = icmp eq %struct.rawcb* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %3, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.rawcb*, %struct.rawcb** %6, align 8
  %15 = getelementptr inbounds %struct.rawcb, %struct.rawcb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOTCONN, align 4
  store i32 %19, i32* %3, align 4
  br label %26

20:                                               ; preds = %13
  %21 = load %struct.rawcb*, %struct.rawcb** %6, align 8
  %22 = getelementptr inbounds %struct.rawcb, %struct.rawcb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.sockaddr* @dup_sockaddr(i64 %23, i32 1)
  %25 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  store %struct.sockaddr* %24, %struct.sockaddr** %25, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %20, %18, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.rawcb* @sotorawcb(%struct.socket*) #1

declare dso_local %struct.sockaddr* @dup_sockaddr(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
