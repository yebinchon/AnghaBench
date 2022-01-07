; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mleak_sort_traces.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mleak_sort_traces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtrace = type { i64 }

@MLEAK_NUM_TRACES = common dso_local global i32 0, align 4
@mleak_top_trace = common dso_local global %struct.mtrace** null, align 8
@mleak_trace_buckets = common dso_local global i32 0, align 4
@mleak_traces = common dso_local global %struct.mtrace* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mleak_sort_traces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mleak_sort_traces() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtrace*, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %14, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @MLEAK_NUM_TRACES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = load %struct.mtrace**, %struct.mtrace*** @mleak_top_trace, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.mtrace*, %struct.mtrace** %10, i64 %12
  store %struct.mtrace* null, %struct.mtrace** %13, align 8
  br label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %5

17:                                               ; preds = %5
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %96, %17
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @MLEAK_NUM_TRACES, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @mleak_trace_buckets, align 4
  %25 = icmp slt i32 %23, %24
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ false, %18 ], [ %25, %22 ]
  br i1 %27, label %28, label %99

28:                                               ; preds = %26
  %29 = load %struct.mtrace*, %struct.mtrace** @mleak_traces, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %29, i64 %31
  %33 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %96

37:                                               ; preds = %28
  %38 = load %struct.mtrace*, %struct.mtrace** @mleak_traces, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %38, i64 %40
  %42 = load %struct.mtrace**, %struct.mtrace*** @mleak_top_trace, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mtrace*, %struct.mtrace** %42, i64 %44
  store %struct.mtrace* %41, %struct.mtrace** %45, align 8
  %46 = load i32, i32* %2, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %90, %37
  %48 = load i32, i32* %3, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %93

50:                                               ; preds = %47
  %51 = load %struct.mtrace**, %struct.mtrace*** @mleak_top_trace, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.mtrace*, %struct.mtrace** %51, i64 %53
  %55 = load %struct.mtrace*, %struct.mtrace** %54, align 8
  %56 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.mtrace**, %struct.mtrace*** @mleak_top_trace, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.mtrace*, %struct.mtrace** %58, i64 %61
  %63 = load %struct.mtrace*, %struct.mtrace** %62, align 8
  %64 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %57, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %50
  br label %93

68:                                               ; preds = %50
  %69 = load %struct.mtrace**, %struct.mtrace*** @mleak_top_trace, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.mtrace*, %struct.mtrace** %69, i64 %72
  %74 = load %struct.mtrace*, %struct.mtrace** %73, align 8
  store %struct.mtrace* %74, %struct.mtrace** %4, align 8
  %75 = load %struct.mtrace**, %struct.mtrace*** @mleak_top_trace, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.mtrace*, %struct.mtrace** %75, i64 %77
  %79 = load %struct.mtrace*, %struct.mtrace** %78, align 8
  %80 = load %struct.mtrace**, %struct.mtrace*** @mleak_top_trace, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.mtrace*, %struct.mtrace** %80, i64 %83
  store %struct.mtrace* %79, %struct.mtrace** %84, align 8
  %85 = load %struct.mtrace*, %struct.mtrace** %4, align 8
  %86 = load %struct.mtrace**, %struct.mtrace*** @mleak_top_trace, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.mtrace*, %struct.mtrace** %86, i64 %88
  store %struct.mtrace* %85, %struct.mtrace** %89, align 8
  br label %90

90:                                               ; preds = %68
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %3, align 4
  br label %47

93:                                               ; preds = %67, %47
  %94 = load i32, i32* %2, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %93, %36
  %97 = load i32, i32* %1, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %1, align 4
  br label %18

99:                                               ; preds = %26
  %100 = load i32, i32* %2, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %179, %99
  %103 = load i32, i32* %1, align 4
  %104 = load i32, i32* @mleak_trace_buckets, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %182

106:                                              ; preds = %102
  %107 = load %struct.mtrace*, %struct.mtrace** @mleak_traces, align 8
  %108 = load i32, i32* %1, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %107, i64 %109
  %111 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.mtrace**, %struct.mtrace*** @mleak_top_trace, align 8
  %114 = load i32, i32* %2, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.mtrace*, %struct.mtrace** %113, i64 %115
  %117 = load %struct.mtrace*, %struct.mtrace** %116, align 8
  %118 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sle i64 %112, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %106
  br label %179

122:                                              ; preds = %106
  %123 = load %struct.mtrace*, %struct.mtrace** @mleak_traces, align 8
  %124 = load i32, i32* %1, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %123, i64 %125
  %127 = load %struct.mtrace**, %struct.mtrace*** @mleak_top_trace, align 8
  %128 = load i32, i32* %2, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.mtrace*, %struct.mtrace** %127, i64 %129
  store %struct.mtrace* %126, %struct.mtrace** %130, align 8
  %131 = load i32, i32* %2, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %175, %122
  %133 = load i32, i32* %3, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %178

135:                                              ; preds = %132
  %136 = load %struct.mtrace**, %struct.mtrace*** @mleak_top_trace, align 8
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.mtrace*, %struct.mtrace** %136, i64 %138
  %140 = load %struct.mtrace*, %struct.mtrace** %139, align 8
  %141 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.mtrace**, %struct.mtrace*** @mleak_top_trace, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.mtrace*, %struct.mtrace** %143, i64 %146
  %148 = load %struct.mtrace*, %struct.mtrace** %147, align 8
  %149 = getelementptr inbounds %struct.mtrace, %struct.mtrace* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp sle i64 %142, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %135
  br label %178

153:                                              ; preds = %135
  %154 = load %struct.mtrace**, %struct.mtrace*** @mleak_top_trace, align 8
  %155 = load i32, i32* %3, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.mtrace*, %struct.mtrace** %154, i64 %157
  %159 = load %struct.mtrace*, %struct.mtrace** %158, align 8
  store %struct.mtrace* %159, %struct.mtrace** %4, align 8
  %160 = load %struct.mtrace**, %struct.mtrace*** @mleak_top_trace, align 8
  %161 = load i32, i32* %3, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.mtrace*, %struct.mtrace** %160, i64 %162
  %164 = load %struct.mtrace*, %struct.mtrace** %163, align 8
  %165 = load %struct.mtrace**, %struct.mtrace*** @mleak_top_trace, align 8
  %166 = load i32, i32* %3, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.mtrace*, %struct.mtrace** %165, i64 %168
  store %struct.mtrace* %164, %struct.mtrace** %169, align 8
  %170 = load %struct.mtrace*, %struct.mtrace** %4, align 8
  %171 = load %struct.mtrace**, %struct.mtrace*** @mleak_top_trace, align 8
  %172 = load i32, i32* %3, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.mtrace*, %struct.mtrace** %171, i64 %173
  store %struct.mtrace* %170, %struct.mtrace** %174, align 8
  br label %175

175:                                              ; preds = %153
  %176 = load i32, i32* %3, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %3, align 4
  br label %132

178:                                              ; preds = %152, %132
  br label %179

179:                                              ; preds = %178, %121
  %180 = load i32, i32* %1, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %1, align 4
  br label %102

182:                                              ; preds = %102
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
