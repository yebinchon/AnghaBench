; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_get_buffer.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_get_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_buffer = type { i32 }
%struct.pullup_context = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pullup_buffer* @pullup_get_buffer(%struct.pullup_context* %0, i32 %1) #0 {
  %3 = alloca %struct.pullup_buffer*, align 8
  %4 = alloca %struct.pullup_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pullup_context* %0, %struct.pullup_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %50

9:                                                ; preds = %2
  %10 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %11 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %50

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %17 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %15, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %14
  %23 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %24 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %22
  %36 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %37 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %38 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = call i32 @pullup_alloc_buffer(%struct.pullup_context* %36, %struct.TYPE_5__* %41)
  %43 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %44 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call %struct.pullup_buffer* @pullup_lock_buffer(%struct.TYPE_5__* %47, i32 %48)
  store %struct.pullup_buffer* %49, %struct.pullup_buffer** %3, align 8
  br label %171

50:                                               ; preds = %22, %14, %9, %2
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %100, %50
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %54 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %103

57:                                               ; preds = %51
  %58 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %59 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %100

70:                                               ; preds = %57
  %71 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %72 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  br label %100

83:                                               ; preds = %70
  %84 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %85 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %86 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = call i32 @pullup_alloc_buffer(%struct.pullup_context* %84, %struct.TYPE_5__* %90)
  %92 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %93 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = load i32, i32* %5, align 4
  %99 = call %struct.pullup_buffer* @pullup_lock_buffer(%struct.TYPE_5__* %97, i32 %98)
  store %struct.pullup_buffer* %99, %struct.pullup_buffer** %3, align 8
  br label %171

100:                                              ; preds = %82, %69
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %51

103:                                              ; preds = %51
  %104 = load i32, i32* %5, align 4
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store %struct.pullup_buffer* null, %struct.pullup_buffer** %3, align 8
  br label %171

107:                                              ; preds = %103
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %167, %107
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %111 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %170

114:                                              ; preds = %108
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  %117 = and i32 %116, 1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %121 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %120, i32 0, i32 1
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %119
  br label %167

132:                                              ; preds = %119, %114
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  %135 = and i32 %134, 2
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %132
  %138 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %139 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %138, i32 0, i32 1
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %137
  br label %167

150:                                              ; preds = %137, %132
  %151 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %152 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %153 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %152, i32 0, i32 1
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i64 %156
  %158 = call i32 @pullup_alloc_buffer(%struct.pullup_context* %151, %struct.TYPE_5__* %157)
  %159 = load %struct.pullup_context*, %struct.pullup_context** %4, align 8
  %160 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %159, i32 0, i32 1
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i64 %163
  %165 = load i32, i32* %5, align 4
  %166 = call %struct.pullup_buffer* @pullup_lock_buffer(%struct.TYPE_5__* %164, i32 %165)
  store %struct.pullup_buffer* %166, %struct.pullup_buffer** %3, align 8
  br label %171

167:                                              ; preds = %149, %131
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %6, align 4
  br label %108

170:                                              ; preds = %108
  store %struct.pullup_buffer* null, %struct.pullup_buffer** %3, align 8
  br label %171

171:                                              ; preds = %170, %150, %106, %83, %35
  %172 = load %struct.pullup_buffer*, %struct.pullup_buffer** %3, align 8
  ret %struct.pullup_buffer* %172
}

declare dso_local i32 @pullup_alloc_buffer(%struct.pullup_context*, %struct.TYPE_5__*) #1

declare dso_local %struct.pullup_buffer* @pullup_lock_buffer(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
