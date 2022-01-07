; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_output_latencies.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_output_latencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.if_latencies, %struct.ifclassq }
%struct.if_latencies = type { i64, i64 }
%struct.ifclassq = type { i32 }

@CLASSQ_EV_LINK_LATENCY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_set_output_latencies(%struct.ifnet* %0, %struct.if_latencies* %1, i32 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.if_latencies*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.if_latencies, align 8
  %8 = alloca %struct.ifclassq*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.if_latencies* %1, %struct.if_latencies** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = icmp ne %struct.ifnet* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.if_latencies*, %struct.if_latencies** %5, align 8
  %13 = icmp ne %struct.if_latencies* %12, null
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi i1 [ false, %3 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY(i32 %16)
  %18 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 1
  store %struct.ifclassq* %19, %struct.ifclassq** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load %struct.ifclassq*, %struct.ifclassq** %8, align 8
  %24 = call i32 @IFCQ_LOCK(%struct.ifclassq* %23)
  br label %25

25:                                               ; preds = %22, %14
  %26 = load %struct.ifclassq*, %struct.ifclassq** %8, align 8
  %27 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %26)
  %28 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 0
  %30 = bitcast %struct.if_latencies* %7 to i8*
  %31 = bitcast %struct.if_latencies* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  %32 = load %struct.if_latencies*, %struct.if_latencies** %5, align 8
  %33 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load %struct.if_latencies*, %struct.if_latencies** %5, align 8
  %38 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  br label %43

43:                                               ; preds = %36, %25
  %44 = load %struct.if_latencies*, %struct.if_latencies** %5, align 8
  %45 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.if_latencies*, %struct.if_latencies** %5, align 8
  %50 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %53, i32 0, i32 1
  store i64 %51, i64* %54, align 8
  br label %55

55:                                               ; preds = %48, %43
  %56 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %59, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %67 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %71, i32 0, i32 1
  store i64 %69, i64* %72, align 8
  br label %88

73:                                               ; preds = %55
  %74 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %75 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %81 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %85, i32 0, i32 0
  store i64 %83, i64* %86, align 8
  br label %87

87:                                               ; preds = %79, %73
  br label %88

88:                                               ; preds = %87, %65
  %89 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %7, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %92 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %90, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %7, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %100 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.if_latencies, %struct.if_latencies* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %98, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %96, %88
  %105 = load %struct.ifclassq*, %struct.ifclassq** %8, align 8
  %106 = load i32, i32* @CLASSQ_EV_LINK_LATENCY, align 4
  %107 = call i32 @ifnet_update_sndq(%struct.ifclassq* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %96
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load %struct.ifclassq*, %struct.ifclassq** %8, align 8
  %113 = call i32 @IFCQ_UNLOCK(%struct.ifclassq* %112)
  br label %114

114:                                              ; preds = %111, %108
  ret i32 0
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @IFCQ_LOCK(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ifnet_update_sndq(%struct.ifclassq*, i32) #1

declare dso_local i32 @IFCQ_UNLOCK(%struct.ifclassq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
