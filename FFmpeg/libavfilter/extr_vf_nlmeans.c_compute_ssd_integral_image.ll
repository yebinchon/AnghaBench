; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nlmeans.c_compute_ssd_integral_image.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nlmeans.c_compute_ssd_integral_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*, i32, i32*, i32, i32*, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @compute_ssd_integral_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_ssd_integral_image(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %34 = load i32, i32* %19, align 4
  %35 = load i32, i32* %18, align 4
  %36 = mul nsw i32 %35, 2
  %37 = add nsw i32 %34, %36
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %20, align 4
  %39 = load i32, i32* %18, align 4
  %40 = mul nsw i32 %39, 2
  %41 = add nsw i32 %38, %40
  store i32 %41, i32* %22, align 4
  %42 = load i32, i32* %18, align 4
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* %18, align 4
  store i32 %43, i32* %24, align 4
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %16, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %25, align 4
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %17, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %26, align 4
  %50 = load i32, i32* %23, align 4
  %51 = load i32, i32* %25, align 4
  %52 = call i32 @FFMAX(i32 %50, i32 %51)
  store i32 %52, i32* %27, align 4
  %53 = load i32, i32* %24, align 4
  %54 = load i32, i32* %26, align 4
  %55 = call i32 @FFMAX(i32 %53, i32 %54)
  store i32 %55, i32* %28, align 4
  %56 = load i32, i32* %23, align 4
  %57 = load i32, i32* %19, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %25, align 4
  %60 = load i32, i32* %19, align 4
  %61 = add nsw i32 %59, %60
  %62 = call i32 @FFMIN(i32 %58, i32 %61)
  store i32 %62, i32* %29, align 4
  %63 = load i32, i32* %24, align 4
  %64 = load i32, i32* %20, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* %26, align 4
  %67 = load i32, i32* %20, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i32 @FFMIN(i32 %65, i32 %68)
  store i32 %69, i32* %30, align 4
  %70 = load i32, i32* %29, align 4
  %71 = load i32, i32* %27, align 4
  %72 = sub nsw i32 %70, %71
  %73 = and i32 %72, -16
  store i32 %73, i32* %31, align 4
  %74 = load i32, i32* %30, align 4
  %75 = load i32, i32* %28, align 4
  %76 = sub nsw i32 %74, %75
  store i32 %76, i32* %32, align 4
  %77 = load i32, i32* %27, align 4
  %78 = load i32, i32* %31, align 4
  %79 = add nsw i32 %77, %78
  store i32 %79, i32* %33, align 4
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %28, align 4
  %91 = call i32 @compute_unsafe_ssd_integral_image(i32* %80, i32 %81, i32 0, i32 0, i32* %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %28, align 4
  %95 = load i32*, i32** %14, align 8
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* %27, align 4
  %103 = load i32, i32* %32, align 4
  %104 = call i32 @compute_unsafe_ssd_integral_image(i32* %92, i32 %93, i32 0, i32 %94, i32* %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %27, align 4
  %106 = load i32, i32* %23, align 4
  %107 = sub nsw i32 %105, %106
  %108 = icmp sge i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @av_assert1(i32 %109)
  %111 = load i32, i32* %27, align 4
  %112 = load i32, i32* %23, align 4
  %113 = sub nsw i32 %111, %112
  %114 = load i32, i32* %19, align 4
  %115 = icmp slt i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @av_assert1(i32 %116)
  %118 = load i32, i32* %28, align 4
  %119 = load i32, i32* %24, align 4
  %120 = sub nsw i32 %118, %119
  %121 = icmp sge i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i32 @av_assert1(i32 %122)
  %124 = load i32, i32* %28, align 4
  %125 = load i32, i32* %24, align 4
  %126 = sub nsw i32 %124, %125
  %127 = load i32, i32* %20, align 4
  %128 = icmp slt i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @av_assert1(i32 %129)
  %131 = load i32, i32* %27, align 4
  %132 = load i32, i32* %25, align 4
  %133 = sub nsw i32 %131, %132
  %134 = icmp sge i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @av_assert1(i32 %135)
  %137 = load i32, i32* %27, align 4
  %138 = load i32, i32* %25, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load i32, i32* %19, align 4
  %141 = icmp slt i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @av_assert1(i32 %142)
  %144 = load i32, i32* %28, align 4
  %145 = load i32, i32* %26, align 4
  %146 = sub nsw i32 %144, %145
  %147 = icmp sge i32 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @av_assert1(i32 %148)
  %150 = load i32, i32* %28, align 4
  %151 = load i32, i32* %26, align 4
  %152 = sub nsw i32 %150, %151
  %153 = load i32, i32* %20, align 4
  %154 = icmp slt i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @av_assert1(i32 %155)
  %157 = load i32, i32* %31, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %207

159:                                              ; preds = %10
  %160 = load i32, i32* %32, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %207

162:                                              ; preds = %159
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32 (i32*, i32, i32*, i32, i32*, i32, i32, i32)*, i32 (i32*, i32, i32*, i32, i32*, i32, i32, i32)** %164, align 8
  %166 = load i32*, i32** %12, align 8
  %167 = load i32, i32* %28, align 4
  %168 = load i32, i32* %13, align 4
  %169 = mul nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %166, i64 %170
  %172 = load i32, i32* %27, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %13, align 4
  %176 = load i32*, i32** %14, align 8
  %177 = load i32, i32* %28, align 4
  %178 = load i32, i32* %24, align 4
  %179 = sub nsw i32 %177, %178
  %180 = load i32, i32* %15, align 4
  %181 = mul nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %176, i64 %182
  %184 = load i32, i32* %27, align 4
  %185 = load i32, i32* %23, align 4
  %186 = sub nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %183, i64 %187
  %189 = load i32, i32* %15, align 4
  %190 = load i32*, i32** %14, align 8
  %191 = load i32, i32* %28, align 4
  %192 = load i32, i32* %26, align 4
  %193 = sub nsw i32 %191, %192
  %194 = load i32, i32* %15, align 4
  %195 = mul nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %190, i64 %196
  %198 = load i32, i32* %27, align 4
  %199 = load i32, i32* %25, align 4
  %200 = sub nsw i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %197, i64 %201
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %31, align 4
  %205 = load i32, i32* %32, align 4
  %206 = call i32 %165(i32* %174, i32 %175, i32* %188, i32 %189, i32* %202, i32 %203, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %162, %159, %10
  %208 = load i32*, i32** %12, align 8
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %33, align 4
  %211 = load i32, i32* %28, align 4
  %212 = load i32*, i32** %14, align 8
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* %17, align 4
  %216 = load i32, i32* %18, align 4
  %217 = load i32, i32* %19, align 4
  %218 = load i32, i32* %20, align 4
  %219 = load i32, i32* %21, align 4
  %220 = load i32, i32* %33, align 4
  %221 = sub nsw i32 %219, %220
  %222 = load i32, i32* %32, align 4
  %223 = call i32 @compute_unsafe_ssd_integral_image(i32* %208, i32 %209, i32 %210, i32 %211, i32* %212, i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %221, i32 %222)
  %224 = load i32*, i32** %12, align 8
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %30, align 4
  %227 = load i32*, i32** %14, align 8
  %228 = load i32, i32* %15, align 4
  %229 = load i32, i32* %16, align 4
  %230 = load i32, i32* %17, align 4
  %231 = load i32, i32* %18, align 4
  %232 = load i32, i32* %19, align 4
  %233 = load i32, i32* %20, align 4
  %234 = load i32, i32* %21, align 4
  %235 = load i32, i32* %22, align 4
  %236 = load i32, i32* %30, align 4
  %237 = sub nsw i32 %235, %236
  %238 = call i32 @compute_unsafe_ssd_integral_image(i32* %224, i32 %225, i32 0, i32 %226, i32* %227, i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %237)
  ret void
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @compute_unsafe_ssd_integral_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_assert1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
