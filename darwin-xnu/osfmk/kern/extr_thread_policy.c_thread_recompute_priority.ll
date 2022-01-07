; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_recompute_priority.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_recompute_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i64, i32, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }

@TH_MODE_REALTIME = common dso_local global i64 0, align 8
@BASEPRI_RTQUEUES = common dso_local global i32 0, align 4
@THREAD_QOS_UNSPECIFIED = common dso_local global i32 0, align 4
@THREAD_QOS_LAST = common dso_local global i32 0, align 4
@THREAD_QOS_MIN_TIER_IMPORTANCE = common dso_local global i32 0, align 4
@thread_qos_policy_params = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@THREAD_QOS_USER_INTERACTIVE = common dso_local global i32 0, align 4
@MAXPRI = common dso_local global i32 0, align 4
@MINPRI = common dso_local global i32 0, align 4
@TH_SFLAG_FAILSAFE = common dso_local global i32 0, align 4
@DEPRESSPRI = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@BASEPRI_DEFAULT = common dso_local global i32 0, align 4
@MAXPRI_THROTTLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_recompute_priority(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %180

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TH_MODE_REALTIME, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = load i32, i32* @BASEPRI_RTQUEUES, align 4
  %22 = call i32 @sched_set_thread_base_priority(%struct.TYPE_7__* %20, i32 %21)
  br label %180

23:                                               ; preds = %13
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %85

30:                                               ; preds = %23
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %4, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %30
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @THREAD_QOS_LAST, align 4
  %49 = icmp slt i32 %47, %48
  br label %50

50:                                               ; preds = %46, %30
  %51 = phi i1 [ false, %30 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @THREAD_QOS_MIN_TIER_IMPORTANCE, align 4
  %59 = icmp sge i32 %57, %58
  br label %60

60:                                               ; preds = %56, %50
  %61 = phi i1 [ false, %50 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @thread_qos_policy_params, i32 0, i32 0), align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @thread_qos_scaled_relative_priority(i32 %69, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @THREAD_QOS_USER_INTERACTIVE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %60
  %76 = load i32, i32* %5, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %78, %75, %60
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %3, align 4
  br label %114

85:                                               ; preds = %23
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @MAXPRI, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @MAXPRI, align 4
  store i32 %92, i32* %3, align 4
  br label %108

93:                                               ; preds = %85
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @MAXPRI, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i32, i32* @MAXPRI, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %107

103:                                              ; preds = %93
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %103, %100
  br label %108

108:                                              ; preds = %107, %91
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %108, %81
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %3, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @MAX(i32 %116, i32 %119)
  store i32 %120, i32* %3, align 4
  %121 = load i32, i32* %3, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = icmp sgt i32 %121, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %115
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %3, align 4
  br label %137

130:                                              ; preds = %115
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @MINPRI, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* @MINPRI, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %134, %130
  br label %137

137:                                              ; preds = %136, %126
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @TH_MODE_REALTIME, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %137
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @TH_SFLAG_FAILSAFE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = load i32, i32* @DEPRESSPRI, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %143, %137
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @TRUE, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %176

159:                                              ; preds = %152
  %160 = load i32, i32* %3, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = icmp slt i32 %160, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %165, %159
  %170 = load i32, i32* %3, align 4
  %171 = load i32, i32* @BASEPRI_DEFAULT, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i32, i32* @BASEPRI_DEFAULT, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %173, %169
  br label %176

176:                                              ; preds = %175, %152
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %178 = load i32, i32* %3, align 4
  %179 = call i32 @sched_set_thread_base_priority(%struct.TYPE_7__* %177, i32 %178)
  br label %180

180:                                              ; preds = %176, %19, %12
  ret void
}

declare dso_local i32 @sched_set_thread_base_priority(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @thread_qos_scaled_relative_priority(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
