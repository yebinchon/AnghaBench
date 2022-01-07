; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_divert.c_div_bind.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_divert.c_div_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i64 }
%struct.proc = type { i32 }
%struct.inpcb = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, %struct.proc*)* @div_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @div_bind(%struct.socket* %0, %struct.sockaddr* %1, %struct.proc* %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.inpcb*, align 8
  %8 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.proc* %2, %struct.proc** %6, align 8
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = call %struct.inpcb* @sotoinpcb(%struct.socket* %9)
  store %struct.inpcb* %10, %struct.inpcb** %7, align 8
  %11 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %12 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AF_INET, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %17, i32* %8, align 4
  br label %29

18:                                               ; preds = %3
  %19 = load i32, i32* @INADDR_ANY, align 4
  %20 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %21 = bitcast %struct.sockaddr* %20 to i8*
  %22 = bitcast i8* %21 to %struct.sockaddr_in*
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %19, i32* %24, align 4
  %25 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %27 = load %struct.proc*, %struct.proc** %6, align 8
  %28 = call i32 @in_pcbbind(%struct.inpcb* %25, %struct.sockaddr* %26, %struct.proc* %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %18, %16
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @in_pcbbind(%struct.inpcb*, %struct.sockaddr*, %struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
