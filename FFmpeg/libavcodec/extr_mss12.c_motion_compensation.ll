; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss12.c_motion_compensation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss12.c_motion_compensation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32, i32*, i32*, i32*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32, i32)* @motion_compensation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @motion_compensation(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %69, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %33, %38
  br i1 %39, label %69, label %40

40:                                               ; preds = %24
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %57, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %48
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %64, %48, %40, %24, %5
  store i32 -1, i32* %6, align 4
  br label %216

70:                                               ; preds = %64
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %77, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %76, i64 %82
  store i32* %83, i32** %12, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = mul nsw i32 %87, 3
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %91, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %90, i64 %96
  store i32* %97, i32** %13, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %8, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %9, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 6
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %144

116:                                              ; preds = %70
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 7
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = mul nsw i32 %123, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %122, i64 %128
  store i32* %129, i32** %14, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 6
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = mul nsw i32 %133, 3
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 %137, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %136, i64 %142
  store i32* %143, i32** %15, align 8
  br label %172

144:                                              ; preds = %70
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 5
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = mul nsw i32 %151, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %150, i64 %156
  store i32* %157, i32** %14, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = mul nsw i32 %161, 3
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %165, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %164, i64 %170
  store i32* %171, i32** %15, align 8
  br label %172

172:                                              ; preds = %144, %116
  store i32 0, i32* %16, align 4
  br label %173

173:                                              ; preds = %211, %172
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* %11, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %214

177:                                              ; preds = %173
  %178 = load i32*, i32** %12, align 8
  %179 = load i32*, i32** %14, align 8
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @memmove(i32* %178, i32* %179, i32 %180)
  %182 = load i32*, i32** %13, align 8
  %183 = load i32*, i32** %15, align 8
  %184 = load i32, i32* %10, align 4
  %185 = mul nsw i32 %184, 3
  %186 = call i32 @memmove(i32* %182, i32* %183, i32 %185)
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32*, i32** %12, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  store i32* %192, i32** %12, align 8
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load i32*, i32** %14, align 8
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  store i32* %198, i32** %14, align 8
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %13, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  store i32* %204, i32** %13, align 8
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %15, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  store i32* %210, i32** %15, align 8
  br label %211

211:                                              ; preds = %177
  %212 = load i32, i32* %16, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %16, align 4
  br label %173

214:                                              ; preds = %173
  br label %215

215:                                              ; preds = %214
  store i32 0, i32* %6, align 4
  br label %216

216:                                              ; preds = %215, %69
  %217 = load i32, i32* %6, align 4
  ret i32 %217
}

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
