; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dsp.c_ff_ac3dsp_downmix.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dsp.c_ff_ac3dsp_downmix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 (float**, float**, i32)* }

@ARCH_X86 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_ac3dsp_downmix(%struct.TYPE_4__* %0, float** %1, float** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca float**, align 8
  %9 = alloca float**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store float** %1, float*** %8, align 8
  store float** %2, float*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %6
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %134

25:                                               ; preds = %19, %6
  %26 = load float**, float*** %9, align 8
  %27 = bitcast float** %26 to i32**
  store i32** %27, i32*** %13, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 (float**, float**, i32)* null, i32 (float**, float**, i32)** %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 5
  br i1 %37, label %38, label %93

38:                                               ; preds = %25
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %93

41:                                               ; preds = %38
  %42 = load i32**, i32*** %13, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32**, i32*** %13, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %46, %51
  %53 = load i32**, i32*** %13, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %52, %57
  %59 = load i32**, i32*** %13, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %58, %63
  %65 = load i32**, i32*** %13, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32**, i32*** %13, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = xor i32 %69, %74
  %76 = or i32 %64, %75
  %77 = load i32**, i32*** %13, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32**, i32*** %13, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %81, %86
  %88 = or i32 %76, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %41
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  store i32 (float**, float**, i32)* @ac3_downmix_5_to_2_symmetric_c, i32 (float**, float**, i32)** %92, align 8
  br label %127

93:                                               ; preds = %41, %38, %25
  %94 = load i32, i32* %11, align 4
  %95 = icmp eq i32 %94, 5
  br i1 %95, label %96, label %126

96:                                               ; preds = %93
  %97 = load i32, i32* %10, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %126

99:                                               ; preds = %96
  %100 = load i32**, i32*** %13, align 8
  %101 = getelementptr inbounds i32*, i32** %100, i64 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32**, i32*** %13, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %104, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %99
  %112 = load i32**, i32*** %13, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32**, i32*** %13, align 8
  %118 = getelementptr inbounds i32*, i32** %117, i64 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %116, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %111
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  store i32 (float**, float**, i32)* @ac3_downmix_5_to_1_symmetric_c, i32 (float**, float**, i32)** %125, align 8
  br label %126

126:                                              ; preds = %123, %111, %99, %96, %93
  br label %127

127:                                              ; preds = %126, %90
  %128 = load i64, i64* @ARCH_X86, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %132 = call i32 @ff_ac3dsp_set_downmix_x86(%struct.TYPE_4__* %131)
  br label %133

133:                                              ; preds = %130, %127
  br label %134

134:                                              ; preds = %133, %19
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i32 (float**, float**, i32)*, i32 (float**, float**, i32)** %136, align 8
  %138 = icmp ne i32 (float**, float**, i32)* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i32 (float**, float**, i32)*, i32 (float**, float**, i32)** %141, align 8
  %143 = load float**, float*** %8, align 8
  %144 = load float**, float*** %9, align 8
  %145 = load i32, i32* %12, align 4
  %146 = call i32 %142(float** %143, float** %144, i32 %145)
  br label %154

147:                                              ; preds = %134
  %148 = load float**, float*** %8, align 8
  %149 = load float**, float*** %9, align 8
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @ac3_downmix_c(float** %148, float** %149, i32 %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %147, %139
  ret void
}

declare dso_local i32 @ac3_downmix_5_to_2_symmetric_c(float**, float**, i32) #1

declare dso_local i32 @ac3_downmix_5_to_1_symmetric_c(float**, float**, i32) #1

declare dso_local i32 @ff_ac3dsp_set_downmix_x86(%struct.TYPE_4__*) #1

declare dso_local i32 @ac3_downmix_c(float**, float**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
