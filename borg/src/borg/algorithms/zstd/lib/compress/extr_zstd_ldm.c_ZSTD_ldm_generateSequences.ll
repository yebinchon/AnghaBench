; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstd_ldm.c_ZSTD_ldm_generateSequences.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstd_ldm.c_ZSTD_ldm_generateSequences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_15__ = type { i64, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }

@ZSTD_CHUNKSIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_ldm_generateSequences(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, %struct.TYPE_17__* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  store i32 %30, i32* %12, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %13, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %14, align 8
  store i64 1048576, i64* %15, align 8
  %36 = load i64, i64* %11, align 8
  %37 = udiv i64 %36, 1048576
  %38 = load i64, i64* %11, align 8
  %39 = urem i64 %38, 1048576
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = add i64 %37, %42
  store i64 %43, i64* %16, align 8
  store i64 0, i64* %18, align 8
  %44 = load i64, i64* @ZSTD_CHUNKSIZE_MAX, align 8
  %45 = icmp uge i64 %44, 1048576
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = icmp uge i32* %51, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sle i64 %61, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp sle i64 %70, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  store i64 0, i64* %17, align 8
  br label %77

77:                                               ; preds = %193, %5
  %78 = load i64, i64* %17, align 8
  %79 = load i64, i64* %16, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %84, %87
  br label %89

89:                                               ; preds = %81, %77
  %90 = phi i1 [ false, %77 ], [ %88, %81 ]
  br i1 %90, label %91, label %196

91:                                               ; preds = %89
  %92 = load i32*, i32** %13, align 8
  %93 = load i64, i64* %17, align 8
  %94 = mul i64 %93, 1048576
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32* %95, i32** %19, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = load i32*, i32** %19, align 8
  %98 = ptrtoint i32* %96 to i64
  %99 = ptrtoint i32* %97 to i64
  %100 = sub i64 %98, %99
  %101 = sdiv exact i64 %100, 4
  store i64 %101, i64* %20, align 8
  %102 = load i64, i64* %20, align 8
  %103 = icmp ult i64 %102, 1048576
  br i1 %103, label %104, label %106

104:                                              ; preds = %91
  %105 = load i32*, i32** %14, align 8
  br label %109

106:                                              ; preds = %91
  %107 = load i32*, i32** %19, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1048576
  br label %109

109:                                              ; preds = %106, %104
  %110 = phi i32* [ %105, %104 ], [ %108, %106 ]
  store i32* %110, i32** %21, align 8
  %111 = load i32*, i32** %21, align 8
  %112 = load i32*, i32** %19, align 8
  %113 = ptrtoint i32* %111 to i64
  %114 = ptrtoint i32* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 4
  store i64 %116, i64* %22, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %24, align 8
  %120 = load i32*, i32** %19, align 8
  %121 = load i32*, i32** %14, align 8
  %122 = icmp ult i32* %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32*, i32** %21, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i64 @ZSTD_window_needOverflowCorrection(i32* %129, i32* %127)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %109
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 1, %135
  store i32 %136, i32* %25, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i32, i32* %12, align 4
  %140 = load i8*, i8** %10, align 8
  %141 = call i32 @ZSTD_window_correctOverflow(%struct.TYPE_18__* %138, i32 0, i32 %139, i8* %140)
  store i32 %141, i32* %26, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %25, align 4
  %146 = load i32, i32* %26, align 4
  %147 = call i32 @ZSTD_ldm_reduceTable(i32 %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %132, %109
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load i32*, i32** %21, align 8
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @ZSTD_window_enforceMaxDist(%struct.TYPE_18__* %150, i32* %151, i32 %152, i32* null, i32* null)
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %157 = load i32*, i32** %19, align 8
  %158 = load i64, i64* %22, align 8
  %159 = call i64 @ZSTD_ldm_generateSequences_internal(%struct.TYPE_16__* %154, %struct.TYPE_15__* %155, %struct.TYPE_17__* %156, i32* %157, i64 %158)
  store i64 %159, i64* %23, align 8
  %160 = load i64, i64* %23, align 8
  %161 = call i64 @ZSTD_isError(i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %148
  %164 = load i64, i64* %23, align 8
  store i64 %164, i64* %6, align 8
  br label %197

165:                                              ; preds = %148
  %166 = load i64, i64* %24, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ult i64 %166, %169
  br i1 %170, label %171, label %183

171:                                              ; preds = %165
  %172 = load i64, i64* %18, align 8
  %173 = trunc i64 %172 to i32
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = load i64, i64* %24, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = add i32 %180, %173
  store i32 %181, i32* %179, align 4
  %182 = load i64, i64* %23, align 8
  store i64 %182, i64* %18, align 8
  br label %192

183:                                              ; preds = %165
  %184 = load i64, i64* %23, align 8
  %185 = load i64, i64* %22, align 8
  %186 = icmp eq i64 %184, %185
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  %189 = load i64, i64* %22, align 8
  %190 = load i64, i64* %18, align 8
  %191 = add i64 %190, %189
  store i64 %191, i64* %18, align 8
  br label %192

192:                                              ; preds = %183, %171
  br label %193

193:                                              ; preds = %192
  %194 = load i64, i64* %17, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %17, align 8
  br label %77

196:                                              ; preds = %89
  store i64 0, i64* %6, align 8
  br label %197

197:                                              ; preds = %196, %163
  %198 = load i64, i64* %6, align 8
  ret i64 %198
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ZSTD_window_needOverflowCorrection(i32*, i32*) #1

declare dso_local i32 @ZSTD_window_correctOverflow(%struct.TYPE_18__*, i32, i32, i8*) #1

declare dso_local i32 @ZSTD_ldm_reduceTable(i32, i32, i32) #1

declare dso_local i32 @ZSTD_window_enforceMaxDist(%struct.TYPE_18__*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @ZSTD_ldm_generateSequences_internal(%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_17__*, i32*, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
