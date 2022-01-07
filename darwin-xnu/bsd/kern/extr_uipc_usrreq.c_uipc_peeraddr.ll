; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_uipc_peeraddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_uipc_peeraddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.unpcb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@sun_noname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr**)* @uipc_peeraddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uipc_peeraddr(%struct.socket* %0, %struct.sockaddr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr**, align 8
  %6 = alloca %struct.unpcb*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %5, align 8
  %7 = load %struct.socket*, %struct.socket** %4, align 8
  %8 = call %struct.unpcb* @sotounpcb(%struct.socket* %7)
  store %struct.unpcb* %8, %struct.unpcb** %6, align 8
  %9 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %10 = icmp eq %struct.unpcb* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %15 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %20 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %27 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast i32* %30 to %struct.sockaddr*
  %32 = call %struct.sockaddr* @dup_sockaddr(%struct.sockaddr* %31, i32 1)
  %33 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  store %struct.sockaddr* %32, %struct.sockaddr** %33, align 8
  br label %37

34:                                               ; preds = %18, %13
  %35 = call %struct.sockaddr* @dup_sockaddr(%struct.sockaddr* bitcast (i32* @sun_noname to %struct.sockaddr*), i32 1)
  %36 = load %struct.sockaddr**, %struct.sockaddr*** %5, align 8
  store %struct.sockaddr* %35, %struct.sockaddr** %36, align 8
  br label %37

37:                                               ; preds = %34, %25
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.unpcb* @sotounpcb(%struct.socket*) #1

declare dso_local %struct.sockaddr* @dup_sockaddr(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
