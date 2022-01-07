; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_raw_ip.c_rip_attach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_raw_ip.c_rip_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i64 }
%struct.proc = type { i32 }
%struct.inpcb = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"rip_attach\00", align 1
@SS_PRIV = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@rip_sendspace = common dso_local global i32 0, align 4
@rip_recvspace = common dso_local global i32 0, align 4
@ripcbinfo = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@ip_defttl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.proc*)* @rip_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rip_attach(%struct.socket* %0, i32 %1, %struct.proc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.proc* %2, %struct.proc** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = call %struct.inpcb* @sotoinpcb(%struct.socket* %10)
  store %struct.inpcb* %11, %struct.inpcb** %8, align 8
  %12 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %13 = icmp ne %struct.inpcb* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @panic(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %3
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SS_PRIV, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @EPERM, align 4
  store i32 %24, i32* %4, align 4
  br label %58

25:                                               ; preds = %16
  %26 = load %struct.socket*, %struct.socket** %5, align 8
  %27 = load i32, i32* @rip_sendspace, align 4
  %28 = load i32, i32* @rip_recvspace, align 4
  %29 = call i32 @soreserve(%struct.socket* %26, i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %58

34:                                               ; preds = %25
  %35 = load %struct.socket*, %struct.socket** %5, align 8
  %36 = load %struct.proc*, %struct.proc** %7, align 8
  %37 = call i32 @in_pcballoc(%struct.socket* %35, i32* @ripcbinfo, %struct.proc* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %58

42:                                               ; preds = %34
  %43 = load %struct.socket*, %struct.socket** %5, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.inpcb*
  store %struct.inpcb* %46, %struct.inpcb** %8, align 8
  %47 = load i32, i32* @INP_IPV4, align 4
  %48 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %49 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %54 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @ip_defttl, align 4
  %56 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %57 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %42, %40, %32, %23
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local i32 @in_pcballoc(%struct.socket*, i32*, %struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
