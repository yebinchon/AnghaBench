; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_pulloutofband.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_pulloutofband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.tcphdr = type { i32 }
%struct.mbuf = type { i32, i32, %struct.mbuf*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tcpcb = type { i8, i32 }

@caddr_t = common dso_local global i32 0, align 4
@TCPOOB_HAVEDATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"tcp_pulloutofband\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*, %struct.tcphdr*, %struct.mbuf*, i32)* @tcp_pulloutofband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_pulloutofband(%struct.socket* %0, %struct.tcphdr* %1, %struct.mbuf* %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcpcb*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %14 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %12, %15
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %84, %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %85

21:                                               ; preds = %18
  %22 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %72

27:                                               ; preds = %21
  %28 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %29 = load i32, i32* @caddr_t, align 4
  %30 = call i8* @mtod(%struct.mbuf* %28, i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8* %33, i8** %10, align 8
  %34 = load %struct.socket*, %struct.socket** %5, align 8
  %35 = call %struct.tcpcb* @sototcpcb(%struct.socket* %34)
  store %struct.tcpcb* %35, %struct.tcpcb** %11, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i8, i8* %36, align 1
  %38 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %39 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %38, i32 0, i32 0
  store i8 %37, i8* %39, align 4
  %40 = load i32, i32* @TCPOOB_HAVEDATA, align 4
  %41 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %42 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8*, i8** %10, align 8
  %48 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sub nsw i32 %52, 1
  %54 = call i32 @bcopy(i8* %46, i8* %47, i32 %53)
  %55 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @M_PKTHDR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %27
  %66 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %67 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %27
  br label %87

72:                                               ; preds = %21
  %73 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %74 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %9, align 4
  %78 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %79 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %78, i32 0, i32 2
  %80 = load %struct.mbuf*, %struct.mbuf** %79, align 8
  store %struct.mbuf* %80, %struct.mbuf** %7, align 8
  %81 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %82 = icmp eq %struct.mbuf* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %85

84:                                               ; preds = %72
  br label %18

85:                                               ; preds = %83, %18
  %86 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %71
  ret void
}

declare dso_local i8* @mtod(%struct.mbuf*, i32) #1

declare dso_local %struct.tcpcb* @sototcpcb(%struct.socket*) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
