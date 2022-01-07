; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v02.c_ZSTD_decompressSequences.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v02.c_ZSTD_decompressSequences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32*, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32*, i32* }

@corruption_detected = common dso_local global i32 0, align 4
@BIT_DStream_completed = common dso_local global i64 0, align 8
@dstSize_tooSmall = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64, i8*, i64)* @ZSTD_decompressSequences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_decompressSequences(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_4__, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %12, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %13, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %14, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** %15, align 8
  %41 = load i32*, i32** %15, align 8
  store i32* %41, i32** %16, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %17, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %20, align 8
  %48 = load i32*, i32** %20, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  store i32* %53, i32** %21, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %24, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %25, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %26, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %27, align 8
  %67 = load i32*, i32** %24, align 8
  %68 = load i32*, i32** %25, align 8
  %69 = load i32*, i32** %26, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = ptrtoint i32* %71 to i64
  %74 = ptrtoint i32* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = call i64 @ZSTD_decodeSeqHeaders(i32* %22, i32** %23, i64* %19, i32* %67, i32* %68, i32* %69, i32* %70, i32 %77)
  store i64 %78, i64* %18, align 8
  %79 = load i64, i64* %18, align 8
  %80 = call i64 @ZSTD_isError(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %5
  %83 = load i64, i64* %18, align 8
  store i64 %83, i64* %6, align 8
  br label %208

84:                                               ; preds = %5
  %85 = load i64, i64* %18, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 %85
  store i32* %87, i32** %13, align 8
  %88 = call i32 @memset(i32* %28, i32 0, i32 4)
  %89 = load i32*, i32** %23, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  store i32* %89, i32** %90, align 8
  %91 = load i32*, i32** %23, align 8
  %92 = load i64, i64* %19, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 5
  store i32* %93, i32** %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %97 = load i32*, i32** %13, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = ptrtoint i32* %98 to i64
  %101 = ptrtoint i32* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 4
  %104 = trunc i64 %103 to i32
  %105 = call i64 @BIT_initDStream(i32* %96, i32* %97, i32 %104)
  store i64 %105, i64* %18, align 8
  %106 = load i64, i64* %18, align 8
  %107 = call i64 @ERR_isError(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %84
  %110 = load i32, i32* @corruption_detected, align 4
  %111 = call i64 @ERROR(i32 %110)
  store i64 %111, i64* %6, align 8
  br label %208

112:                                              ; preds = %84
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %115 = load i32*, i32** %24, align 8
  %116 = call i32 @FSE_initDState(i32* %113, i32* %114, i32* %115)
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %119 = load i32*, i32** %26, align 8
  %120 = call i32 @FSE_initDState(i32* %117, i32* %118, i32* %119)
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %123 = load i32*, i32** %25, align 8
  %124 = call i32 @FSE_initDState(i32* %121, i32* %122, i32* %123)
  br label %125

125:                                              ; preds = %150, %112
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %127 = call i64 @BIT_reloadDStream(i32* %126)
  %128 = load i64, i64* @BIT_DStream_completed, align 8
  %129 = icmp sle i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i32, i32* %22, align 4
  %132 = icmp sgt i32 %131, 0
  br label %133

133:                                              ; preds = %130, %125
  %134 = phi i1 [ false, %125 ], [ %132, %130 ]
  br i1 %134, label %135, label %154

135:                                              ; preds = %133
  %136 = load i32, i32* %22, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %22, align 4
  %138 = call i32 @ZSTD_decodeSequence(i32* %28, %struct.TYPE_4__* %29)
  %139 = load i32*, i32** %16, align 8
  %140 = load i32, i32* %28, align 4
  %141 = load i32*, i32** %21, align 8
  %142 = load i32*, i32** %27, align 8
  %143 = load i32*, i32** %17, align 8
  %144 = call i64 @ZSTD_execSequence(i32* %139, i32 %140, i32** %20, i32* %141, i32* %142, i32* %143)
  store i64 %144, i64* %30, align 8
  %145 = load i64, i64* %30, align 8
  %146 = call i64 @ZSTD_isError(i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %135
  %149 = load i64, i64* %30, align 8
  store i64 %149, i64* %6, align 8
  br label %208

150:                                              ; preds = %135
  %151 = load i64, i64* %30, align 8
  %152 = load i32*, i32** %16, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 %151
  store i32* %153, i32** %16, align 8
  br label %125

154:                                              ; preds = %133
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %156 = call i32 @BIT_endOfDStream(i32* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* @corruption_detected, align 4
  %160 = call i64 @ERROR(i32 %159)
  store i64 %160, i64* %6, align 8
  br label %208

161:                                              ; preds = %154
  %162 = load i32, i32* %22, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* @corruption_detected, align 4
  %166 = call i64 @ERROR(i32 %165)
  store i64 %166, i64* %6, align 8
  br label %208

167:                                              ; preds = %161
  %168 = load i32*, i32** %21, align 8
  %169 = load i32*, i32** %20, align 8
  %170 = ptrtoint i32* %168 to i64
  %171 = ptrtoint i32* %169 to i64
  %172 = sub i64 %170, %171
  %173 = sdiv exact i64 %172, 4
  store i64 %173, i64* %31, align 8
  %174 = load i32*, i32** %20, align 8
  %175 = load i32*, i32** %21, align 8
  %176 = icmp ugt i32* %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %167
  %178 = load i32, i32* @corruption_detected, align 4
  %179 = call i64 @ERROR(i32 %178)
  store i64 %179, i64* %6, align 8
  br label %208

180:                                              ; preds = %167
  %181 = load i32*, i32** %16, align 8
  %182 = load i64, i64* %31, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32*, i32** %17, align 8
  %185 = icmp ugt i32* %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = load i32, i32* @dstSize_tooSmall, align 4
  %188 = call i64 @ERROR(i32 %187)
  store i64 %188, i64* %6, align 8
  br label %208

189:                                              ; preds = %180
  %190 = load i32*, i32** %16, align 8
  %191 = load i32*, i32** %20, align 8
  %192 = icmp ne i32* %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %189
  %194 = load i32*, i32** %16, align 8
  %195 = load i32*, i32** %20, align 8
  %196 = load i64, i64* %31, align 8
  %197 = call i32 @memmove(i32* %194, i32* %195, i64 %196)
  br label %198

198:                                              ; preds = %193, %189
  %199 = load i64, i64* %31, align 8
  %200 = load i32*, i32** %16, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 %199
  store i32* %201, i32** %16, align 8
  %202 = load i32*, i32** %16, align 8
  %203 = load i32*, i32** %15, align 8
  %204 = ptrtoint i32* %202 to i64
  %205 = ptrtoint i32* %203 to i64
  %206 = sub i64 %204, %205
  %207 = sdiv exact i64 %206, 4
  store i64 %207, i64* %6, align 8
  br label %208

208:                                              ; preds = %198, %186, %177, %164, %158, %148, %109, %82
  %209 = load i64, i64* %6, align 8
  ret i64 %209
}

declare dso_local i64 @ZSTD_decodeSeqHeaders(i32*, i32**, i64*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @BIT_initDStream(i32*, i32*, i32) #1

declare dso_local i64 @ERR_isError(i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @FSE_initDState(i32*, i32*, i32*) #1

declare dso_local i64 @BIT_reloadDStream(i32*) #1

declare dso_local i32 @ZSTD_decodeSequence(i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @ZSTD_execSequence(i32*, i32, i32**, i32*, i32*, i32*) #1

declare dso_local i32 @BIT_endOfDStream(i32*) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
