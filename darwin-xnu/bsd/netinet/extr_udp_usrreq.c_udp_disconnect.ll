; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_udp_usrreq.c_udp_disconnect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_udp_usrreq.c_udp_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.inpcb = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EPROTOTYPE = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_disconnect(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.inpcb*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %5 = load %struct.socket*, %struct.socket** %3, align 8
  %6 = call %struct.inpcb* @sotoinpcb(%struct.socket* %5)
  store %struct.inpcb* %6, %struct.inpcb** %4, align 8
  %7 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %8 = icmp eq %struct.inpcb* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %11 = icmp eq %struct.inpcb* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @EINVAL, align 4
  br label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @EPROTOTYPE, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %2, align 4
  br label %44

18:                                               ; preds = %1
  %19 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INADDR_ANY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOTCONN, align 4
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %18
  %28 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %29 = call i32 @in_pcbdisconnect(%struct.inpcb* %28)
  %30 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %31 = call i32 @inp_reset_fc_state(%struct.inpcb* %30)
  %32 = load i64, i64* @INADDR_ANY, align 8
  %33 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %34 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load i32, i32* @SS_ISCONNECTED, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.socket*, %struct.socket** %3, align 8
  %39 = getelementptr inbounds %struct.socket, %struct.socket* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %43 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %27, %25, %16
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @in_pcbdisconnect(%struct.inpcb*) #1

declare dso_local i32 @inp_reset_fc_state(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
