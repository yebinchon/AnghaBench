; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_compute_metric.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_compute_metric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_context = type { i32, i32*, i32*, i32, i32, i32, i32 }
%struct.pullup_field = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pullup_context*, %struct.pullup_field*, i32, %struct.pullup_field*, i32, i32 (i8*, i8*, i32)*, i32*)* @pullup_compute_metric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pullup_compute_metric(%struct.pullup_context* %0, %struct.pullup_field* %1, i32 %2, %struct.pullup_field* %3, i32 %4, i32 (i8*, i8*, i32)* %5, i32* %6) #0 {
  %8 = alloca %struct.pullup_context*, align 8
  %9 = alloca %struct.pullup_field*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pullup_field*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32 (i8*, i8*, i32)*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.pullup_context* %0, %struct.pullup_context** %8, align 8
  store %struct.pullup_field* %1, %struct.pullup_field** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.pullup_field* %3, %struct.pullup_field** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 (i8*, i8*, i32)* %5, i32 (i8*, i8*, i32)** %13, align 8
  store i32* %6, i32** %14, align 8
  %24 = load %struct.pullup_context*, %struct.pullup_context** %8, align 8
  %25 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %19, align 4
  %27 = load %struct.pullup_context*, %struct.pullup_context** %8, align 8
  %28 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %19, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %20, align 4
  %34 = load %struct.pullup_context*, %struct.pullup_context** %8, align 8
  %35 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %19, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 3
  store i32 %41, i32* %21, align 4
  %42 = load %struct.pullup_context*, %struct.pullup_context** %8, align 8
  %43 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %19, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 1
  store i32 %49, i32* %22, align 4
  %50 = load %struct.pullup_context*, %struct.pullup_context** %8, align 8
  %51 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %20, align 4
  %54 = mul nsw i32 %52, %53
  store i32 %54, i32* %23, align 4
  %55 = load %struct.pullup_field*, %struct.pullup_field** %9, align 8
  %56 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = icmp ne %struct.TYPE_2__* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %7
  %60 = load %struct.pullup_field*, %struct.pullup_field** %11, align 8
  %61 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = icmp ne %struct.TYPE_2__* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %59, %7
  br label %178

65:                                               ; preds = %59
  %66 = load %struct.pullup_field*, %struct.pullup_field** %9, align 8
  %67 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load %struct.pullup_field*, %struct.pullup_field** %11, align 8
  %70 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = icmp eq %struct.TYPE_2__* %68, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %65
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load i32*, i32** %14, align 8
  %79 = load %struct.pullup_context*, %struct.pullup_context** %8, align 8
  %80 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memset(i32* %78, i32 0, i32 %84)
  br label %178

86:                                               ; preds = %73, %65
  %87 = load %struct.pullup_field*, %struct.pullup_field** %9, align 8
  %88 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %19, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.pullup_context*, %struct.pullup_context** %8, align 8
  %98 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %19, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %96, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %95, i64 %105
  %107 = load %struct.pullup_context*, %struct.pullup_context** %8, align 8
  %108 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %106, i64 %110
  store i8* %111, i8** %15, align 8
  %112 = load %struct.pullup_field*, %struct.pullup_field** %11, align 8
  %113 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %19, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.pullup_context*, %struct.pullup_context** %8, align 8
  %123 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %19, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %121, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %120, i64 %130
  %132 = load %struct.pullup_context*, %struct.pullup_context** %8, align 8
  %133 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %131, i64 %135
  store i8* %136, i8** %16, align 8
  %137 = load %struct.pullup_context*, %struct.pullup_context** %8, align 8
  %138 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %18, align 4
  br label %140

140:                                              ; preds = %175, %86
  %141 = load i32, i32* %18, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %178

143:                                              ; preds = %140
  store i32 0, i32* %17, align 4
  br label %144

144:                                              ; preds = %162, %143
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* %23, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %166

148:                                              ; preds = %144
  %149 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %13, align 8
  %150 = load i8*, i8** %15, align 8
  %151 = load i32, i32* %17, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8*, i8** %16, align 8
  %155 = load i32, i32* %17, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i32, i32* %22, align 4
  %159 = call i32 %149(i8* %153, i8* %157, i32 %158)
  %160 = load i32*, i32** %14, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %14, align 8
  store i32 %159, i32* %160, align 4
  br label %162

162:                                              ; preds = %148
  %163 = load i32, i32* %20, align 4
  %164 = load i32, i32* %17, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %17, align 4
  br label %144

166:                                              ; preds = %144
  %167 = load i32, i32* %21, align 4
  %168 = load i8*, i8** %15, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  store i8* %170, i8** %15, align 8
  %171 = load i32, i32* %21, align 4
  %172 = load i8*, i8** %16, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8* %174, i8** %16, align 8
  br label %175

175:                                              ; preds = %166
  %176 = load i32, i32* %18, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %18, align 4
  br label %140

178:                                              ; preds = %64, %77, %140
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
