; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_divert.c_div_attach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_divert.c_div_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.socket*, i32 }
%struct.proc = type { i32 }
%struct.inpcb = type { i32, %struct.socket, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"div_attach\00", align 1
@div_sendspace = common dso_local global i32 0, align 4
@div_recvspace = common dso_local global i32 0, align 4
@divcbinfo = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@INP_HDRINCL = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.proc*)* @div_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @div_attach(%struct.socket* %0, i32 %1, %struct.proc* %2) #0 {
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
  %17 = load %struct.proc*, %struct.proc** %7, align 8
  %18 = call i32 @proc_suser(%struct.proc* %17)
  store i32 %18, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %62

22:                                               ; preds = %16
  %23 = load %struct.socket*, %struct.socket** %5, align 8
  %24 = load i32, i32* @div_sendspace, align 4
  %25 = load i32, i32* @div_recvspace, align 4
  %26 = call i32 @soreserve(%struct.socket* %23, i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %62

31:                                               ; preds = %22
  %32 = load %struct.socket*, %struct.socket** %5, align 8
  %33 = load %struct.proc*, %struct.proc** %7, align 8
  %34 = call i32 @in_pcballoc(%struct.socket* %32, i32* @divcbinfo, %struct.proc* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %62

39:                                               ; preds = %31
  %40 = load %struct.socket*, %struct.socket** %5, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 1
  %42 = load %struct.socket*, %struct.socket** %41, align 8
  %43 = bitcast %struct.socket* %42 to %struct.inpcb*
  store %struct.inpcb* %43, %struct.inpcb** %8, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @INP_IPV4, align 4
  %48 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %49 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @INP_HDRINCL, align 4
  %53 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %54 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* @SS_ISCONNECTED, align 4
  %58 = load %struct.socket*, %struct.socket** %5, align 8
  %59 = getelementptr inbounds %struct.socket, %struct.socket* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %39, %37, %29, %20
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @proc_suser(%struct.proc*) #1

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local i32 @in_pcballoc(%struct.socket*, i32*, %struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
