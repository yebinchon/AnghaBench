; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_get_block_bits.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_get_block_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_10__* }

@null_block = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@BLOCK_INTRA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i32)* @get_block_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_block_bits(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %22, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %29, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 %35, %36
  %38 = add nsw i32 %34, %37
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %43
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %13, align 8
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 %53
  br label %56

55:                                               ; preds = %4
  br label %56

56:                                               ; preds = %55, %47
  %57 = phi %struct.TYPE_10__* [ %54, %47 ], [ @null_block, %55 ]
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %14, align 8
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i64 %67
  br label %70

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %60
  %71 = phi %struct.TYPE_10__* [ %68, %60 ], [ @null_block, %69 ]
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %15, align 8
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i64 %85
  br label %89

87:                                               ; preds = %74, %70
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  br label %89

89:                                               ; preds = %87, %77
  %90 = phi %struct.TYPE_10__* [ %86, %77 ], [ %88, %87 ]
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %16, align 8
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %93
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %103, %104
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i64 %108
  br label %112

110:                                              ; preds = %93, %89
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  br label %112

112:                                              ; preds = %110, %99
  %113 = phi %struct.TYPE_10__* [ %109, %99 ], [ %111, %110 ]
  store %struct.TYPE_10__* %113, %struct.TYPE_10__** %17, align 8
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp sge i32 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp sge i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120, %116, %112
  store i32 0, i32* %5, align 4
  br label %219

125:                                              ; preds = %120
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @BLOCK_INTRA, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %179

132:                                              ; preds = %125
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %137, %142
  %144 = call i32 @FFABS(i32 %143)
  %145 = mul nsw i32 2, %144
  %146 = call i32 @av_log2(i32 %145)
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %151, %156
  %158 = call i32 @FFABS(i32 %157)
  %159 = mul nsw i32 2, %158
  %160 = call i32 @av_log2(i32 %159)
  %161 = add nsw i32 %146, %160
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 2
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %166, %171
  %173 = call i32 @FFABS(i32 %172)
  %174 = mul nsw i32 2, %173
  %175 = call i32 @av_log2(i32 %174)
  %176 = add nsw i32 %161, %175
  %177 = mul nsw i32 2, %176
  %178 = add nsw i32 3, %177
  store i32 %178, i32* %5, align 4
  br label %219

179:                                              ; preds = %125
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %187 = call i32 @pred_mv(%struct.TYPE_9__* %180, i32* %18, i32* %19, i32 %183, %struct.TYPE_10__* %184, %struct.TYPE_10__* %185, %struct.TYPE_10__* %186)
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = load i32, i32* %18, align 4
  %192 = sext i32 %191 to i64
  %193 = sub nsw i64 %192, %190
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %18, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %19, align 4
  %199 = sext i32 %198 to i64
  %200 = sub nsw i64 %199, %197
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %19, align 4
  %202 = load i32, i32* %18, align 4
  %203 = call i32 @FFABS(i32 %202)
  %204 = mul nsw i32 2, %203
  %205 = call i32 @av_log2(i32 %204)
  %206 = add nsw i32 1, %205
  %207 = load i32, i32* %19, align 4
  %208 = call i32 @FFABS(i32 %207)
  %209 = mul nsw i32 2, %208
  %210 = call i32 @av_log2(i32 %209)
  %211 = add nsw i32 %206, %210
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = mul nsw i32 2, %214
  %216 = call i32 @av_log2(i32 %215)
  %217 = add nsw i32 %211, %216
  %218 = mul nsw i32 2, %217
  store i32 %218, i32* %5, align 4
  br label %219

219:                                              ; preds = %179, %132, %124
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @pred_mv(%struct.TYPE_9__*, i32*, i32*, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
