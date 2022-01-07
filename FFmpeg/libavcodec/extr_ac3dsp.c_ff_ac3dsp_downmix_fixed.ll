; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dsp.c_ff_ac3dsp_downmix_fixed.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dsp.c_ff_ac3dsp_downmix_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 (i32**, i32**, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_ac3dsp_downmix_fixed(%struct.TYPE_3__* %0, i32** %1, i32** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %6
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %125

24:                                               ; preds = %18, %6
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i32 (i32**, i32**, i32)* null, i32 (i32**, i32**, i32)** %32, align 8
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 5
  br i1 %34, label %35, label %90

35:                                               ; preds = %24
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %90

38:                                               ; preds = %35
  %39 = load i32**, i32*** %9, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32**, i32*** %9, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %43, %48
  %50 = load i32**, i32*** %9, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %49, %54
  %56 = load i32**, i32*** %9, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %55, %60
  %62 = load i32**, i32*** %9, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32**, i32*** %9, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = xor i32 %66, %71
  %73 = or i32 %61, %72
  %74 = load i32**, i32*** %9, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32**, i32*** %9, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %78, %83
  %85 = or i32 %73, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %38
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  store i32 (i32**, i32**, i32)* @ac3_downmix_5_to_2_symmetric_c_fixed, i32 (i32**, i32**, i32)** %89, align 8
  br label %124

90:                                               ; preds = %38, %35, %24
  %91 = load i32, i32* %11, align 4
  %92 = icmp eq i32 %91, 5
  br i1 %92, label %93, label %123

93:                                               ; preds = %90
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %123

96:                                               ; preds = %93
  %97 = load i32**, i32*** %9, align 8
  %98 = getelementptr inbounds i32*, i32** %97, i64 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32**, i32*** %9, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %101, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %96
  %109 = load i32**, i32*** %9, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32**, i32*** %9, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %113, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %108
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  store i32 (i32**, i32**, i32)* @ac3_downmix_5_to_1_symmetric_c_fixed, i32 (i32**, i32**, i32)** %122, align 8
  br label %123

123:                                              ; preds = %120, %108, %96, %93, %90
  br label %124

124:                                              ; preds = %123, %87
  br label %125

125:                                              ; preds = %124, %18
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i32 (i32**, i32**, i32)*, i32 (i32**, i32**, i32)** %127, align 8
  %129 = icmp ne i32 (i32**, i32**, i32)* %128, null
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32 (i32**, i32**, i32)*, i32 (i32**, i32**, i32)** %132, align 8
  %134 = load i32**, i32*** %8, align 8
  %135 = load i32**, i32*** %9, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 %133(i32** %134, i32** %135, i32 %136)
  br label %145

138:                                              ; preds = %125
  %139 = load i32**, i32*** %8, align 8
  %140 = load i32**, i32*** %9, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @ac3_downmix_c_fixed(i32** %139, i32** %140, i32 %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %138, %130
  ret void
}

declare dso_local i32 @ac3_downmix_5_to_2_symmetric_c_fixed(i32**, i32**, i32) #1

declare dso_local i32 @ac3_downmix_5_to_1_symmetric_c_fixed(i32**, i32**, i32) #1

declare dso_local i32 @ac3_downmix_c_fixed(i32**, i32**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
