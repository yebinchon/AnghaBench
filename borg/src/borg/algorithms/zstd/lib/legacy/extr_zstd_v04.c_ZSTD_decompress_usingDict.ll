; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v04.c_ZSTD_decompress_usingDict.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v04.c_ZSTD_decompress_usingDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i32 }

@ZSTD_frameHeaderSize_min = common dso_local global i64 0, align 8
@ZSTD_blockHeaderSize = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i8*, i64, i8*, i64, i8*, i64)* @ZSTD_decompress_usingDict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_decompress_usingDict(%struct.TYPE_11__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_10__, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %16, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = load i64, i64* %13, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %17, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %18, align 8
  %33 = load i32*, i32** %18, align 8
  store i32* %33, i32** %19, align 8
  %34 = load i32*, i32** %18, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %20, align 8
  %37 = load i64, i64* %13, align 8
  store i64 %37, i64* %21, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %39 = call i32 @ZSTD_resetDCtx(%struct.TYPE_11__* %38)
  %40 = load i8*, i8** %14, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %69

42:                                               ; preds = %7
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = load i64, i64* %15, align 8
  %46 = call i32 @ZSTD_decompress_insertDictionary(%struct.TYPE_11__* %43, i8* %44, i64 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = ptrtoint i8* %55 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds i8, i8* %52, i64 %62
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  br label %77

69:                                               ; preds = %7
  %70 = load i8*, i8** %10, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 3
  store i8* %70, i8** %74, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  store i8* %70, i8** %76, align 8
  br label %77

77:                                               ; preds = %69, %42
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* @ZSTD_frameHeaderSize_min, align 8
  %80 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %81 = add i64 %79, %80
  %82 = icmp ult i64 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @srcSize_wrong, align 4
  %85 = call i64 @ERROR(i32 %84)
  store i64 %85, i64* %8, align 8
  br label %218

86:                                               ; preds = %77
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load i64, i64* @ZSTD_frameHeaderSize_min, align 8
  %90 = call i64 @ZSTD_decodeFrameHeader_Part1(%struct.TYPE_11__* %87, i8* %88, i64 %89)
  store i64 %90, i64* %23, align 8
  %91 = load i64, i64* %23, align 8
  %92 = call i64 @ZSTD_isError(i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i64, i64* %23, align 8
  store i64 %95, i64* %8, align 8
  br label %218

96:                                               ; preds = %86
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* %23, align 8
  %99 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %100 = add i64 %98, %99
  %101 = icmp ult i64 %97, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @srcSize_wrong, align 4
  %104 = call i64 @ERROR(i32 %103)
  store i64 %104, i64* %8, align 8
  br label %218

105:                                              ; preds = %96
  %106 = load i64, i64* %23, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 %106
  store i32* %108, i32** %16, align 8
  %109 = load i64, i64* %23, align 8
  %110 = load i64, i64* %21, align 8
  %111 = sub i64 %110, %109
  store i64 %111, i64* %21, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = load i64, i64* %23, align 8
  %115 = call i64 @ZSTD_decodeFrameHeader_Part2(%struct.TYPE_11__* %112, i8* %113, i64 %114)
  store i64 %115, i64* %23, align 8
  %116 = load i64, i64* %23, align 8
  %117 = call i64 @ZSTD_isError(i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %105
  %120 = load i64, i64* %23, align 8
  store i64 %120, i64* %8, align 8
  br label %218

121:                                              ; preds = %105
  br label %122

122:                                              ; preds = %121, %201
  store i64 0, i64* %24, align 8
  %123 = load i32*, i32** %16, align 8
  %124 = load i32*, i32** %17, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = ptrtoint i32* %124 to i64
  %127 = ptrtoint i32* %125 to i64
  %128 = sub i64 %126, %127
  %129 = sdiv exact i64 %128, 4
  %130 = trunc i64 %129 to i32
  %131 = call i64 @ZSTD_getcBlockSize(i32* %123, i32 %130, %struct.TYPE_10__* %22)
  store i64 %131, i64* %25, align 8
  %132 = load i64, i64* %25, align 8
  %133 = call i64 @ZSTD_isError(i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %122
  %136 = load i64, i64* %25, align 8
  store i64 %136, i64* %8, align 8
  br label %218

137:                                              ; preds = %122
  %138 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %139 = load i32*, i32** %16, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 %138
  store i32* %140, i32** %16, align 8
  %141 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %142 = load i64, i64* %21, align 8
  %143 = sub i64 %142, %141
  store i64 %143, i64* %21, align 8
  %144 = load i64, i64* %25, align 8
  %145 = load i64, i64* %21, align 8
  %146 = icmp ugt i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %137
  %148 = load i32, i32* @srcSize_wrong, align 4
  %149 = call i64 @ERROR(i32 %148)
  store i64 %149, i64* %8, align 8
  br label %218

150:                                              ; preds = %137
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  switch i32 %152, label %188 [
    i32 131, label %153
    i32 129, label %166
    i32 128, label %178
    i32 130, label %181
  ]

153:                                              ; preds = %150
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %155 = load i32*, i32** %19, align 8
  %156 = load i32*, i32** %20, align 8
  %157 = load i32*, i32** %19, align 8
  %158 = ptrtoint i32* %156 to i64
  %159 = ptrtoint i32* %157 to i64
  %160 = sub i64 %158, %159
  %161 = sdiv exact i64 %160, 4
  %162 = trunc i64 %161 to i32
  %163 = load i32*, i32** %16, align 8
  %164 = load i64, i64* %25, align 8
  %165 = call i64 @ZSTD_decompressBlock_internal(%struct.TYPE_11__* %154, i32* %155, i32 %162, i32* %163, i64 %164)
  store i64 %165, i64* %24, align 8
  br label %191

166:                                              ; preds = %150
  %167 = load i32*, i32** %19, align 8
  %168 = load i32*, i32** %20, align 8
  %169 = load i32*, i32** %19, align 8
  %170 = ptrtoint i32* %168 to i64
  %171 = ptrtoint i32* %169 to i64
  %172 = sub i64 %170, %171
  %173 = sdiv exact i64 %172, 4
  %174 = trunc i64 %173 to i32
  %175 = load i32*, i32** %16, align 8
  %176 = load i64, i64* %25, align 8
  %177 = call i64 @ZSTD_copyRawBlock(i32* %167, i32 %174, i32* %175, i64 %176)
  store i64 %177, i64* %24, align 8
  br label %191

178:                                              ; preds = %150
  %179 = load i32, i32* @GENERIC, align 4
  %180 = call i64 @ERROR(i32 %179)
  store i64 %180, i64* %8, align 8
  br label %218

181:                                              ; preds = %150
  %182 = load i64, i64* %21, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32, i32* @srcSize_wrong, align 4
  %186 = call i64 @ERROR(i32 %185)
  store i64 %186, i64* %8, align 8
  br label %218

187:                                              ; preds = %181
  br label %191

188:                                              ; preds = %150
  %189 = load i32, i32* @GENERIC, align 4
  %190 = call i64 @ERROR(i32 %189)
  store i64 %190, i64* %8, align 8
  br label %218

191:                                              ; preds = %187, %166, %153
  %192 = load i64, i64* %25, align 8
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  br label %211

195:                                              ; preds = %191
  %196 = load i64, i64* %24, align 8
  %197 = call i64 @ZSTD_isError(i64 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load i64, i64* %24, align 8
  store i64 %200, i64* %8, align 8
  br label %218

201:                                              ; preds = %195
  %202 = load i64, i64* %24, align 8
  %203 = load i32*, i32** %19, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 %202
  store i32* %204, i32** %19, align 8
  %205 = load i64, i64* %25, align 8
  %206 = load i32*, i32** %16, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 %205
  store i32* %207, i32** %16, align 8
  %208 = load i64, i64* %25, align 8
  %209 = load i64, i64* %21, align 8
  %210 = sub i64 %209, %208
  store i64 %210, i64* %21, align 8
  br label %122

211:                                              ; preds = %194
  %212 = load i32*, i32** %19, align 8
  %213 = load i32*, i32** %18, align 8
  %214 = ptrtoint i32* %212 to i64
  %215 = ptrtoint i32* %213 to i64
  %216 = sub i64 %214, %215
  %217 = sdiv exact i64 %216, 4
  store i64 %217, i64* %8, align 8
  br label %218

218:                                              ; preds = %211, %199, %188, %184, %178, %147, %135, %119, %102, %94, %83
  %219 = load i64, i64* %8, align 8
  ret i64 %219
}

declare dso_local i32 @ZSTD_resetDCtx(%struct.TYPE_11__*) #1

declare dso_local i32 @ZSTD_decompress_insertDictionary(%struct.TYPE_11__*, i8*, i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @ZSTD_decodeFrameHeader_Part1(%struct.TYPE_11__*, i8*, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i64 @ZSTD_decodeFrameHeader_Part2(%struct.TYPE_11__*, i8*, i64) #1

declare dso_local i64 @ZSTD_getcBlockSize(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @ZSTD_decompressBlock_internal(%struct.TYPE_11__*, i32*, i32, i32*, i64) #1

declare dso_local i64 @ZSTD_copyRawBlock(i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
