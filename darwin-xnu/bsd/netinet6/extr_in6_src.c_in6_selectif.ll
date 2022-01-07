; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_selectif.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_selectif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32 }
%struct.ip6_pktopts = type { i32 }
%struct.ip6_moptions = type { i32 }
%struct.route_in6 = type { %struct.rtentry* }
%struct.rtentry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.ip6_out_args = type { i32 }

@RTF_REJECT = common dso_local global i32 0, align 4
@RTF_BLACKHOLE = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_selectif(%struct.sockaddr_in6* %0, %struct.ip6_pktopts* %1, %struct.ip6_moptions* %2, %struct.route_in6* %3, %struct.ip6_out_args* %4, %struct.ifnet** %5) #0 {
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca %struct.ip6_pktopts*, align 8
  %9 = alloca %struct.ip6_moptions*, align 8
  %10 = alloca %struct.route_in6*, align 8
  %11 = alloca %struct.ip6_out_args*, align 8
  %12 = alloca %struct.ifnet**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.route_in6, align 8
  %15 = alloca %struct.rtentry*, align 8
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %7, align 8
  store %struct.ip6_pktopts* %1, %struct.ip6_pktopts** %8, align 8
  store %struct.ip6_moptions* %2, %struct.ip6_moptions** %9, align 8
  store %struct.route_in6* %3, %struct.route_in6** %10, align 8
  store %struct.ip6_out_args* %4, %struct.ip6_out_args** %11, align 8
  store %struct.ifnet** %5, %struct.ifnet*** %12, align 8
  store i32 0, i32* %13, align 4
  store %struct.rtentry* null, %struct.rtentry** %15, align 8
  %16 = load %struct.route_in6*, %struct.route_in6** %10, align 8
  %17 = icmp eq %struct.route_in6* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = call i32 @bzero(%struct.route_in6* %14, i32 8)
  store %struct.route_in6* %14, %struct.route_in6** %10, align 8
  br label %20

20:                                               ; preds = %18, %6
  %21 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %22 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %8, align 8
  %23 = load %struct.ip6_moptions*, %struct.ip6_moptions** %9, align 8
  %24 = load %struct.route_in6*, %struct.route_in6** %10, align 8
  %25 = load %struct.ifnet**, %struct.ifnet*** %12, align 8
  %26 = load %struct.ip6_out_args*, %struct.ip6_out_args** %11, align 8
  %27 = call i32 @selectroute(i32* null, %struct.sockaddr_in6* %21, %struct.ip6_pktopts* %22, %struct.ip6_moptions* %23, i32* null, %struct.route_in6* %24, %struct.ifnet** %25, %struct.rtentry** %15, i32 0, i32 1, %struct.ip6_out_args* %26)
  store i32 %27, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %95

30:                                               ; preds = %20
  %31 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %32 = icmp ne %struct.rtentry* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %35 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @RTF_REJECT, align 4
  %38 = load i32, i32* @RTF_BLACKHOLE, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %33
  %43 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %44 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @RTF_HOST, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @EHOSTUNREACH, align 4
  br label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @ENETUNREACH, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %13, align 4
  br label %95

55:                                               ; preds = %33, %30
  %56 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %57 = icmp ne %struct.rtentry* %56, null
  br i1 %57, label %58, label %94

58:                                               ; preds = %55
  %59 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %60 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = icmp ne %struct.TYPE_2__* %61, null
  br i1 %62, label %63, label %94

63:                                               ; preds = %58
  %64 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %65 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.ifnet*, %struct.ifnet** %67, align 8
  %69 = icmp ne %struct.ifnet* %68, null
  br i1 %69, label %70, label %94

70:                                               ; preds = %63
  %71 = load %struct.ifnet**, %struct.ifnet*** %12, align 8
  %72 = icmp ne %struct.ifnet** %71, null
  br i1 %72, label %73, label %94

73:                                               ; preds = %70
  %74 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %75 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load %struct.ifnet*, %struct.ifnet** %77, align 8
  %79 = call i32 @ifnet_reference(%struct.ifnet* %78)
  %80 = load %struct.ifnet**, %struct.ifnet*** %12, align 8
  %81 = load %struct.ifnet*, %struct.ifnet** %80, align 8
  %82 = icmp ne %struct.ifnet* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load %struct.ifnet**, %struct.ifnet*** %12, align 8
  %85 = load %struct.ifnet*, %struct.ifnet** %84, align 8
  %86 = call i32 @ifnet_release(%struct.ifnet* %85)
  br label %87

87:                                               ; preds = %83, %73
  %88 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %89 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load %struct.ifnet*, %struct.ifnet** %91, align 8
  %93 = load %struct.ifnet**, %struct.ifnet*** %12, align 8
  store %struct.ifnet* %92, %struct.ifnet** %93, align 8
  br label %94

94:                                               ; preds = %87, %70, %63, %58, %55
  br label %95

95:                                               ; preds = %94, %53, %29
  %96 = load %struct.route_in6*, %struct.route_in6** %10, align 8
  %97 = icmp eq %struct.route_in6* %96, %14
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %100 = icmp eq %struct.rtentry* %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load %struct.rtentry*, %struct.rtentry** %15, align 8
  %103 = load %struct.route_in6*, %struct.route_in6** %10, align 8
  %104 = getelementptr inbounds %struct.route_in6, %struct.route_in6* %103, i32 0, i32 0
  %105 = load %struct.rtentry*, %struct.rtentry** %104, align 8
  %106 = icmp eq %struct.rtentry* %102, %105
  br label %107

107:                                              ; preds = %101, %98
  %108 = phi i1 [ true, %98 ], [ %106, %101 ]
  %109 = zext i1 %108 to i32
  %110 = call i32 @VERIFY(i32 %109)
  %111 = load %struct.route_in6*, %struct.route_in6** %10, align 8
  %112 = call i32 @ROUTE_RELEASE(%struct.route_in6* %111)
  br label %113

113:                                              ; preds = %107, %95
  %114 = load i32, i32* %13, align 4
  ret i32 %114
}

declare dso_local i32 @bzero(%struct.route_in6*, i32) #1

declare dso_local i32 @selectroute(i32*, %struct.sockaddr_in6*, %struct.ip6_pktopts*, %struct.ip6_moptions*, i32*, %struct.route_in6*, %struct.ifnet**, %struct.rtentry**, i32, i32, %struct.ip6_out_args*) #1

declare dso_local i32 @ifnet_reference(%struct.ifnet*) #1

declare dso_local i32 @ifnet_release(%struct.ifnet*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @ROUTE_RELEASE(%struct.route_in6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
