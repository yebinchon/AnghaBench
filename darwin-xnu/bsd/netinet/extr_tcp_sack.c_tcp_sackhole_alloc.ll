; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_sack.c_tcp_sackhole_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_sack.c_tcp_sackhole_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sackhole = type { i8*, i8*, i8* }
%struct.tcpcb = type { i64 }

@tcp_sack_maxholes = common dso_local global i64 0, align 8
@tcp_sack_globalholes = common dso_local global i64 0, align 8
@tcp_sack_globalmaxholes = common dso_local global i64 0, align 8
@tcpstat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@sack_hole_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sackhole* (%struct.tcpcb*, i8*, i8*)* @tcp_sackhole_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sackhole* @tcp_sackhole_alloc(%struct.tcpcb* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.sackhole*, align 8
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sackhole*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %10 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @tcp_sack_maxholes, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* @tcp_sack_globalholes, align 8
  %16 = load i64, i64* @tcp_sack_globalmaxholes, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %3
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  store %struct.sackhole* null, %struct.sackhole** %4, align 8
  br label %44

21:                                               ; preds = %14
  %22 = load i32, i32* @sack_hole_zone, align 4
  %23 = call i64 @zalloc(i32 %22)
  %24 = inttoptr i64 %23 to %struct.sackhole*
  store %struct.sackhole* %24, %struct.sackhole** %8, align 8
  %25 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %26 = icmp eq %struct.sackhole* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store %struct.sackhole* null, %struct.sackhole** %4, align 8
  br label %44

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %31 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %34 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  %37 = getelementptr inbounds %struct.sackhole, %struct.sackhole* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %39 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = call i32 @OSIncrementAtomic(i64* @tcp_sack_globalholes)
  %43 = load %struct.sackhole*, %struct.sackhole** %8, align 8
  store %struct.sackhole* %43, %struct.sackhole** %4, align 8
  br label %44

44:                                               ; preds = %28, %27, %18
  %45 = load %struct.sackhole*, %struct.sackhole** %4, align 8
  ret %struct.sackhole* %45
}

declare dso_local i64 @zalloc(i32) #1

declare dso_local i32 @OSIncrementAtomic(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
