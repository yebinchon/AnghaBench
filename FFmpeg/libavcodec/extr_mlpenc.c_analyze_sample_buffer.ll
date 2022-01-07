; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_analyze_sample_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_analyze_sample_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32*, i32, i32, i32, %struct.TYPE_16__*, i32*, i32, %struct.TYPE_14__*, i32*, i32*, i32*, %struct.TYPE_16__*, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @analyze_sample_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_sample_buffer(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 14
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %3, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 13
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %4, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %179, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %182

20:                                               ; preds = %14
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 11
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 12
  store i32* %26, i32** %28, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul i32 1, %32
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i64 %34
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i64 %37
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 6
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %40, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 9
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 1, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %41, i64 %48
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 10
  store i32* %49, i32** %51, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %53 = call i32 @determine_quant_step_size(%struct.TYPE_15__* %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %55 = call i32 @generate_2_noise_channels(%struct.TYPE_15__* %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %57 = call i32 @lossless_matrix_coeffs(%struct.TYPE_15__* %56)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %59 = call i32 @rematrix_channels(%struct.TYPE_15__* %58)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %61 = call i32 @determine_filters(%struct.TYPE_15__* %60)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %63 = call i32 @apply_filters(%struct.TYPE_15__* %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @copy_restart_frame_params(%struct.TYPE_15__* %64, i32 %65)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %95, %20
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %67
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = add i32 %75, 1
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = mul i32 %76, %79
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i64 %81
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i64 %84
  store %struct.TYPE_16__* %85, %struct.TYPE_16__** %7, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %73
  %96 = load i32, i32* %5, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %67

98:                                               ; preds = %67
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %100 = load i32, i32* %6, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  store i32 8, i32* %103, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = mul i32 1, %107
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i64 %109
  %111 = load i32, i32* %6, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, 8
  store i32 %116, i32* %114, align 4
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %173, %98
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = icmp ult i32 %118, %121
  br i1 %122, label %123, label %176

123:                                              ; preds = %117
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = mul i32 %125, %128
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i64 %130
  %132 = load i32, i32* %6, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i64 %133
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 6
  store %struct.TYPE_16__* %134, %struct.TYPE_16__** %136, align 8
  %137 = load i32*, i32** %3, align 8
  %138 = load i32, i32* %5, align 4
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 9
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = mul i32 %138, %143
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %137, i64 %145
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 10
  store i32* %146, i32** %148, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 7
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 8
  store i32 %155, i32* %157, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %159 = call i32 @determine_bits(%struct.TYPE_15__* %158)
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 6
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = mul nsw i32 %164, %167
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, %168
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %123
  %174 = load i32, i32* %5, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %5, align 4
  br label %117

176:                                              ; preds = %117
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %178 = call i32 @set_best_codebook(%struct.TYPE_15__* %177)
  br label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %6, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %6, align 4
  br label %14

182:                                              ; preds = %14
  ret void
}

declare dso_local i32 @determine_quant_step_size(%struct.TYPE_15__*) #1

declare dso_local i32 @generate_2_noise_channels(%struct.TYPE_15__*) #1

declare dso_local i32 @lossless_matrix_coeffs(%struct.TYPE_15__*) #1

declare dso_local i32 @rematrix_channels(%struct.TYPE_15__*) #1

declare dso_local i32 @determine_filters(%struct.TYPE_15__*) #1

declare dso_local i32 @apply_filters(%struct.TYPE_15__*) #1

declare dso_local i32 @copy_restart_frame_params(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @determine_bits(%struct.TYPE_15__*) #1

declare dso_local i32 @set_best_codebook(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
