; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_inaddr_local.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_inaddr_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.rtentry = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sockaddr_in = type { i32, %struct.in_addr, i32 }
%struct.sockaddr = type { i32 }

@INADDR_LOOPBACK = common dso_local global i64 0, align 8
@INADDR_UNSPEC_GROUP = common dso_local global i64 0, align 8
@INADDR_MAX_LOCAL_GROUP = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@AF_LINK = common dso_local global i64 0, align 8
@IFF_LOOPBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inaddr_local(i32 %0) #0 {
  %2 = alloca %struct.in_addr, align 4
  %3 = alloca %struct.rtentry*, align 8
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %7 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @ntohl(i32 %8)
  %10 = load i64, i64* @INADDR_LOOPBACK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ntohl(i32 %14)
  %16 = call i64 @IN_LINKLOCAL(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  store i32 1, i32* %5, align 4
  br label %74

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ntohl(i32 %21)
  %23 = load i64, i64* @INADDR_UNSPEC_GROUP, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ntohl(i32 %27)
  %29 = load i64, i64* @INADDR_MAX_LOCAL_GROUP, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %73

32:                                               ; preds = %25, %19
  %33 = load i32, i32* @AF_INET, align 4
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i32 12, i32* %35, align 4
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %37 = bitcast %struct.in_addr* %36 to i8*
  %38 = bitcast %struct.in_addr* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %40 = call %struct.rtentry* @rtalloc1(%struct.sockaddr* %39, i32 0, i32 0)
  store %struct.rtentry* %40, %struct.rtentry** %3, align 8
  %41 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %42 = icmp ne %struct.rtentry* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %32
  %44 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %45 = call i32 @RT_LOCK_SPIN(%struct.rtentry* %44)
  %46 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %47 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AF_LINK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %62, label %53

53:                                               ; preds = %43
  %54 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %55 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IFF_LOOPBACK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53, %43
  store i32 1, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %53
  %64 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %65 = call i32 @RT_UNLOCK(%struct.rtentry* %64)
  %66 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %67 = call i32 @rtfree(%struct.rtentry* %66)
  br label %72

68:                                               ; preds = %32
  %69 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %2, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @in_localaddr(i32 %70)
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %63
  br label %73

73:                                               ; preds = %72, %31
  br label %74

74:                                               ; preds = %73, %18
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @IN_LINKLOCAL(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.rtentry* @rtalloc1(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @RT_LOCK_SPIN(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @rtfree(%struct.rtentry*) #1

declare dso_local i32 @in_localaddr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
