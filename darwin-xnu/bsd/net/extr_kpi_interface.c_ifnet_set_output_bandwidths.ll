; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_output_bandwidths.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_output_bandwidths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32*, %struct.if_bandwidths, %struct.TYPE_2__, %struct.ifclassq }
%struct.if_bandwidths = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ifclassq = type { i32 }

@CLASSQ_EV_LINK_BANDWIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_set_output_bandwidths(%struct.ifnet* %0, %struct.if_bandwidths* %1, i32 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.if_bandwidths*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.if_bandwidths, align 8
  %8 = alloca %struct.ifclassq*, align 8
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.if_bandwidths* %1, %struct.if_bandwidths** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = icmp ne %struct.ifnet* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.if_bandwidths*, %struct.if_bandwidths** %5, align 8
  %14 = icmp ne %struct.if_bandwidths* %13, null
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi i1 [ false, %3 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @VERIFY(i32 %17)
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 5
  store %struct.ifclassq* %20, %struct.ifclassq** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load %struct.ifclassq*, %struct.ifclassq** %8, align 8
  %25 = call i32 @IFCQ_LOCK(%struct.ifclassq* %24)
  br label %26

26:                                               ; preds = %23, %15
  %27 = load %struct.ifclassq*, %struct.ifclassq** %8, align 8
  %28 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %27)
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 3
  %31 = bitcast %struct.if_bandwidths* %7 to i8*
  %32 = bitcast %struct.if_bandwidths* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 16, i1 false)
  %33 = load %struct.if_bandwidths*, %struct.if_bandwidths** %5, align 8
  %34 = getelementptr inbounds %struct.if_bandwidths, %struct.if_bandwidths* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.if_bandwidths*, %struct.if_bandwidths** %5, align 8
  %39 = getelementptr inbounds %struct.if_bandwidths, %struct.if_bandwidths* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.if_bandwidths, %struct.if_bandwidths* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  br label %44

44:                                               ; preds = %37, %26
  %45 = load %struct.if_bandwidths*, %struct.if_bandwidths** %5, align 8
  %46 = getelementptr inbounds %struct.if_bandwidths, %struct.if_bandwidths* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.if_bandwidths*, %struct.if_bandwidths** %5, align 8
  %51 = getelementptr inbounds %struct.if_bandwidths, %struct.if_bandwidths* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.if_bandwidths, %struct.if_bandwidths* %54, i32 0, i32 1
  store i64 %52, i64* %55, align 8
  br label %56

56:                                               ; preds = %49, %44
  %57 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.if_bandwidths, %struct.if_bandwidths* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.if_bandwidths, %struct.if_bandwidths* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %60, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %56
  %67 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.if_bandwidths, %struct.if_bandwidths* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.if_bandwidths, %struct.if_bandwidths* %72, i32 0, i32 1
  store i64 %70, i64* %73, align 8
  br label %89

74:                                               ; preds = %56
  %75 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.if_bandwidths, %struct.if_bandwidths* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %82 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.if_bandwidths, %struct.if_bandwidths* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %86 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.if_bandwidths, %struct.if_bandwidths* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  br label %88

88:                                               ; preds = %80, %74
  br label %89

89:                                               ; preds = %88, %66
  %90 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %91 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.if_bandwidths, %struct.if_bandwidths* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %95 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @MAX(i64 %93, i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %89
  %102 = load i32, i32* %9, align 4
  %103 = icmp ugt i32 %102, -1
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %107

105:                                              ; preds = %101
  %106 = load i32, i32* %9, align 4
  br label %107

107:                                              ; preds = %105, %104
  %108 = phi i32 [ -1, %104 ], [ %106, %105 ]
  %109 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %110 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %89
  %112 = getelementptr inbounds %struct.if_bandwidths, %struct.if_bandwidths* %7, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %115 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.if_bandwidths, %struct.if_bandwidths* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %113, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.if_bandwidths, %struct.if_bandwidths* %7, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %123 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.if_bandwidths, %struct.if_bandwidths* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %121, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %119, %111
  %128 = load %struct.ifclassq*, %struct.ifclassq** %8, align 8
  %129 = load i32, i32* @CLASSQ_EV_LINK_BANDWIDTH, align 4
  %130 = call i32 @ifnet_update_sndq(%struct.ifclassq* %128, i32 %129)
  br label %131

131:                                              ; preds = %127, %119
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load %struct.ifclassq*, %struct.ifclassq** %8, align 8
  %136 = call i32 @IFCQ_UNLOCK(%struct.ifclassq* %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %139 = call i64 @IFNET_IS_WIFI(%struct.ifnet* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %137
  %142 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %143 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %148 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %147, i32 0, i32 1
  %149 = call i32 @lck_rw_lock_exclusive(i32* %148)
  %150 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %151 = call i32 @ifnet_set_link_status_outbw(%struct.ifnet* %150)
  %152 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %153 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %152, i32 0, i32 1
  %154 = call i32 @lck_rw_done(i32* %153)
  br label %155

155:                                              ; preds = %146, %141, %137
  ret i32 0
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @IFCQ_LOCK(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MAX(i64, i32) #1

declare dso_local i32 @ifnet_update_sndq(%struct.ifclassq*, i32) #1

declare dso_local i32 @IFCQ_UNLOCK(%struct.ifclassq*) #1

declare dso_local i64 @IFNET_IS_WIFI(%struct.ifnet*) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32*) #1

declare dso_local i32 @ifnet_set_link_status_outbw(%struct.ifnet*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
