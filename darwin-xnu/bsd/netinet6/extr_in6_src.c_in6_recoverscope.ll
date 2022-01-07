; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_recoverscope.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_recoverscope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i64, %struct.in6_addr }
%struct.in6_addr = type { i64* }
%struct.ifnet = type { i64 }

@if_index = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_recoverscope(%struct.sockaddr_in6* %0, %struct.in6_addr* %1, %struct.ifnet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in6*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i64, align 8
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store %struct.ifnet* %2, %struct.ifnet** %7, align 8
  %9 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %10 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 1
  %11 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %12 = bitcast %struct.in6_addr* %10 to i8*
  %13 = bitcast %struct.in6_addr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %14 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %15 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %17 = call i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.in6_addr* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %21 = call i64 @IN6_IS_ADDR_MC_INTFACELOCAL(%struct.in6_addr* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %19, %3
  %24 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @ntohs(i64 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %23
  %34 = load i64, i64* @if_index, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %4, align 4
  br label %61

39:                                               ; preds = %33
  %40 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %41 = icmp ne %struct.ifnet* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %4, align 4
  br label %61

50:                                               ; preds = %42, %39
  %51 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %58 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %50, %23
  br label %60

60:                                               ; preds = %59, %19
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %48, %37
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.in6_addr*) #2

declare dso_local i64 @IN6_IS_ADDR_MC_INTFACELOCAL(%struct.in6_addr*) #2

declare dso_local i64 @ntohs(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
