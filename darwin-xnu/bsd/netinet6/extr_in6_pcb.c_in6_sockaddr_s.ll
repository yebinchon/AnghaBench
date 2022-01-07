; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_sockaddr_s.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_sockaddr_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i64* }
%struct.sockaddr_in6 = type { i32, %struct.in6_addr, i64, i32, i32 }

@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_sockaddr_s(i32 %0, %struct.in6_addr* %1, %struct.sockaddr_in6* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store %struct.sockaddr_in6* %2, %struct.sockaddr_in6** %6, align 8
  %7 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %8 = call i32 @bzero(%struct.sockaddr_in6* %7, i32 32)
  %9 = load i32, i32* @AF_INET6, align 4
  %10 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %11 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %13 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %12, i32 0, i32 0
  store i32 32, i32* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %17, i32 0, i32 1
  %19 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %20 = bitcast %struct.in6_addr* %18 to i8*
  %21 = bitcast %struct.in6_addr* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %22, i32 0, i32 1
  %24 = call i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.in6_addr* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @ntohs(i64 %32)
  %34 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  br label %39

36:                                               ; preds = %3
  %37 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %26
  %40 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %40, i32 0, i32 1
  %42 = call i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.in6_addr* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %44, %39
  ret void
}

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.in6_addr*) #1

declare dso_local i64 @ntohs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
