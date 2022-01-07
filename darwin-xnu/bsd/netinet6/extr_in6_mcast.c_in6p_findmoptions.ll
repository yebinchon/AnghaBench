; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_in6p_findmoptions.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_in6p_findmoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_moptions = type { i32, %struct.in6_mfilter*, %struct.in6_multi**, i64, i32, i32, i32* }
%struct.in6_mfilter = type { i32 }
%struct.in6_multi = type { i32 }
%struct.inpcb = type { %struct.ip6_moptions* }

@M_WAITOK = common dso_local global i32 0, align 4
@IPV6_MIN_MEMBERSHIPS = common dso_local global i32 0, align 4
@M_IP6MOPTS = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_IN6MFILTER = common dso_local global i32 0, align 4
@ip6_defmcasthlim = common dso_local global i32 0, align 4
@in6_mcast_loop = common dso_local global i32 0, align 4
@MCAST_UNDEFINED = common dso_local global i32 0, align 4
@MCAST_EXCLUDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip6_moptions* (%struct.inpcb*)* @in6p_findmoptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip6_moptions* @in6p_findmoptions(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.ip6_moptions*, align 8
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.ip6_moptions*, align 8
  %5 = alloca %struct.in6_multi**, align 8
  %6 = alloca %struct.in6_mfilter*, align 8
  %7 = alloca i64, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  %8 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %9 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %8, i32 0, i32 0
  %10 = load %struct.ip6_moptions*, %struct.ip6_moptions** %9, align 8
  store %struct.ip6_moptions* %10, %struct.ip6_moptions** %4, align 8
  %11 = icmp ne %struct.ip6_moptions* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  %14 = call i32 @IM6O_ADDREF(%struct.ip6_moptions* %13)
  %15 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  store %struct.ip6_moptions* %15, %struct.ip6_moptions** %2, align 8
  br label %99

16:                                               ; preds = %1
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = call %struct.ip6_moptions* @ip6_allocmoptions(i32 %17)
  store %struct.ip6_moptions* %18, %struct.ip6_moptions** %4, align 8
  %19 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  %20 = icmp eq %struct.ip6_moptions* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store %struct.ip6_moptions* null, %struct.ip6_moptions** %2, align 8
  br label %99

22:                                               ; preds = %16
  %23 = load i32, i32* @IPV6_MIN_MEMBERSHIPS, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 8, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @M_IP6MOPTS, align 4
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call i8* @_MALLOC(i32 %26, i32 %27, i32 %30)
  %32 = bitcast i8* %31 to %struct.in6_multi**
  store %struct.in6_multi** %32, %struct.in6_multi*** %5, align 8
  %33 = load %struct.in6_multi**, %struct.in6_multi*** %5, align 8
  %34 = icmp eq %struct.in6_multi** %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  %37 = call i32 @IM6O_REMREF(%struct.ip6_moptions* %36)
  store %struct.ip6_moptions* null, %struct.ip6_moptions** %2, align 8
  br label %99

38:                                               ; preds = %22
  %39 = load i32, i32* @IPV6_MIN_MEMBERSHIPS, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @M_IN6MFILTER, align 4
  %44 = load i32, i32* @M_WAITOK, align 4
  %45 = load i32, i32* @M_ZERO, align 4
  %46 = or i32 %44, %45
  %47 = call i8* @_MALLOC(i32 %42, i32 %43, i32 %46)
  %48 = bitcast i8* %47 to %struct.in6_mfilter*
  store %struct.in6_mfilter* %48, %struct.in6_mfilter** %6, align 8
  %49 = load %struct.in6_mfilter*, %struct.in6_mfilter** %6, align 8
  %50 = icmp eq %struct.in6_mfilter* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %38
  %52 = load %struct.in6_multi**, %struct.in6_multi*** %5, align 8
  %53 = load i32, i32* @M_IP6MOPTS, align 4
  %54 = call i32 @_FREE(%struct.in6_multi** %52, i32 %53)
  %55 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  %56 = call i32 @IM6O_REMREF(%struct.ip6_moptions* %55)
  store %struct.ip6_moptions* null, %struct.ip6_moptions** %2, align 8
  br label %99

57:                                               ; preds = %38
  %58 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  %59 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %58, i32 0, i32 6
  store i32* null, i32** %59, align 8
  %60 = load i32, i32* @ip6_defmcasthlim, align 4
  %61 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  %62 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @in6_mcast_loop, align 4
  %64 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  %65 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  %67 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @IPV6_MIN_MEMBERSHIPS, align 4
  %69 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  %70 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.in6_multi**, %struct.in6_multi*** %5, align 8
  %72 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  %73 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %72, i32 0, i32 2
  store %struct.in6_multi** %71, %struct.in6_multi*** %73, align 8
  store i64 0, i64* %7, align 8
  br label %74

74:                                               ; preds = %86, %57
  %75 = load i64, i64* %7, align 8
  %76 = load i32, i32* @IPV6_MIN_MEMBERSHIPS, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp ult i64 %75, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load %struct.in6_mfilter*, %struct.in6_mfilter** %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds %struct.in6_mfilter, %struct.in6_mfilter* %80, i64 %81
  %83 = load i32, i32* @MCAST_UNDEFINED, align 4
  %84 = load i32, i32* @MCAST_EXCLUDE, align 4
  %85 = call i32 @im6f_init(%struct.in6_mfilter* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %79
  %87 = load i64, i64* %7, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %7, align 8
  br label %74

89:                                               ; preds = %74
  %90 = load %struct.in6_mfilter*, %struct.in6_mfilter** %6, align 8
  %91 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  %92 = getelementptr inbounds %struct.ip6_moptions, %struct.ip6_moptions* %91, i32 0, i32 1
  store %struct.in6_mfilter* %90, %struct.in6_mfilter** %92, align 8
  %93 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  %94 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %95 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %94, i32 0, i32 0
  store %struct.ip6_moptions* %93, %struct.ip6_moptions** %95, align 8
  %96 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  %97 = call i32 @IM6O_ADDREF(%struct.ip6_moptions* %96)
  %98 = load %struct.ip6_moptions*, %struct.ip6_moptions** %4, align 8
  store %struct.ip6_moptions* %98, %struct.ip6_moptions** %2, align 8
  br label %99

99:                                               ; preds = %89, %51, %35, %21, %12
  %100 = load %struct.ip6_moptions*, %struct.ip6_moptions** %2, align 8
  ret %struct.ip6_moptions* %100
}

declare dso_local i32 @IM6O_ADDREF(%struct.ip6_moptions*) #1

declare dso_local %struct.ip6_moptions* @ip6_allocmoptions(i32) #1

declare dso_local i8* @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @IM6O_REMREF(%struct.ip6_moptions*) #1

declare dso_local i32 @_FREE(%struct.in6_multi**, i32) #1

declare dso_local i32 @im6f_init(%struct.in6_mfilter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
