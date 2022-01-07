; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_determine_bits.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_determine_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_21__**, i32, i64*, %struct.TYPE_20__*, %struct.TYPE_17__*, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i64* }

@INT32_MAX = common dso_local global i64 0, align 8
@INT32_MIN = common dso_local global i64 0, align 8
@FIR = common dso_local global i64 0, align 8
@HUFF_OFFSET_MIN = common dso_local global i32 0, align 4
@HUFF_OFFSET_MAX = common dso_local global i32 0, align 4
@NUM_CODEBOOKS = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @determine_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_bits(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_21__, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %3, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %202, %1
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ule i32 %24, %27
  br i1 %28, label %29, label %205

29:                                               ; preds = %23
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i64 %34
  store %struct.TYPE_20__* %35, %struct.TYPE_20__** %6, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  store i64* %41, i64** %7, align 8
  %42 = load i64, i64* @INT32_MAX, align 8
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* @INT32_MIN, align 8
  store i64 %43, i64* %9, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = load i64, i64* @FIR, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %94, %29
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %97

60:                                               ; preds = %54
  %61 = load i64*, i64** %7, align 8
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = ashr i64 %62, %69
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = load i64, i64* %14, align 8
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %74, %60
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %9, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i64, i64* %14, align 8
  store i64 %81, i64* %9, align 8
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i64, i64* %14, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %11, align 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i64*, i64** %7, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  store i64* %93, i64** %7, align 8
  br label %94

94:                                               ; preds = %82
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %54

97:                                               ; preds = %54
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sdiv i32 %101, %100
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %97
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %9, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %112, i64 %114
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i64 0
  %118 = call i32 @no_codebook_bits(%struct.TYPE_18__* %106, i32 %107, i64 %108, i64 %109, %struct.TYPE_21__* %117)
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @HUFF_OFFSET_MIN, align 4
  %121 = load i32, i32* @HUFF_OFFSET_MAX, align 4
  %122 = call i32 @av_clip(i32 %119, i32 %120, i32 %121)
  store i32 %122, i32* %12, align 4
  br label %138

123:                                              ; preds = %97
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load i64, i64* %8, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %131, i64 %133
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i64 0
  %137 = call i32 @no_codebook_bits_offset(%struct.TYPE_18__* %124, i32 %125, i32 %126, i64 %127, i64 %128, %struct.TYPE_21__* %136)
  br label %138

138:                                              ; preds = %123, %105
  store i32 1, i32* %13, align 4
  br label %139

139:                                              ; preds = %198, %138
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @NUM_CODEBOOKS, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %201

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  store i64 0, i64* %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %146 = load i32, i32* @INT_MAX, align 4
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %145, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 2
  store i32 0, i32* %148, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 3
  store i32 0, i32* %149, align 4
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 4
  store i32 0, i32* %150, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 5
  store i32 0, i32* %151, align 4
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 6
  store i32 0, i32* %152, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %13, align 4
  %156 = sub nsw i32 %155, 1
  %157 = load i64, i64* %8, align 8
  %158 = load i64, i64* %9, align 8
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @codebook_bits_offset(%struct.TYPE_18__* %153, i32 %154, i32 %156, i64 %157, i64 %158, i32 %159, %struct.TYPE_21__* %15)
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %185

163:                                              ; preds = %143
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %16, align 8
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* %13, align 4
  %169 = sub nsw i32 %168, 1
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = sub nsw i64 %171, 1
  %173 = load i64, i64* %8, align 8
  %174 = load i64, i64* %9, align 8
  %175 = call i32 @codebook_bits(%struct.TYPE_18__* %166, i32 %167, i32 %169, i64 %172, i64 %173, i64 %174, %struct.TYPE_21__* %15, i32 0)
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* %13, align 4
  %179 = sub nsw i32 %178, 1
  %180 = load i64, i64* %16, align 8
  %181 = add nsw i64 %180, 1
  %182 = load i64, i64* %8, align 8
  %183 = load i64, i64* %9, align 8
  %184 = call i32 @codebook_bits(%struct.TYPE_18__* %176, i32 %177, i32 %179, i64 %181, i64 %182, i64 %183, %struct.TYPE_21__* %15, i32 1)
  br label %185

185:                                              ; preds = %163, %143
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %187, align 8
  %189 = load i32, i32* %5, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %188, i64 %190
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %191, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i64 %194
  %196 = bitcast %struct.TYPE_21__* %195 to i8*
  %197 = bitcast %struct.TYPE_21__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %196, i8* align 8 %197, i64 40, i1 false)
  br label %198

198:                                              ; preds = %185
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %13, align 4
  br label %139

201:                                              ; preds = %139
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %5, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %5, align 4
  br label %23

205:                                              ; preds = %23
  ret void
}

declare dso_local i32 @no_codebook_bits(%struct.TYPE_18__*, i32, i64, i64, %struct.TYPE_21__*) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @no_codebook_bits_offset(%struct.TYPE_18__*, i32, i32, i64, i64, %struct.TYPE_21__*) #1

declare dso_local i32 @codebook_bits_offset(%struct.TYPE_18__*, i32, i32, i64, i64, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @codebook_bits(%struct.TYPE_18__*, i32, i32, i64, i64, i64, %struct.TYPE_21__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
