; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_overlay.c_alpha_composite.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_overlay.c_alpha_composite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32)* @alpha_composite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alpha_composite(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %33 = load i32, i32* %18, align 4
  %34 = sub nsw i32 0, %33
  %35 = load i32, i32* %16, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @FFMIN(i32 %36, i32 %37)
  store i32 %38, i32* %27, align 4
  %39 = load i32, i32* %27, align 4
  %40 = load i32, i32* %19, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %20, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %30, align 4
  %44 = load i32, i32* %27, align 4
  %45 = load i32, i32* %19, align 4
  %46 = add nsw i32 %45, 1
  %47 = mul nsw i32 %44, %46
  %48 = load i32, i32* %20, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %31, align 4
  %50 = load i32, i32* %18, align 4
  %51 = sub nsw i32 0, %50
  %52 = call i32 @FFMAX(i32 %51, i32 0)
  store i32 %52, i32* %26, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %26, align 4
  %59 = load i32, i32* %30, align 4
  %60 = add nsw i32 %58, %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %60, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %57, i64 %67
  store i32* %68, i32** %23, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32**, i32*** %70, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %26, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* %30, align 4
  %78 = add nsw i32 %76, %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %78, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %73, i64 %85
  store i32* %86, i32** %25, align 8
  %87 = load i32, i32* %26, align 4
  %88 = load i32, i32* %30, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, i32* %26, align 4
  br label %90

90:                                               ; preds = %176, %10
  %91 = load i32, i32* %26, align 4
  %92 = load i32, i32* %31, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %179

94:                                               ; preds = %90
  %95 = load i32, i32* %17, align 4
  %96 = sub nsw i32 0, %95
  %97 = call i32 @FFMAX(i32 %96, i32 0)
  store i32 %97, i32* %28, align 4
  %98 = load i32*, i32** %23, align 8
  %99 = load i32, i32* %28, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32* %101, i32** %22, align 8
  %102 = load i32*, i32** %25, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %28, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32* %108, i32** %24, align 8
  %109 = load i32, i32* %17, align 4
  %110 = sub nsw i32 0, %109
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @FFMIN(i32 %112, i32 %113)
  store i32 %114, i32* %29, align 4
  br label %115

115:                                              ; preds = %156, %94
  %116 = load i32, i32* %28, align 4
  %117 = load i32, i32* %29, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %159

119:                                              ; preds = %115
  %120 = load i32*, i32** %22, align 8
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %21, align 4
  %122 = load i32, i32* %21, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load i32, i32* %21, align 4
  %126 = icmp ne i32 %125, 255
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load i32*, i32** %24, align 8
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %32, align 4
  %130 = load i32, i32* %21, align 4
  %131 = load i32, i32* %32, align 4
  %132 = call i32 @UNPREMULTIPLY_ALPHA(i32 %130, i32 %131)
  store i32 %132, i32* %21, align 4
  br label %133

133:                                              ; preds = %127, %124, %119
  %134 = load i32, i32* %21, align 4
  switch i32 %134, label %140 [
    i32 0, label %135
    i32 255, label %136
  ]

135:                                              ; preds = %133
  br label %151

136:                                              ; preds = %133
  %137 = load i32*, i32** %22, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %24, align 8
  store i32 %138, i32* %139, align 4
  br label %151

140:                                              ; preds = %133
  %141 = load i32*, i32** %24, align 8
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 255, %142
  %144 = load i32*, i32** %22, align 8
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %143, %145
  %147 = call i32 @FAST_DIV255(i32 %146)
  %148 = load i32*, i32** %24, align 8
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, %147
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %140, %136, %135
  %152 = load i32*, i32** %24, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  store i32* %153, i32** %24, align 8
  %154 = load i32*, i32** %22, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  store i32* %155, i32** %22, align 8
  br label %156

156:                                              ; preds = %151
  %157 = load i32, i32* %28, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %28, align 4
  br label %115

159:                                              ; preds = %115
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 3
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %25, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  store i32* %167, i32** %25, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %23, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32* %175, i32** %23, align 8
  br label %176

176:                                              ; preds = %159
  %177 = load i32, i32* %26, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %26, align 4
  br label %90

179:                                              ; preds = %90
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @UNPREMULTIPLY_ALPHA(i32, i32) #1

declare dso_local i32 @FAST_DIV255(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
