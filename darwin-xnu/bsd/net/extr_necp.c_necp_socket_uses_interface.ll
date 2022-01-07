; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_uses_interface.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_uses_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i32, i32 }
%union.necp_sockaddr_union = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@ifindex2ifnet = common dso_local global i32** null, align 8
@INP_IPV4 = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to get address list for %s%d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inpcb*, i64)* @necp_socket_uses_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_socket_uses_interface(%struct.inpcb* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %union.necp_sockaddr_union, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32** null, i32*** %8, align 8
  %14 = load i32, i32* @AF_INET, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32**, i32*** @ifindex2ifnet, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i32*, i32** %15, i64 %16
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %12, align 8
  %19 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %20 = icmp eq %struct.inpcb* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32*, i32** %12, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %2
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %115

26:                                               ; preds = %21
  %27 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %28 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @INP_IPV4, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @AF_INET, align 4
  store i32 %34, i32* %11, align 4
  br label %45

35:                                               ; preds = %26
  %36 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %37 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @INP_IPV6, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @AF_INET6, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %42, %35
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i64 @ifnet_get_address_list_family(i32* %46, i32*** %8, i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i32, i32* @LOG_ERR, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 @ifnet_name(i32* %53)
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @ifnet_unit(i32* %55)
  %57 = call i32 @NECPLOG(i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %56)
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %3, align 4
  br label %115

59:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %107, %59
  %61 = load i32**, i32*** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %110

67:                                               ; preds = %60
  %68 = load i32**, i32*** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = bitcast %union.necp_sockaddr_union* %9 to i32*
  %74 = call i64 @ifaddr_address(i32* %72, i32* %73, i32 4)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %106

76:                                               ; preds = %67
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @AF_INET, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = bitcast %union.necp_sockaddr_union* %9 to %struct.TYPE_3__*
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %84 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %83, i32 0, i32 2
  %85 = call i64 @memcmp(i32* %82, i32* %84, i32 4)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* %6, align 4
  br label %111

89:                                               ; preds = %80
  br label %105

90:                                               ; preds = %76
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @AF_INET6, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = bitcast %union.necp_sockaddr_union* %9 to %struct.TYPE_4__*
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %98 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %97, i32 0, i32 1
  %99 = call i64 @memcmp(i32* %96, i32* %98, i32 4)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* @TRUE, align 4
  store i32 %102, i32* %6, align 4
  br label %111

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103, %90
  br label %105

105:                                              ; preds = %104, %89
  br label %106

106:                                              ; preds = %105, %67
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %60

110:                                              ; preds = %60
  br label %111

111:                                              ; preds = %110, %101, %87
  %112 = load i32**, i32*** %8, align 8
  %113 = call i32 @ifnet_free_address_list(i32** %112)
  store i32** null, i32*** %8, align 8
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %51, %24
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i64 @ifnet_get_address_list_family(i32*, i32***, i32) #1

declare dso_local i32 @NECPLOG(i32, i8*, i32, i32) #1

declare dso_local i32 @ifnet_name(i32*) #1

declare dso_local i32 @ifnet_unit(i32*) #1

declare dso_local i64 @ifaddr_address(i32*, i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @ifnet_free_address_list(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
