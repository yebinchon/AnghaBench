; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_keysock.c_key_send.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_keysock.c_key_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.proc*)* }
%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }
%struct.proc = type { i32 }

@raw_usrreqs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.proc*)* @key_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_send(%struct.socket* %0, i32 %1, %struct.mbuf* %2, %struct.sockaddr* %3, %struct.mbuf* %4, %struct.proc* %5) #0 {
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.proc*, align 8
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store %struct.mbuf* %4, %struct.mbuf** %11, align 8
  store %struct.proc* %5, %struct.proc** %12, align 8
  %14 = load i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.proc*)*, i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.proc*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @raw_usrreqs, i32 0, i32 0), align 8
  %15 = load %struct.socket*, %struct.socket** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %18 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %19 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %20 = load %struct.proc*, %struct.proc** %12, align 8
  %21 = call i32 %14(%struct.socket* %15, i32 %16, %struct.mbuf* %17, %struct.sockaddr* %18, %struct.mbuf* %19, %struct.proc* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
