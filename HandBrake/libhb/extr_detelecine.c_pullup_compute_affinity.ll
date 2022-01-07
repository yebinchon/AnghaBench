; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_compute_affinity.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_compute_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_context = type { i32 }
%struct.pullup_field = type { i32, i64, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32*, i32*, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@PULLUP_HAVE_AFFINITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pullup_context*, %struct.pullup_field*)* @pullup_compute_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pullup_compute_affinity(%struct.pullup_context* %0, %struct.pullup_field* %1) #0 {
  %3 = alloca %struct.pullup_context*, align 8
  %4 = alloca %struct.pullup_field*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pullup_context* %0, %struct.pullup_context** %3, align 8
  store %struct.pullup_field* %1, %struct.pullup_field** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %15 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PULLUP_HAVE_AFFINITY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %191

21:                                               ; preds = %2
  %22 = load i32, i32* @PULLUP_HAVE_AFFINITY, align 4
  %23 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %24 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %28 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %31 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %30, i32 0, i32 5
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %29, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %21
  %39 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %40 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %39, i32 0, i32 2
  store i32 1, i32* %40, align 8
  %41 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %42 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %41, i32 0, i32 5
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %46 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %45, i32 0, i32 5
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 -1, i32* %50, align 8
  %51 = load i32, i32* @PULLUP_HAVE_AFFINITY, align 4
  %52 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %53 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %52, i32 0, i32 5
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %51
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @PULLUP_HAVE_AFFINITY, align 4
  %59 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %60 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %59, i32 0, i32 5
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %58
  store i32 %66, i32* %64, align 4
  br label %191

67:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %165, %67
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %71 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %168

74:                                               ; preds = %68
  %75 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %76 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %75, i32 0, i32 6
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %9, align 4
  %84 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %85 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %84, i32 0, i32 5
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %10, align 4
  %93 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %94 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %11, align 4
  %100 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %101 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %107, %108
  %110 = sub nsw i32 %106, %109
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %9, align 4
  %113 = sub nsw i32 %111, %112
  %114 = call i32 @PULLUP_ABS(i32 %113)
  %115 = add nsw i32 %110, %114
  store i32 %115, i32* %12, align 4
  %116 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %117 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %116, i32 0, i32 5
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %125, %126
  %128 = sub nsw i32 %124, %127
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %10, align 4
  %131 = sub nsw i32 %129, %130
  %132 = call i32 @PULLUP_ABS(i32 %131)
  %133 = add nsw i32 %128, %132
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %74
  %137 = load i32, i32* %12, align 4
  br label %139

138:                                              ; preds = %74
  br label %139

139:                                              ; preds = %138, %136
  %140 = phi i32 [ %137, %136 ], [ 0, %138 ]
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* %13, align 4
  br label %146

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %145, %143
  %147 = phi i32 [ %144, %143 ], [ 0, %145 ]
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %13, align 4
  %150 = sub nsw i32 %148, %149
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %146
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %154, %146
  %157 = load i32, i32* %8, align 4
  %158 = sub nsw i32 0, %157
  %159 = load i32, i32* %7, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, i32* %8, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %161, %156
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %68

168:                                              ; preds = %68
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %169, %170
  %172 = icmp slt i32 %171, 64
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %191

174:                                              ; preds = %168
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %6, align 4
  %177 = mul nsw i32 6, %176
  %178 = icmp sgt i32 %175, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %181 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %180, i32 0, i32 2
  store i32 -1, i32* %181, align 8
  br label %191

182:                                              ; preds = %174
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* %7, align 4
  %185 = mul nsw i32 6, %184
  %186 = icmp sgt i32 %183, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %189 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %188, i32 0, i32 2
  store i32 1, i32* %189, align 8
  br label %190

190:                                              ; preds = %187, %182
  br label %191

191:                                              ; preds = %20, %38, %173, %190, %179
  ret void
}

declare dso_local i32 @PULLUP_ABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
