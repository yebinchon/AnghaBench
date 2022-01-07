; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_mcast.c_inp_findmoptions.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_mcast.c_inp_findmoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_moptions = type { i32, i32, %struct.in_mfilter*, %struct.in_multi**, i64, i32, i32, %struct.TYPE_2__, i32* }
%struct.in_mfilter = type { i32 }
%struct.in_multi = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.inpcb = type { %struct.ip_moptions* }

@M_WAITOK = common dso_local global i32 0, align 4
@IP_MIN_MEMBERSHIPS = common dso_local global i32 0, align 4
@M_IPMOPTS = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_INMFILTER = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@IP_DEFAULT_MULTICAST_TTL = common dso_local global i32 0, align 4
@in_mcast_loop = common dso_local global i32 0, align 4
@MCAST_UNDEFINED = common dso_local global i32 0, align 4
@MCAST_EXCLUDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_moptions* (%struct.inpcb*)* @inp_findmoptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_moptions* @inp_findmoptions(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.ip_moptions*, align 8
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.ip_moptions*, align 8
  %5 = alloca %struct.in_multi**, align 8
  %6 = alloca %struct.in_mfilter*, align 8
  %7 = alloca i64, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  %8 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %9 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %8, i32 0, i32 0
  %10 = load %struct.ip_moptions*, %struct.ip_moptions** %9, align 8
  store %struct.ip_moptions* %10, %struct.ip_moptions** %4, align 8
  %11 = icmp ne %struct.ip_moptions* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.ip_moptions*, %struct.ip_moptions** %4, align 8
  %14 = call i32 @IMO_ADDREF(%struct.ip_moptions* %13)
  %15 = load %struct.ip_moptions*, %struct.ip_moptions** %4, align 8
  store %struct.ip_moptions* %15, %struct.ip_moptions** %2, align 8
  br label %105

16:                                               ; preds = %1
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = call %struct.ip_moptions* @ip_allocmoptions(i32 %17)
  store %struct.ip_moptions* %18, %struct.ip_moptions** %4, align 8
  %19 = load %struct.ip_moptions*, %struct.ip_moptions** %4, align 8
  %20 = icmp eq %struct.ip_moptions* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store %struct.ip_moptions* null, %struct.ip_moptions** %2, align 8
  br label %105

22:                                               ; preds = %16
  %23 = load i32, i32* @IP_MIN_MEMBERSHIPS, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 8, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @M_IPMOPTS, align 4
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call i8* @_MALLOC(i32 %26, i32 %27, i32 %30)
  %32 = bitcast i8* %31 to %struct.in_multi**
  store %struct.in_multi** %32, %struct.in_multi*** %5, align 8
  %33 = load %struct.in_multi**, %struct.in_multi*** %5, align 8
  %34 = icmp eq %struct.in_multi** %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load %struct.ip_moptions*, %struct.ip_moptions** %4, align 8
  %37 = call i32 @IMO_REMREF(%struct.ip_moptions* %36)
  store %struct.ip_moptions* null, %struct.ip_moptions** %2, align 8
  br label %105

38:                                               ; preds = %22
  %39 = load i32, i32* @IP_MIN_MEMBERSHIPS, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @M_INMFILTER, align 4
  %44 = load i32, i32* @M_WAITOK, align 4
  %45 = load i32, i32* @M_ZERO, align 4
  %46 = or i32 %44, %45
  %47 = call i8* @_MALLOC(i32 %42, i32 %43, i32 %46)
  %48 = bitcast i8* %47 to %struct.in_mfilter*
  store %struct.in_mfilter* %48, %struct.in_mfilter** %6, align 8
  %49 = load %struct.in_mfilter*, %struct.in_mfilter** %6, align 8
  %50 = icmp eq %struct.in_mfilter* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %38
  %52 = load %struct.in_multi**, %struct.in_multi*** %5, align 8
  %53 = load i32, i32* @M_IPMOPTS, align 4
  %54 = call i32 @_FREE(%struct.in_multi** %52, i32 %53)
  %55 = load %struct.ip_moptions*, %struct.ip_moptions** %4, align 8
  %56 = call i32 @IMO_REMREF(%struct.ip_moptions* %55)
  store %struct.ip_moptions* null, %struct.ip_moptions** %2, align 8
  br label %105

57:                                               ; preds = %38
  %58 = load %struct.ip_moptions*, %struct.ip_moptions** %4, align 8
  %59 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %58, i32 0, i32 8
  store i32* null, i32** %59, align 8
  %60 = load i32, i32* @INADDR_ANY, align 4
  %61 = load %struct.ip_moptions*, %struct.ip_moptions** %4, align 8
  %62 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.ip_moptions*, %struct.ip_moptions** %4, align 8
  %65 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %64, i32 0, i32 0
  store i32 -1, i32* %65, align 8
  %66 = load i32, i32* @IP_DEFAULT_MULTICAST_TTL, align 4
  %67 = load %struct.ip_moptions*, %struct.ip_moptions** %4, align 8
  %68 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @in_mcast_loop, align 4
  %70 = load %struct.ip_moptions*, %struct.ip_moptions** %4, align 8
  %71 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ip_moptions*, %struct.ip_moptions** %4, align 8
  %73 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %72, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @IP_MIN_MEMBERSHIPS, align 4
  %75 = load %struct.ip_moptions*, %struct.ip_moptions** %4, align 8
  %76 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.in_multi**, %struct.in_multi*** %5, align 8
  %78 = load %struct.ip_moptions*, %struct.ip_moptions** %4, align 8
  %79 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %78, i32 0, i32 3
  store %struct.in_multi** %77, %struct.in_multi*** %79, align 8
  store i64 0, i64* %7, align 8
  br label %80

80:                                               ; preds = %92, %57
  %81 = load i64, i64* %7, align 8
  %82 = load i32, i32* @IP_MIN_MEMBERSHIPS, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp ult i64 %81, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.in_mfilter*, %struct.in_mfilter** %6, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds %struct.in_mfilter, %struct.in_mfilter* %86, i64 %87
  %89 = load i32, i32* @MCAST_UNDEFINED, align 4
  %90 = load i32, i32* @MCAST_EXCLUDE, align 4
  %91 = call i32 @imf_init(%struct.in_mfilter* %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %85
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %7, align 8
  br label %80

95:                                               ; preds = %80
  %96 = load %struct.in_mfilter*, %struct.in_mfilter** %6, align 8
  %97 = load %struct.ip_moptions*, %struct.ip_moptions** %4, align 8
  %98 = getelementptr inbounds %struct.ip_moptions, %struct.ip_moptions* %97, i32 0, i32 2
  store %struct.in_mfilter* %96, %struct.in_mfilter** %98, align 8
  %99 = load %struct.ip_moptions*, %struct.ip_moptions** %4, align 8
  %100 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %101 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %100, i32 0, i32 0
  store %struct.ip_moptions* %99, %struct.ip_moptions** %101, align 8
  %102 = load %struct.ip_moptions*, %struct.ip_moptions** %4, align 8
  %103 = call i32 @IMO_ADDREF(%struct.ip_moptions* %102)
  %104 = load %struct.ip_moptions*, %struct.ip_moptions** %4, align 8
  store %struct.ip_moptions* %104, %struct.ip_moptions** %2, align 8
  br label %105

105:                                              ; preds = %95, %51, %35, %21, %12
  %106 = load %struct.ip_moptions*, %struct.ip_moptions** %2, align 8
  ret %struct.ip_moptions* %106
}

declare dso_local i32 @IMO_ADDREF(%struct.ip_moptions*) #1

declare dso_local %struct.ip_moptions* @ip_allocmoptions(i32) #1

declare dso_local i8* @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @IMO_REMREF(%struct.ip_moptions*) #1

declare dso_local i32 @_FREE(%struct.in_multi**, i32) #1

declare dso_local i32 @imf_init(%struct.in_mfilter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
