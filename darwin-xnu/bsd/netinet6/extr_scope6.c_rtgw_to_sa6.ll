; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_scope6.c_rtgw_to_sa6.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_scope6.c_rtgw_to_sa6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32, i64 }
%struct.sockaddr_in6 = type { i64 }

@RTF_GATEWAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtgw_to_sa6(%struct.rtentry* %0, %struct.sockaddr_in6* %1) #0 {
  %3 = alloca %struct.rtentry*, align 8
  %4 = alloca %struct.sockaddr_in6*, align 8
  store %struct.rtentry* %0, %struct.rtentry** %3, align 8
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %4, align 8
  %5 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %6 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @RTF_GATEWAY, align 4
  %9 = and i32 %7, %8
  %10 = call i32 @VERIFY(i32 %9)
  %11 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %12 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %13 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.sockaddr_in6*
  %17 = bitcast %struct.sockaddr_in6* %11 to i8*
  %18 = bitcast %struct.sockaddr_in6* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  %19 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
