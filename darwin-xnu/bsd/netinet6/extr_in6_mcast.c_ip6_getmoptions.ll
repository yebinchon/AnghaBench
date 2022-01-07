; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_ip6_getmoptions.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_ip6_getmoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, %struct.ip6_moptions* }
%struct.ip6_moptions = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sockopt = type { i32 }

@IPPROTO_DIVERT = common dso_local global i64 0, align 8
@SOCK_RAW = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ip6_defmcasthlim = common dso_local global i32 0, align 4
@in6_mcast_loop = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_getmoptions(%struct.inpcb* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca %struct.ip6_moptions*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  %9 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %10 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %9, i32 0, i32 1
  %11 = load %struct.ip6_moptions*, %struct.ip6_moptions** %10, align 8
  store %struct.ip6_moptions* %11, %struct.ip6_moptions** %6, align 8
  %12 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %13 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @SOCK_PROTO(i32 %14)
  %16 = load i64, i64* @IPPROTO_DIVERT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %32, label %18

18:                                               ; preds = %2
  %19 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @SOCK_TYPE(i32 %21)
  %23 = load i64, i64* @SOCK_RAW, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %27 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @SOCK_TYPE(i32 %28)
  %30 = load i64, i64* @SOCK_DGRAM, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25, %2
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %33, i32* %3, align 4
  br label %114

34:                                               ; preds = %25, %18
  store i32 0, i32* %7, align 4
  %35 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %36 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %110 [
    i32 129, label %38
    i32 130, label %68
    i32 128, label %84
    i32 131, label %100
  ]

38:                                               ; preds = %34
  %39 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %40 = icmp ne %struct.ip6_moptions* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %43 = call i32 @IM6O_LOCK(%struct.ip6_moptions* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %46 = icmp eq %struct.ip6_moptions* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %49 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp eq %struct.TYPE_2__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %44
  store i32 0, i32* %8, align 4
  br label %59

53:                                               ; preds = %47
  %54 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %55 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %53, %52
  %60 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %61 = icmp ne %struct.ip6_moptions* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %64 = call i32 @IM6O_UNLOCK(%struct.ip6_moptions* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %67 = call i32 @sooptcopyout(%struct.sockopt* %66, i32* %8, i32 4)
  store i32 %67, i32* %7, align 4
  br label %112

68:                                               ; preds = %34
  %69 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %70 = icmp eq %struct.ip6_moptions* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @ip6_defmcasthlim, align 4
  store i32 %72, i32* %8, align 4
  br label %81

73:                                               ; preds = %68
  %74 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %75 = call i32 @IM6O_LOCK(%struct.ip6_moptions* %74)
  %76 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %77 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %8, align 4
  %79 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %80 = call i32 @IM6O_UNLOCK(%struct.ip6_moptions* %79)
  br label %81

81:                                               ; preds = %73, %71
  %82 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %83 = call i32 @sooptcopyout(%struct.sockopt* %82, i32* %8, i32 4)
  store i32 %83, i32* %7, align 4
  br label %112

84:                                               ; preds = %34
  %85 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %86 = icmp eq %struct.ip6_moptions* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @in6_mcast_loop, align 4
  store i32 %88, i32* %8, align 4
  br label %97

89:                                               ; preds = %84
  %90 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %91 = call i32 @IM6O_LOCK(%struct.ip6_moptions* %90)
  %92 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %93 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %8, align 4
  %95 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %96 = call i32 @IM6O_UNLOCK(%struct.ip6_moptions* %95)
  br label %97

97:                                               ; preds = %89, %87
  %98 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %99 = call i32 @sooptcopyout(%struct.sockopt* %98, i32* %8, i32 4)
  store i32 %99, i32* %7, align 4
  br label %112

100:                                              ; preds = %34
  %101 = load %struct.ip6_moptions*, %struct.ip6_moptions** %6, align 8
  %102 = icmp eq %struct.ip6_moptions* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %104, i32* %7, align 4
  br label %109

105:                                              ; preds = %100
  %106 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %107 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %108 = call i32 @in6p_get_source_filters(%struct.inpcb* %106, %struct.sockopt* %107)
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %105, %103
  br label %112

110:                                              ; preds = %34
  %111 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %110, %109, %97, %81, %65
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %32
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i64 @SOCK_PROTO(i32) #1

declare dso_local i64 @SOCK_TYPE(i32) #1

declare dso_local i32 @IM6O_LOCK(%struct.ip6_moptions*) #1

declare dso_local i32 @IM6O_UNLOCK(%struct.ip6_moptions*) #1

declare dso_local i32 @sooptcopyout(%struct.sockopt*, i32*, i32) #1

declare dso_local i32 @in6p_get_source_filters(%struct.inpcb*, %struct.sockopt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
