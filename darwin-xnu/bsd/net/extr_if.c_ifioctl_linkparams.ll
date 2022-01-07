; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifioctl_linkparams.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifioctl_linkparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.ifclassq }
%struct.ifclassq = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.proc = type { i32 }
%struct.if_linkparamsreq = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tb_profile = type { i32, i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@PKTSCHEDT_NONE = common dso_local global i32 0, align 4
@IFNET_SCHED_MODEL_DRIVER_MANAGED = common dso_local global i32 0, align 4
@IFLPRF_DRVMANAGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64, %struct.proc*)* @ifioctl_linkparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifioctl_linkparams(%struct.ifnet* %0, i32 %1, i64 %2, %struct.proc* %3) #0 {
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.if_linkparamsreq*, align 8
  %10 = alloca %struct.ifclassq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tb_profile, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.proc* %3, %struct.proc** %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.if_linkparamsreq*
  store %struct.if_linkparamsreq* %19, %struct.if_linkparamsreq** %9, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %21 = icmp ne %struct.ifnet* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @VERIFY(i32 %22)
  %24 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 5
  store %struct.ifclassq* %25, %struct.ifclassq** %10, align 8
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %126 [
    i32 128, label %27
    i32 129, label %57
  ]

27:                                               ; preds = %4
  %28 = bitcast %struct.tb_profile* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 20, i1 false)
  %29 = load %struct.proc*, %struct.proc** %8, align 8
  %30 = call i32 @proc_suser(%struct.proc* %29)
  store i32 %30, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %128

33:                                               ; preds = %27
  %34 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %35 = call i32 @IFCQ_LOCK(%struct.ifclassq* %34)
  %36 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %37 = call i32 @IFCQ_IS_READY(%struct.ifclassq* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %11, align 4
  %41 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %42 = call i32 @IFCQ_UNLOCK(%struct.ifclassq* %41)
  br label %128

43:                                               ; preds = %33
  %44 = load %struct.if_linkparamsreq*, %struct.if_linkparamsreq** %9, align 8
  %45 = getelementptr inbounds %struct.if_linkparamsreq, %struct.if_linkparamsreq* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.tb_profile, %struct.tb_profile* %12, i32 0, i32 1
  %47 = call i32 @bcopy(i32* %45, i32* %46, i32 4)
  %48 = load %struct.if_linkparamsreq*, %struct.if_linkparamsreq** %9, align 8
  %49 = getelementptr inbounds %struct.if_linkparamsreq, %struct.if_linkparamsreq* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.tb_profile, %struct.tb_profile* %12, i32 0, i32 0
  %51 = call i32 @bcopy(i32* %49, i32* %50, i32 4)
  %52 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %53 = load i32, i32* @TRUE, align 4
  %54 = call i32 @ifclassq_tbr_set(%struct.ifclassq* %52, %struct.tb_profile* %12, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %56 = call i32 @IFCQ_UNLOCK(%struct.ifclassq* %55)
  br label %128

57:                                               ; preds = %4
  %58 = load i32, i32* @PKTSCHEDT_NONE, align 4
  store i32 %58, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %59 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %60 = call i32 @IFCQ_LOCK(%struct.ifclassq* %59)
  %61 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %62 = call i32 @IFCQ_IS_ENABLED(%struct.ifclassq* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %66 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %64, %57
  %69 = load %struct.if_linkparamsreq*, %struct.if_linkparamsreq** %9, align 8
  %70 = getelementptr inbounds %struct.if_linkparamsreq, %struct.if_linkparamsreq* %69, i32 0, i32 7
  %71 = call i32 @bcopy(i32* %13, i32* %70, i32 4)
  %72 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %73 = call i32 @IFCQ_TBR_IS_ENABLED(%struct.ifclassq* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %77 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %15, align 4
  %80 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %81 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %16, align 4
  br label %84

84:                                               ; preds = %75, %68
  %85 = load %struct.if_linkparamsreq*, %struct.if_linkparamsreq** %9, align 8
  %86 = getelementptr inbounds %struct.if_linkparamsreq, %struct.if_linkparamsreq* %85, i32 0, i32 6
  %87 = call i32 @bcopy(i32* %15, i32* %86, i32 4)
  %88 = load %struct.if_linkparamsreq*, %struct.if_linkparamsreq** %9, align 8
  %89 = getelementptr inbounds %struct.if_linkparamsreq, %struct.if_linkparamsreq* %88, i32 0, i32 5
  %90 = call i32 @bcopy(i32* %16, i32* %89, i32 4)
  %91 = load %struct.ifclassq*, %struct.ifclassq** %10, align 8
  %92 = call i32 @IFCQ_UNLOCK(%struct.ifclassq* %91)
  %93 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %94 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IFNET_SCHED_MODEL_DRIVER_MANAGED, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %84
  %99 = load i32, i32* @IFLPRF_DRVMANAGED, align 4
  %100 = load i32, i32* %14, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %98, %84
  %103 = load %struct.if_linkparamsreq*, %struct.if_linkparamsreq** %9, align 8
  %104 = getelementptr inbounds %struct.if_linkparamsreq, %struct.if_linkparamsreq* %103, i32 0, i32 4
  %105 = call i32 @bcopy(i32* %14, i32* %104, i32 4)
  %106 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %107 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %106, i32 0, i32 3
  %108 = load %struct.if_linkparamsreq*, %struct.if_linkparamsreq** %9, align 8
  %109 = getelementptr inbounds %struct.if_linkparamsreq, %struct.if_linkparamsreq* %108, i32 0, i32 3
  %110 = call i32 @bcopy(i32* %107, i32* %109, i32 4)
  %111 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %112 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %111, i32 0, i32 2
  %113 = load %struct.if_linkparamsreq*, %struct.if_linkparamsreq** %9, align 8
  %114 = getelementptr inbounds %struct.if_linkparamsreq, %struct.if_linkparamsreq* %113, i32 0, i32 2
  %115 = call i32 @bcopy(i32* %112, i32* %114, i32 4)
  %116 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %117 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %116, i32 0, i32 1
  %118 = load %struct.if_linkparamsreq*, %struct.if_linkparamsreq** %9, align 8
  %119 = getelementptr inbounds %struct.if_linkparamsreq, %struct.if_linkparamsreq* %118, i32 0, i32 1
  %120 = call i32 @bcopy(i32* %117, i32* %119, i32 4)
  %121 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %122 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %121, i32 0, i32 0
  %123 = load %struct.if_linkparamsreq*, %struct.if_linkparamsreq** %9, align 8
  %124 = getelementptr inbounds %struct.if_linkparamsreq, %struct.if_linkparamsreq* %123, i32 0, i32 0
  %125 = call i32 @bcopy(i32* %122, i32* %124, i32 4)
  br label %128

126:                                              ; preds = %4
  %127 = call i32 @VERIFY(i32 0)
  br label %128

128:                                              ; preds = %126, %102, %43, %39, %32
  %129 = load i32, i32* %11, align 4
  ret i32 %129
}

declare dso_local i32 @VERIFY(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @proc_suser(%struct.proc*) #1

declare dso_local i32 @IFCQ_LOCK(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_IS_READY(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_UNLOCK(%struct.ifclassq*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @ifclassq_tbr_set(%struct.ifclassq*, %struct.tb_profile*, i32) #1

declare dso_local i32 @IFCQ_IS_ENABLED(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_TBR_IS_ENABLED(%struct.ifclassq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
