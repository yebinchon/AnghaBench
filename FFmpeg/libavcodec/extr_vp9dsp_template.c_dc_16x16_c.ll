; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9dsp_template.c_dc_16x16_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9dsp_template.c_dc_16x16_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32*)* @dc_16x16_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_16x16_c(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32*, i32** %5, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %7, align 8
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %8, align 8
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 7
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 9
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 10
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %55, %58
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 11
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %59, %62
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 12
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  %68 = load i32*, i32** %10, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 13
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 14
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 15
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %75, %78
  %80 = load i32*, i32** %11, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %79, %82
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %87, %90
  %92 = load i32*, i32** %11, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %91, %94
  %96 = load i32*, i32** %11, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %95, %98
  %100 = load i32*, i32** %11, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 5
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  %104 = load i32*, i32** %11, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 6
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %103, %106
  %108 = load i32*, i32** %11, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 7
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %107, %110
  %112 = load i32*, i32** %11, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 8
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %111, %114
  %116 = load i32*, i32** %11, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 9
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %115, %118
  %120 = load i32*, i32** %11, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 10
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %119, %122
  %124 = load i32*, i32** %11, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 11
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %123, %126
  %128 = load i32*, i32** %11, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 12
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %127, %130
  %132 = load i32*, i32** %11, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 13
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %131, %134
  %136 = load i32*, i32** %11, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 14
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %135, %138
  %140 = load i32*, i32** %11, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 15
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %139, %142
  %144 = add nsw i32 %143, 16
  %145 = ashr i32 %144, 5
  %146 = call i32 @PIXEL_SPLAT_X4(i32 %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = udiv i64 %148, 4
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %6, align 4
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %175, %4
  %152 = load i32, i32* %13, align 4
  %153 = icmp slt i32 %152, 16
  br i1 %153, label %154, label %178

154:                                              ; preds = %151
  %155 = load i32*, i32** %9, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @AV_WN4PA(i32* %156, i32 %157)
  %159 = load i32*, i32** %9, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 4
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @AV_WN4PA(i32* %160, i32 %161)
  %163 = load i32*, i32** %9, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 8
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @AV_WN4PA(i32* %164, i32 %165)
  %167 = load i32*, i32** %9, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 12
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @AV_WN4PA(i32* %168, i32 %169)
  %171 = load i32, i32* %6, align 4
  %172 = load i32*, i32** %9, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32* %174, i32** %9, align 8
  br label %175

175:                                              ; preds = %154
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %13, align 4
  br label %151

178:                                              ; preds = %151
  ret void
}

declare dso_local i32 @PIXEL_SPLAT_X4(i32) #1

declare dso_local i32 @AV_WN4PA(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
