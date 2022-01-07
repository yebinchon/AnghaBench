; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcenc.c_sbc_analyze_audio.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcenc.c_sbc_analyze_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_5__*, i32*, i64, i64)*, i32, i32**, i32 (%struct.TYPE_5__*, i32*, i64, i64)* }
%struct.sbc_frame = type { i32, i32, i32, i64** }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.sbc_frame*)* @sbc_analyze_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbc_analyze_audio(%struct.TYPE_5__* %0, %struct.sbc_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.sbc_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.sbc_frame* %1, %struct.sbc_frame** %5, align 8
  %9 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %10 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %214 [
    i32 4, label %12
    i32 8, label %113
  ]

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %105, %12
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %16 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %108

19:                                               ; preds = %13
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 4, %32
  %34 = sub nsw i32 %29, %33
  %35 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %36 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %37, 4
  %39 = add nsw i32 %34, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %26, i64 %40
  store i32* %41, i32** %8, align 8
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %98, %19
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %45 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %104

48:                                               ; preds = %42
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 4
  %51 = load i32 (%struct.TYPE_5__*, i32*, i64, i64)*, i32 (%struct.TYPE_5__*, i32*, i64, i64)** %50, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %55 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %54, i32 0, i32 3
  %56 = load i64**, i64*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64*, i64** %56, i64 %58
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %66 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %65, i32 0, i32 3
  %67 = load i64**, i64*** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64*, i64** %67, i64 %70
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %78 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %77, i32 0, i32 3
  %79 = load i64**, i64*** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64*, i64** %79, i64 %81
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %76, %87
  %89 = call i32 %51(%struct.TYPE_5__* %52, i32* %53, i64 %64, i64 %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 4, %92
  %94 = load i32*, i32** %8, align 8
  %95 = sext i32 %93 to i64
  %96 = sub i64 0, %95
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32* %97, i32** %8, align 8
  br label %98

98:                                               ; preds = %48
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %7, align 4
  br label %42

104:                                              ; preds = %42
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %13

108:                                              ; preds = %13
  %109 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %110 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = mul nsw i32 %111, 4
  store i32 %112, i32* %3, align 4
  br label %217

113:                                              ; preds = %2
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %206, %113
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %117 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %209

120:                                              ; preds = %114
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  %123 = load i32**, i32*** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = mul nsw i32 8, %133
  %135 = sub nsw i32 %130, %134
  %136 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %137 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = mul nsw i32 %138, 8
  %140 = add nsw i32 %135, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %127, i64 %141
  store i32* %142, i32** %8, align 8
  store i32 0, i32* %7, align 4
  br label %143

143:                                              ; preds = %199, %120
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %146 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %205

149:                                              ; preds = %143
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32 (%struct.TYPE_5__*, i32*, i64, i64)*, i32 (%struct.TYPE_5__*, i32*, i64, i64)** %151, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %156 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %155, i32 0, i32 3
  %157 = load i64**, i64*** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64*, i64** %157, i64 %159
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %167 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %166, i32 0, i32 3
  %168 = load i64**, i64*** %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64*, i64** %168, i64 %171
  %173 = load i64*, i64** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %179 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %178, i32 0, i32 3
  %180 = load i64**, i64*** %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64*, i64** %180, i64 %182
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = sub nsw i64 %177, %188
  %190 = call i32 %152(%struct.TYPE_5__* %153, i32* %154, i64 %165, i64 %189)
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = mul nsw i32 8, %193
  %195 = load i32*, i32** %8, align 8
  %196 = sext i32 %194 to i64
  %197 = sub i64 0, %196
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32* %198, i32** %8, align 8
  br label %199

199:                                              ; preds = %149
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %7, align 4
  br label %143

205:                                              ; preds = %143
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %6, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %6, align 4
  br label %114

209:                                              ; preds = %114
  %210 = load %struct.sbc_frame*, %struct.sbc_frame** %5, align 8
  %211 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = mul nsw i32 %212, 8
  store i32 %213, i32* %3, align 4
  br label %217

214:                                              ; preds = %2
  %215 = load i32, i32* @EIO, align 4
  %216 = call i32 @AVERROR(i32 %215)
  store i32 %216, i32* %3, align 4
  br label %217

217:                                              ; preds = %214, %209, %108
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
