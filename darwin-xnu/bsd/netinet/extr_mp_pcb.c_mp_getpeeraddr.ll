; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mp_pcb.c_mp_getpeeraddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mp_pcb.c_mp_getpeeraddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mptses = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_getpeeraddr(%struct.socket* %0, %struct.sockaddr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr**, align 8
  %6 = alloca %struct.mptses*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %5, align 8
  %7 = load %struct.socket*, %struct.socket** %4, align 8
  %8 = call %struct.mptses* @mpsotompte(%struct.socket* %7)
  store %struct.mptses* %8, %struct.mptses** %6, align 8
  %9 = load %struct.mptses*, %struct.mptses** %6, align 8
  %10 = getelementptr inbounds %struct.mptses, %struct.mptses* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AF_INET, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.mptses*, %struct.mptses** %6, align 8
  %17 = getelementptr inbounds %struct.mptses, %struct.mptses* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15, %2
  %22 = load %struct.socket*, %struct.socket** %4, align 8
  %23 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  %24 = call i32 @mp_getaddr_v4(%struct.socket* %22, %struct.sockaddr** %23, i32 1)
  store i32 %24, i32* %3, align 4
  br label %38

25:                                               ; preds = %15
  %26 = load %struct.mptses*, %struct.mptses** %6, align 8
  %27 = getelementptr inbounds %struct.mptses, %struct.mptses* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AF_INET6, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.socket*, %struct.socket** %4, align 8
  %34 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  %35 = call i32 @mp_getaddr_v6(%struct.socket* %33, %struct.sockaddr** %34, i32 1)
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %32, %21
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.mptses* @mpsotompte(%struct.socket*) #1

declare dso_local i32 @mp_getaddr_v4(%struct.socket*, %struct.sockaddr**, i32) #1

declare dso_local i32 @mp_getaddr_v6(%struct.socket*, %struct.sockaddr**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
