; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_fillheaders.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_fillheaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { %struct.inpcb* }
%struct.inpcb = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tcphdr = type { i32, i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.ip = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i64, i64, i64, i64, i64, i32 }

@IP_VHL_BORING = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@IPV6_FLOWINFO_MASK = common dso_local global i32 0, align 4
@IPV6_VERSION = common dso_local global i32 0, align 4
@IPV6_VERSION_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_fillheaders(%struct.tcpcb* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.inpcb*, align 8
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca %struct.ip*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %11 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %10, i32 0, i32 0
  %12 = load %struct.inpcb*, %struct.inpcb** %11, align 8
  store %struct.inpcb* %12, %struct.inpcb** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.tcphdr*
  store %struct.tcphdr* %14, %struct.tcphdr** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.ip*
  store %struct.ip* %16, %struct.ip** %9, align 8
  %17 = load i32, i32* @IP_VHL_BORING, align 4
  %18 = load %struct.ip*, %struct.ip** %9, align 8
  %19 = getelementptr inbounds %struct.ip, %struct.ip* %18, i32 0, i32 9
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ip*, %struct.ip** %9, align 8
  %21 = getelementptr inbounds %struct.ip, %struct.ip* %20, i32 0, i32 8
  store i64 0, i64* %21, align 8
  %22 = load %struct.ip*, %struct.ip** %9, align 8
  %23 = getelementptr inbounds %struct.ip, %struct.ip* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load %struct.ip*, %struct.ip** %9, align 8
  %25 = getelementptr inbounds %struct.ip, %struct.ip* %24, i32 0, i32 6
  store i64 0, i64* %25, align 8
  %26 = load %struct.ip*, %struct.ip** %9, align 8
  %27 = getelementptr inbounds %struct.ip, %struct.ip* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = load %struct.ip*, %struct.ip** %9, align 8
  %29 = getelementptr inbounds %struct.ip, %struct.ip* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.ip*, %struct.ip** %9, align 8
  %31 = getelementptr inbounds %struct.ip, %struct.ip* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @IPPROTO_TCP, align 4
  %33 = load %struct.ip*, %struct.ip** %9, align 8
  %34 = getelementptr inbounds %struct.ip, %struct.ip* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ip*, %struct.ip** %9, align 8
  %36 = getelementptr inbounds %struct.ip, %struct.ip* %35, i32 0, i32 2
  %37 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %38 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %37, i32 0, i32 5
  %39 = bitcast %struct.TYPE_3__* %36 to i8*
  %40 = bitcast %struct.TYPE_3__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = load %struct.ip*, %struct.ip** %9, align 8
  %42 = getelementptr inbounds %struct.ip, %struct.ip* %41, i32 0, i32 1
  %43 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %44 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %43, i32 0, i32 4
  %45 = bitcast %struct.TYPE_4__* %42 to i8*
  %46 = bitcast %struct.TYPE_4__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load %struct.ip*, %struct.ip** %9, align 8
  %48 = getelementptr inbounds %struct.ip, %struct.ip* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ip*, %struct.ip** %9, align 8
  %52 = getelementptr inbounds %struct.ip, %struct.ip* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IPPROTO_TCP, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 72, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @htons(i32 %58)
  %60 = call i32 @in_pseudo(i32 %50, i32 %54, i32 %59)
  %61 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %62 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %61, i32 0, i32 9
  store i32 %60, i32* %62, align 8
  %63 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %64 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %67 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 4
  %68 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %69 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %72 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 8
  %73 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %74 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %73, i32 0, i32 6
  store i64 0, i64* %74, align 8
  %75 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %76 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %75, i32 0, i32 5
  store i64 0, i64* %76, align 8
  %77 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %78 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %77, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %80 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %79, i32 0, i32 0
  store i32 5, i32* %80, align 8
  %81 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %82 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %84 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %86 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @in_pseudo(i32, i32, i32) #2

declare dso_local i32 @htons(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
