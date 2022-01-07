; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_scope6.c_rtkey_to_sa6.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_scope6.c_rtkey_to_sa6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32 }
%struct.sockaddr_in6 = type { i64 }
%struct.TYPE_2__ = type { i64 }

@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtkey_to_sa6(%struct.rtentry* %0, %struct.sockaddr_in6* %1) #0 {
  %3 = alloca %struct.rtentry*, align 8
  %4 = alloca %struct.sockaddr_in6*, align 8
  store %struct.rtentry* %0, %struct.rtentry** %3, align 8
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %4, align 8
  %5 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %6 = call %struct.TYPE_2__* @rt_key(%struct.rtentry* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AF_INET6, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @VERIFY(i32 %11)
  %13 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %14 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %15 = call %struct.TYPE_2__* @rt_key(%struct.rtentry* %14)
  %16 = bitcast %struct.TYPE_2__* %15 to i8*
  %17 = bitcast i8* %16 to %struct.sockaddr_in6*
  %18 = bitcast %struct.sockaddr_in6* %13 to i8*
  %19 = bitcast %struct.sockaddr_in6* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false)
  %20 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.TYPE_2__* @rt_key(%struct.rtentry*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
