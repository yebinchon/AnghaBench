; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-band-test.c_draw_horiz_band.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-band-test.c_draw_horiz_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, i64* }
%struct.TYPE_7__ = type { i32, i32 }

@draw_horiz_band_called = common dso_local global i32 0, align 4
@slice_byte_buffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*, i32*, i32, i32, i32)* @draw_horiz_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_horiz_band(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 1, i32* @draw_horiz_band_called, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_7__* @av_pix_fmt_desc_get(i32 %21)
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %14, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 0, %25
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %26, %29
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sub nsw i32 0, %32
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %33, %36
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 0, %39
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %40, %43
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %17, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 0, %48
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %49, %52
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %98, %6
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %101

59:                                               ; preds = %55
  %60 = load i64, i64* @slice_byte_buffer, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %60, %66
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %68, %71
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %67, %73
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %79, %83
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %85, %90
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %84, %92
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @memcpy(i64 %74, i64 %93, i32 %96)
  br label %98

98:                                               ; preds = %59
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %55

101:                                              ; preds = %55
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %148, %101
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %151

106:                                              ; preds = %102
  %107 = load i64, i64* @slice_byte_buffer, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %110, %113
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %107, %115
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %17, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %116, %120
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %15, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %121, %125
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 1
  %131 = load i64, i64* %130, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %131, %135
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %137, %142
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %136, %144
  %146 = load i32, i32* %15, align 4
  %147 = call i32 @memcpy(i64 %126, i64 %145, i32 %146)
  br label %148

148:                                              ; preds = %106
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  br label %102

151:                                              ; preds = %102
  store i32 0, i32* %13, align 4
  br label %152

152:                                              ; preds = %203, %151
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %16, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %206

156:                                              ; preds = %152
  %157 = load i64, i64* @slice_byte_buffer, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = mul nsw i32 %160, %163
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %157, %165
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %18, align 4
  %169 = mul nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %166, %170
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %17, align 4
  %174 = mul nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %171, %175
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* %15, align 4
  %179 = mul nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %176, %180
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  %184 = load i64*, i64** %183, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 2
  %186 = load i64, i64* %185, align 8
  %187 = load i32*, i32** %9, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %186, %190
  %192 = load i32, i32* %13, align 4
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2
  %197 = load i32, i32* %196, align 4
  %198 = mul nsw i32 %192, %197
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %191, %199
  %201 = load i32, i32* %15, align 4
  %202 = call i32 @memcpy(i64 %181, i64 %200, i32 %201)
  br label %203

203:                                              ; preds = %156
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %13, align 4
  br label %152

206:                                              ; preds = %152
  ret void
}

declare dso_local %struct.TYPE_7__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
