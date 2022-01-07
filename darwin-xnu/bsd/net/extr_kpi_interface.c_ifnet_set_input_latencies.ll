; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_input_latencies.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_input_latencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.if_latencies }
%struct.if_latencies = type { i64, i64 }

@CLASSQ_EV_LINK_LATENCY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_set_input_latencies(%struct.ifnet* %0, %struct.if_latencies* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.if_latencies*, align 8
  %5 = alloca %struct.if_latencies, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.if_latencies* %1, %struct.if_latencies** %4, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = icmp ne %struct.ifnet* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.if_latencies*, %struct.if_latencies** %4, align 8
  %10 = icmp ne %struct.if_latencies* %9, null
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ false, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @VERIFY(i32 %13)
  %15 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 0
  %17 = bitcast %struct.if_latencies* %5 to i8*
  %18 = bitcast %struct.if_latencies* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false)
  %19 = load %struct.if_latencies*, %struct.if_latencies** %4, align 8
  %20 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %11
  %24 = load %struct.if_latencies*, %struct.if_latencies** %4, align 8
  %25 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  br label %30

30:                                               ; preds = %23, %11
  %31 = load %struct.if_latencies*, %struct.if_latencies** %4, align 8
  %32 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.if_latencies*, %struct.if_latencies** %4, align 8
  %37 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %40, i32 0, i32 1
  store i64 %38, i64* %41, align 8
  br label %42

42:                                               ; preds = %35, %30
  %43 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %46, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %42
  %53 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %58, i32 0, i32 1
  store i64 %56, i64* %59, align 8
  br label %75

60:                                               ; preds = %42
  %61 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  br label %74

74:                                               ; preds = %66, %60
  br label %75

75:                                               ; preds = %74, %52
  %76 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %5, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %79 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %77, %81
  br i1 %82, label %91, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %5, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %87 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %85, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %83, %75
  %92 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %93 = load i32, i32* @CLASSQ_EV_LINK_LATENCY, align 4
  %94 = call i32 @ifnet_update_rcv(%struct.ifnet* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %83
  ret i32 0
}

declare dso_local i32 @VERIFY(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ifnet_update_rcv(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
