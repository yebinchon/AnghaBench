; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowdec.c_correlate_slice_buffered.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowdec.c_correlate_slice_buffered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_3__*, i64*, i32, i32, i32, i32, i32)* @correlate_slice_buffered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @correlate_slice_buffered(i32* %0, i32* %1, %struct.TYPE_3__* %2, i64* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %12, align 8
  store i64* %3, i64** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %19, align 4
  store i64* null, i64** %22, align 8
  %27 = load i32, i32* %17, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %9
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %17, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = sext i32 %36 to i64
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = call i64* @slice_buffer_get_line(i32* %30, i64 %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %42, i64 %46
  store i64* %47, i64** %22, align 8
  br label %48

48:                                               ; preds = %29, %9
  %49 = load i32, i32* %17, align 4
  store i32 %49, i32* %21, align 4
  br label %50

50:                                               ; preds = %207, %48
  %51 = load i32, i32* %21, align 4
  %52 = load i32, i32* %18, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %210

54:                                               ; preds = %50
  %55 = load i64*, i64** %22, align 8
  store i64* %55, i64** %23, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %21, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = sext i32 %61 to i64
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = call i64* @slice_buffer_get_line(i32* %56, i64 %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %67, i64 %71
  store i64* %72, i64** %22, align 8
  store i32 0, i32* %20, align 4
  br label %73

73:                                               ; preds = %203, %54
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* %19, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %206

77:                                               ; preds = %73
  %78 = load i32, i32* %20, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %186

80:                                               ; preds = %77
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %130

83:                                               ; preds = %80
  %84 = load i32, i32* %21, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %116

86:                                               ; preds = %83
  %87 = load i32, i32* %20, align 4
  %88 = add nsw i32 %87, 1
  %89 = load i32, i32* %19, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %116

91:                                               ; preds = %86
  %92 = load i64*, i64** %22, align 8
  %93 = load i32, i32* %20, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %23, align 8
  %99 = load i32, i32* %20, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %23, align 8
  %104 = load i32, i32* %20, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %103, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @mid_pred(i64 %97, i64 %102, i64 %108)
  %110 = load i64*, i64** %22, align 8
  %111 = load i32, i32* %20, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, %109
  store i64 %115, i64* %113, align 8
  br label %129

116:                                              ; preds = %86, %83
  %117 = load i64*, i64** %22, align 8
  %118 = load i32, i32* %20, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %117, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** %22, align 8
  %124 = load i32, i32* %20, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, %122
  store i64 %128, i64* %126, align 8
  br label %129

129:                                              ; preds = %116, %91
  br label %185

130:                                              ; preds = %80
  %131 = load i32, i32* %21, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %171

133:                                              ; preds = %130
  %134 = load i64*, i64** %22, align 8
  %135 = load i32, i32* %20, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %134, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i64*, i64** %23, align 8
  %141 = load i32, i32* %20, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = load i64*, i64** %22, align 8
  %146 = load i32, i32* %20, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %145, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load i64*, i64** %23, align 8
  %152 = load i32, i32* %20, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %150, %155
  %157 = load i64*, i64** %23, align 8
  %158 = load i32, i32* %20, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %157, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %156, %162
  %164 = call i64 @mid_pred(i64 %139, i64 %144, i64 %163)
  %165 = load i64*, i64** %22, align 8
  %166 = load i32, i32* %20, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, %164
  store i64 %170, i64* %168, align 8
  br label %184

171:                                              ; preds = %130
  %172 = load i64*, i64** %22, align 8
  %173 = load i32, i32* %20, align 4
  %174 = sub nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %172, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = load i64*, i64** %22, align 8
  %179 = load i32, i32* %20, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, %177
  store i64 %183, i64* %181, align 8
  br label %184

184:                                              ; preds = %171, %133
  br label %185

185:                                              ; preds = %184, %129
  br label %202

186:                                              ; preds = %77
  %187 = load i32, i32* %21, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %186
  %190 = load i64*, i64** %23, align 8
  %191 = load i32, i32* %20, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = load i64*, i64** %22, align 8
  %196 = load i32, i32* %20, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, %194
  store i64 %200, i64* %198, align 8
  br label %201

201:                                              ; preds = %189, %186
  br label %202

202:                                              ; preds = %201, %185
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %20, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %20, align 4
  br label %73

206:                                              ; preds = %73
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %21, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %21, align 4
  br label %50

210:                                              ; preds = %50
  ret void
}

declare dso_local i64* @slice_buffer_get_line(i32*, i64) #1

declare dso_local i64 @mid_pred(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
