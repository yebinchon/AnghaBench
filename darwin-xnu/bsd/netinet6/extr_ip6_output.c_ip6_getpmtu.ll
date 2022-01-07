; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_output.c_ip6_getpmtu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_output.c_ip6_getpmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_in6 = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.ifnet* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.ifnet = type { i32 }
%struct.in6_addr = type { i32 }
%struct.sockaddr_in6 = type { i32, %struct.in6_addr, i32 }
%struct.route = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IFSCOPE_NONE = common dso_local global i32 0, align 4
@RTV_MTU = common dso_local global i32 0, align 4
@IPV6_MMTU = common dso_local global i64 0, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.route_in6*, %struct.route_in6*, %struct.ifnet*, %struct.in6_addr*, i64*, i32*)* @ip6_getpmtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_getpmtu(%struct.route_in6* %0, %struct.route_in6* %1, %struct.ifnet* %2, %struct.in6_addr* %3, i64* %4, i32* %5) #0 {
  %7 = alloca %struct.route_in6*, align 8
  %8 = alloca %struct.route_in6*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sockaddr_in6*, align 8
  %18 = alloca i64, align 8
  store %struct.route_in6* %0, %struct.route_in6** %7, align 8
  store %struct.route_in6* %1, %struct.route_in6** %8, align 8
  store %struct.ifnet* %2, %struct.ifnet** %9, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  store i64 0, i64* %13, align 8
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %16, align 4
  %21 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %22 = call i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.in6_addr* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %16, align 4
  br label %26

26:                                               ; preds = %24, %6
  %27 = load %struct.route_in6*, %struct.route_in6** %7, align 8
  %28 = load %struct.route_in6*, %struct.route_in6** %8, align 8
  %29 = icmp ne %struct.route_in6* %27, %28
  br i1 %29, label %30, label %78

30:                                               ; preds = %26
  %31 = load %struct.route_in6*, %struct.route_in6** %7, align 8
  %32 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %31, i32 0, i32 1
  %33 = call %struct.sockaddr_in6* @SIN6(i32* %32)
  store %struct.sockaddr_in6* %33, %struct.sockaddr_in6** %17, align 8
  %34 = load %struct.route_in6*, %struct.route_in6** %7, align 8
  %35 = call i64 @ROUTE_UNUSABLE(%struct.route_in6* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %30
  %38 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %39 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %38, i32 0, i32 1
  %40 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %41 = call i32 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr* %39, %struct.in6_addr* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37, %30
  %44 = load %struct.route_in6*, %struct.route_in6** %7, align 8
  %45 = call i32 @ROUTE_RELEASE(%struct.route_in6* %44)
  br label %46

46:                                               ; preds = %43, %37
  %47 = load %struct.route_in6*, %struct.route_in6** %7, align 8
  %48 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = icmp eq %struct.TYPE_4__* %49, null
  br i1 %50, label %51, label %77

51:                                               ; preds = %46
  %52 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %53 = call i32 @bzero(%struct.sockaddr_in6* %52, i32 12)
  %54 = load i32, i32* @AF_INET6, align 4
  %55 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %56 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %58 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %57, i32 0, i32 0
  store i32 12, i32* %58, align 4
  %59 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %59, i32 0, i32 1
  %61 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %62 = bitcast %struct.in6_addr* %60 to i8*
  %63 = bitcast %struct.in6_addr* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 4, i1 false)
  %64 = load %struct.route_in6*, %struct.route_in6** %7, align 8
  %65 = bitcast %struct.route_in6* %64 to %struct.route*
  %66 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %67 = icmp ne %struct.ifnet* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %51
  %69 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %70 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  br label %74

72:                                               ; preds = %51
  %73 = load i32, i32* @IFSCOPE_NONE, align 4
  br label %74

74:                                               ; preds = %72, %68
  %75 = phi i32 [ %71, %68 ], [ %73, %72 ]
  %76 = call i32 @rtalloc_scoped(%struct.route* %65, i32 %75)
  br label %77

77:                                               ; preds = %74, %46
  br label %78

78:                                               ; preds = %77, %26
  %79 = load %struct.route_in6*, %struct.route_in6** %7, align 8
  %80 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = icmp ne %struct.TYPE_4__* %81, null
  br i1 %82, label %83, label %135

83:                                               ; preds = %78
  %84 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %85 = icmp eq %struct.ifnet* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.route_in6*, %struct.route_in6** %7, align 8
  %88 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load %struct.ifnet*, %struct.ifnet** %90, align 8
  store %struct.ifnet* %91, %struct.ifnet** %9, align 8
  br label %92

92:                                               ; preds = %86, %83
  %93 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %94 = call i64 @IN6_LINKMTU(%struct.ifnet* %93)
  store i64 %94, i64* %18, align 8
  %95 = load %struct.route_in6*, %struct.route_in6** %7, align 8
  %96 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %13, align 8
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %18, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %107, label %104

104:                                              ; preds = %92
  %105 = load i64, i64* %13, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %104, %92
  %108 = load i64, i64* %18, align 8
  store i64 %108, i64* %13, align 8
  %109 = load %struct.route_in6*, %struct.route_in6** %7, align 8
  %110 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @RTV_MTU, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %107
  %119 = load i64, i64* %13, align 8
  %120 = load %struct.route_in6*, %struct.route_in6** %7, align 8
  %121 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  store i64 %119, i64* %124, align 8
  br label %125

125:                                              ; preds = %118, %107
  br label %134

126:                                              ; preds = %104
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* @IPV6_MMTU, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32, i32* @TRUE, align 4
  store i32 %131, i32* %14, align 4
  %132 = load i64, i64* @IPV6_MMTU, align 8
  store i64 %132, i64* %13, align 8
  br label %133

133:                                              ; preds = %130, %126
  br label %134

134:                                              ; preds = %133, %125
  br label %144

135:                                              ; preds = %78
  %136 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %137 = icmp ne %struct.ifnet* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %140 = call i64 @IN6_LINKMTU(%struct.ifnet* %139)
  store i64 %140, i64* %13, align 8
  br label %143

141:                                              ; preds = %135
  %142 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %142, i32* %15, align 4
  br label %143

143:                                              ; preds = %141, %138
  br label %144

144:                                              ; preds = %143, %134
  %145 = load i64, i64* %13, align 8
  %146 = load i64*, i64** %11, align 8
  store i64 %145, i64* %146, align 8
  %147 = load i32*, i32** %12, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load i32, i32* %16, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %14, align 4
  %154 = load i32*, i32** %12, align 8
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %149, %144
  %156 = load i32, i32* %15, align 4
  ret i32 %156
}

declare dso_local i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.in6_addr*) #1

declare dso_local %struct.sockaddr_in6* @SIN6(i32*) #1

declare dso_local i64 @ROUTE_UNUSABLE(%struct.route_in6*) #1

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @ROUTE_RELEASE(%struct.route_in6*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rtalloc_scoped(%struct.route*, i32) #1

declare dso_local i64 @IN6_LINKMTU(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
