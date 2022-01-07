; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_selectsrc_core_ifa.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_selectsrc_core_ifa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.ifnet = type { i32 }
%struct.in6_addr = type { i32 }

@ip6_prefer_tempaddr = common dso_local global i64 0, align 8
@IPV6_SRCSEL_HINT_PREFER_TMPADDR = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@IFD_DETACHING = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Returned with error: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ifaddr* @in6_selectsrc_core_ifa(%struct.sockaddr_in6* %0, %struct.ifnet* %1, i32 %2) #0 {
  %4 = alloca %struct.sockaddr_in6*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.in6_addr, align 4
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca %struct.ifaddr*, align 8
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.ifnet* null, %struct.ifnet** %8, align 8
  %12 = bitcast %struct.in6_addr* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  store %struct.in6_addr* null, %struct.in6_addr** %10, align 8
  store %struct.ifaddr* null, %struct.ifaddr** %11, align 8
  %13 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %14 = load i64, i64* @ip6_prefer_tempaddr, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @IPV6_SRCSEL_HINT_PREFER_TMPADDR, align 4
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %22 = call %struct.in6_addr* @in6_selectsrc_core(%struct.sockaddr_in6* %13, i32 %20, %struct.ifnet* %21, i32 0, %struct.in6_addr* %9, %struct.ifnet** %8, i32* %7, %struct.ifaddr** %11)
  store %struct.in6_addr* %22, %struct.in6_addr** %10, align 8
  %23 = icmp eq %struct.in6_addr* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %31 = icmp eq %struct.ifnet* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @VERIFY(i32 %32)
  %34 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %35 = icmp ne %struct.ifaddr* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %38 = call i32 @IFA_REMREF(%struct.ifaddr* %37)
  store %struct.ifaddr* null, %struct.ifaddr** %11, align 8
  br label %39

39:                                               ; preds = %36, %29
  br label %82

40:                                               ; preds = %19
  %41 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %42 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %43 = icmp ne %struct.ifnet* %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @ENETUNREACH, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %44
  %50 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %51 = icmp ne %struct.ifaddr* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %54 = call i32 @IFA_REMREF(%struct.ifaddr* %53)
  store %struct.ifaddr* null, %struct.ifaddr** %11, align 8
  br label %55

55:                                               ; preds = %52, %49
  br label %82

56:                                               ; preds = %40
  %57 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %58 = icmp ne %struct.ifaddr* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 @VERIFY(i32 %59)
  %61 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %62 = call i32 @ifnet_lock_shared(%struct.ifnet* %61)
  %63 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %64 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IFD_DETACHING, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %56
  %70 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %70, i32* %7, align 4
  %71 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %72 = call i32 @ifnet_lock_done(%struct.ifnet* %71)
  %73 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %74 = icmp ne %struct.ifaddr* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %77 = call i32 @IFA_REMREF(%struct.ifaddr* %76)
  store %struct.ifaddr* null, %struct.ifaddr** %11, align 8
  br label %78

78:                                               ; preds = %75, %69
  br label %82

79:                                               ; preds = %56
  %80 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %81 = call i32 @ifnet_lock_done(%struct.ifnet* %80)
  br label %82

82:                                               ; preds = %79, %78, %55, %39
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @SASEL_LOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %86 = icmp ne %struct.ifnet* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %89 = call i32 @ifnet_release(%struct.ifnet* %88)
  br label %90

90:                                               ; preds = %87, %82
  %91 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  ret %struct.ifaddr* %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.in6_addr* @in6_selectsrc_core(%struct.sockaddr_in6*, i32, %struct.ifnet*, i32, %struct.in6_addr*, %struct.ifnet**, i32*, %struct.ifaddr**) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i32 @IFA_REMREF(%struct.ifaddr*) #2

declare dso_local i32 @ifnet_lock_shared(%struct.ifnet*) #2

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #2

declare dso_local i32 @SASEL_LOG(i8*, i32) #2

declare dso_local i32 @ifnet_release(%struct.ifnet*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
