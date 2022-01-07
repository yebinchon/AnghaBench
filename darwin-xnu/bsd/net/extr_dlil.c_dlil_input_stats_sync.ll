; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_input_stats_sync.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_input_stats_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dlil_threading_info = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.ifnet_stat_increment_param }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ifnet_stat_increment_param = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.dlil_threading_info*)* @dlil_input_stats_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlil_input_stats_sync(%struct.ifnet* %0, %struct.dlil_threading_info* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.dlil_threading_info*, align 8
  %5 = alloca %struct.ifnet_stat_increment_param*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.dlil_threading_info* %1, %struct.dlil_threading_info** %4, align 8
  %6 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %4, align 8
  %7 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %6, i32 0, i32 3
  store %struct.ifnet_stat_increment_param* %7, %struct.ifnet_stat_increment_param** %5, align 8
  %8 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %9 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 7
  %16 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %17 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @atomic_add_64(i32* %15, i64 %18)
  %20 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %21 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %12, %2
  %23 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %24 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  %31 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %32 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @atomic_add_64(i32* %30, i64 %33)
  %35 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %36 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %27, %22
  %38 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %39 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  %46 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %47 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @atomic_add_64(i32* %45, i64 %48)
  %50 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %51 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %42, %37
  %53 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %54 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 4
  %61 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %62 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @atomic_add_64(i32* %60, i64 %63)
  %65 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %66 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %57, %52
  %68 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %69 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %74 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %77 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @atomic_add_64(i32* %75, i64 %78)
  %80 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %81 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %80, i32 0, i32 4
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %72, %67
  %83 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %84 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %89 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %92 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @atomic_add_64(i32* %90, i64 %93)
  %95 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %96 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %95, i32 0, i32 5
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %87, %82
  %98 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %99 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %104 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %107 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @atomic_add_64(i32* %105, i64 %108)
  %110 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %111 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %110, i32 0, i32 6
  store i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %102, %97
  %113 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %114 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %119 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %122 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %121, i32 0, i32 7
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @atomic_add_64(i32* %120, i64 %123)
  %125 = load %struct.ifnet_stat_increment_param*, %struct.ifnet_stat_increment_param** %5, align 8
  %126 = getelementptr inbounds %struct.ifnet_stat_increment_param, %struct.ifnet_stat_increment_param* %125, i32 0, i32 7
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %117, %112
  %128 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %129 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %4, align 8
  %134 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %133, i32 0, i32 2
  %135 = call i32 @lck_mtx_convert_spin(i32* %134)
  %136 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %137 = call i32 @ifnet_notify_data_threshold(%struct.ifnet* %136)
  br label %138

138:                                              ; preds = %132, %127
  %139 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %4, align 8
  %140 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %138
  %145 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %4, align 8
  %146 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %4, align 8
  %150 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %153, %148
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %151, align 4
  %156 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %4, align 8
  %157 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  store i64 0, i64* %158, align 8
  br label %159

159:                                              ; preds = %144, %138
  %160 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %4, align 8
  %161 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %159
  %166 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %4, align 8
  %167 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %4, align 8
  %171 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %169
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %172, align 8
  %177 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %4, align 8
  %178 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  store i64 0, i64* %179, align 8
  br label %180

180:                                              ; preds = %165, %159
  ret void
}

declare dso_local i32 @atomic_add_64(i32*, i64) #1

declare dso_local i32 @lck_mtx_convert_spin(i32*) #1

declare dso_local i32 @ifnet_notify_data_threshold(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
