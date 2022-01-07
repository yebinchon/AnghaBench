; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2dsp.c_wmv2_mspel8_h_lowpass.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmv2dsp.c_wmv2_mspel8_h_lowpass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_crop_tab = common dso_local global i32* null, align 8
@MAX_NEG_CROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32)* @wmv2_mspel8_h_lowpass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmv2_mspel8_h_lowpass(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32*, i32** @ff_crop_tab, align 8
  %14 = load i32, i32* @MAX_NEG_CROP, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %222, %5
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %225

21:                                               ; preds = %17
  %22 = load i32*, i32** %11, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = mul nsw i32 9, %29
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 -1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = sub nsw i32 %30, %37
  %39 = add nsw i32 %38, 8
  %40 = ashr i32 %39, 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %22, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %43, i32* %45, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = mul nsw i32 9, %53
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = sub nsw i32 %54, %61
  %63 = add nsw i32 %62, 8
  %64 = ashr i32 %63, 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %46, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %67, i32* %69, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %73, %76
  %78 = mul nsw i32 9, %77
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %81, %84
  %86 = sub nsw i32 %78, %85
  %87 = add nsw i32 %86, 8
  %88 = ashr i32 %87, 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %70, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  store i32 %91, i32* %93, align 4
  %94 = load i32*, i32** %11, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %97, %100
  %102 = mul nsw i32 9, %101
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 5
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %105, %108
  %110 = sub nsw i32 %102, %109
  %111 = add nsw i32 %110, 8
  %112 = ashr i32 %111, 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %94, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  store i32 %115, i32* %117, align 4
  %118 = load i32*, i32** %11, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %7, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 5
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %121, %124
  %126 = mul nsw i32 9, %125
  %127 = load i32*, i32** %7, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %7, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 6
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %129, %132
  %134 = sub nsw i32 %126, %133
  %135 = add nsw i32 %134, 8
  %136 = ashr i32 %135, 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %118, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  store i32 %139, i32* %141, align 4
  %142 = load i32*, i32** %11, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 5
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %7, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 6
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %145, %148
  %150 = mul nsw i32 9, %149
  %151 = load i32*, i32** %7, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %7, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 7
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %153, %156
  %158 = sub nsw i32 %150, %157
  %159 = add nsw i32 %158, 8
  %160 = ashr i32 %159, 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %142, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %6, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 5
  store i32 %163, i32* %165, align 4
  %166 = load i32*, i32** %11, align 8
  %167 = load i32*, i32** %7, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 6
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %7, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 7
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %169, %172
  %174 = mul nsw i32 9, %173
  %175 = load i32*, i32** %7, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 5
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %7, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 8
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %177, %180
  %182 = sub nsw i32 %174, %181
  %183 = add nsw i32 %182, 8
  %184 = ashr i32 %183, 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %166, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %6, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 6
  store i32 %187, i32* %189, align 4
  %190 = load i32*, i32** %11, align 8
  %191 = load i32*, i32** %7, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 7
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %7, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 8
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %193, %196
  %198 = mul nsw i32 9, %197
  %199 = load i32*, i32** %7, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 6
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %7, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 9
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %201, %204
  %206 = sub nsw i32 %198, %205
  %207 = add nsw i32 %206, 8
  %208 = ashr i32 %207, 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %190, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** %6, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 7
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* %8, align 4
  %215 = load i32*, i32** %6, align 8
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  store i32* %217, i32** %6, align 8
  %218 = load i32, i32* %9, align 4
  %219 = load i32*, i32** %7, align 8
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  store i32* %221, i32** %7, align 8
  br label %222

222:                                              ; preds = %21
  %223 = load i32, i32* %12, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %12, align 4
  br label %17

225:                                              ; preds = %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
