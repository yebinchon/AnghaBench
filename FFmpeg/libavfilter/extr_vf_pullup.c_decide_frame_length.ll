; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pullup.c_decide_frame_length.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pullup.c_decide_frame_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32 }

@BREAK_RIGHT = common dso_local global i32 0, align 4
@BREAK_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @decide_frame_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decide_frame_length(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %4, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %5, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %6, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @queue_length(%struct.TYPE_12__* %22, i32 %25)
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %171

29:                                               ; preds = %1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %7, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @queue_length(%struct.TYPE_12__* %33, i32 %36)
  store i32 %37, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %59, %29
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %45, 3
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = call i32 @compute_breaks(%struct.TYPE_13__* %49, %struct.TYPE_12__* %50)
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = call i32 @compute_affinity(%struct.TYPE_13__* %53, %struct.TYPE_12__* %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %7, align 8
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %38

62:                                               ; preds = %38
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 1, i32* %2, align 4
  br label %171

68:                                               ; preds = %62
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = call i32 @find_first_break(%struct.TYPE_12__* %69, i32 3)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %78, %73, %68
  %80 = load i32, i32* %9, align 4
  switch i32 %80, label %146 [
    i32 1, label %81
    i32 2, label %100
    i32 3, label %139
  ]

81:                                               ; preds = %79
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %84, 1
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, -1
  br label %96

96:                                               ; preds = %91, %86, %81
  %97 = phi i1 [ false, %86 ], [ false, %81 ], [ %95, %91 ]
  %98 = zext i1 %97 to i32
  %99 = add nsw i32 1, %98
  store i32 %99, i32* %2, align 4
  br label %171

100:                                              ; preds = %79
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %132

105:                                              ; preds = %100
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @BREAK_RIGHT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %105
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @BREAK_LEFT, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %114
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 1
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, -1
  br i1 %130, label %131, label %132

131:                                              ; preds = %126, %121
  store i32 1, i32* %2, align 4
  br label %171

132:                                              ; preds = %126, %114, %105, %100
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 1
  %137 = zext i1 %136 to i32
  %138 = add nsw i32 1, %137
  store i32 %138, i32* %2, align 4
  br label %171

139:                                              ; preds = %79
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 1
  %144 = zext i1 %143 to i32
  %145 = add nsw i32 2, %144
  store i32 %145, i32* %2, align 4
  br label %171

146:                                              ; preds = %79
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 1, i32* %2, align 4
  br label %171

152:                                              ; preds = %146
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store i32 2, i32* %2, align 4
  br label %171

158:                                              ; preds = %152
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 1
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 3, i32 1
  store i32 %169, i32* %2, align 4
  br label %171

170:                                              ; preds = %158
  store i32 2, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %163, %157, %151, %139, %132, %131, %96, %67, %28
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @queue_length(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @compute_breaks(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @compute_affinity(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @find_first_break(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
