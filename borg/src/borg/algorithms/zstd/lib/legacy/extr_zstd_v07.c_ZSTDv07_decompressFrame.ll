; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v07.c_ZSTDv07_decompressFrame.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v07.c_ZSTDv07_decompressFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }

@ZSTDv07_frameHeaderSize_min = common dso_local global i64 0, align 8
@ZSTDv07_blockHeaderSize = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i8*, i64, i8*, i64)* @ZSTDv07_decompressFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTDv07_decompressFrame(%struct.TYPE_10__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_9__, align 4
  %21 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load i64, i64* %11, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %13, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %14, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %15, align 8
  %32 = load i32*, i32** %14, align 8
  store i32* %32, i32** %16, align 8
  %33 = load i64, i64* %11, align 8
  store i64 %33, i64* %17, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @ZSTDv07_frameHeaderSize_min, align 8
  %36 = load i64, i64* @ZSTDv07_blockHeaderSize, align 8
  %37 = add i64 %35, %36
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %5
  %40 = load i32, i32* @srcSize_wrong, align 4
  %41 = call i64 @ERROR(i32 %40)
  store i64 %41, i64* %6, align 8
  br label %196

42:                                               ; preds = %5
  %43 = load i8*, i8** %10, align 8
  %44 = load i64, i64* @ZSTDv07_frameHeaderSize_min, align 8
  %45 = call i64 @ZSTDv07_frameHeaderSize(i8* %43, i64 %44)
  store i64 %45, i64* %18, align 8
  %46 = load i64, i64* %18, align 8
  %47 = call i64 @ZSTDv07_isError(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i64, i64* %18, align 8
  store i64 %50, i64* %6, align 8
  br label %196

51:                                               ; preds = %42
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %18, align 8
  %54 = load i64, i64* @ZSTDv07_blockHeaderSize, align 8
  %55 = add i64 %53, %54
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @srcSize_wrong, align 4
  %59 = call i64 @ERROR(i32 %58)
  store i64 %59, i64* %6, align 8
  br label %196

60:                                               ; preds = %51
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i64, i64* %18, align 8
  %64 = call i64 @ZSTDv07_decodeFrameHeader(%struct.TYPE_10__* %61, i8* %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @corruption_detected, align 4
  %68 = call i64 @ERROR(i32 %67)
  store i64 %68, i64* %6, align 8
  br label %196

69:                                               ; preds = %60
  %70 = load i64, i64* %18, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 %70
  store i32* %72, i32** %12, align 8
  %73 = load i64, i64* %18, align 8
  %74 = load i64, i64* %17, align 8
  %75 = sub i64 %74, %73
  store i64 %75, i64* %17, align 8
  br label %76

76:                                               ; preds = %69, %179
  %77 = load i32*, i32** %12, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = ptrtoint i32* %78 to i64
  %81 = ptrtoint i32* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i64 @ZSTDv07_getcBlockSize(i32* %77, i32 %84, %struct.TYPE_9__* %20)
  store i64 %85, i64* %21, align 8
  %86 = load i64, i64* %21, align 8
  %87 = call i64 @ZSTDv07_isError(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %76
  %90 = load i64, i64* %21, align 8
  store i64 %90, i64* %6, align 8
  br label %196

91:                                               ; preds = %76
  %92 = load i64, i64* @ZSTDv07_blockHeaderSize, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 %92
  store i32* %94, i32** %12, align 8
  %95 = load i64, i64* @ZSTDv07_blockHeaderSize, align 8
  %96 = load i64, i64* %17, align 8
  %97 = sub i64 %96, %95
  store i64 %97, i64* %17, align 8
  %98 = load i64, i64* %21, align 8
  %99 = load i64, i64* %17, align 8
  %100 = icmp ugt i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load i32, i32* @srcSize_wrong, align 4
  %103 = call i64 @ERROR(i32 %102)
  store i64 %103, i64* %6, align 8
  br label %196

104:                                              ; preds = %91
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  switch i32 %106, label %153 [
    i32 131, label %107
    i32 129, label %120
    i32 128, label %132
    i32 130, label %146
  ]

107:                                              ; preds = %104
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %109 = load i32*, i32** %16, align 8
  %110 = load i32*, i32** %15, align 8
  %111 = load i32*, i32** %16, align 8
  %112 = ptrtoint i32* %110 to i64
  %113 = ptrtoint i32* %111 to i64
  %114 = sub i64 %112, %113
  %115 = sdiv exact i64 %114, 4
  %116 = trunc i64 %115 to i32
  %117 = load i32*, i32** %12, align 8
  %118 = load i64, i64* %21, align 8
  %119 = call i64 @ZSTDv07_decompressBlock_internal(%struct.TYPE_10__* %108, i32* %109, i32 %116, i32* %117, i64 %118)
  store i64 %119, i64* %19, align 8
  br label %156

120:                                              ; preds = %104
  %121 = load i32*, i32** %16, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = load i32*, i32** %16, align 8
  %124 = ptrtoint i32* %122 to i64
  %125 = ptrtoint i32* %123 to i64
  %126 = sub i64 %124, %125
  %127 = sdiv exact i64 %126, 4
  %128 = trunc i64 %127 to i32
  %129 = load i32*, i32** %12, align 8
  %130 = load i64, i64* %21, align 8
  %131 = call i64 @ZSTDv07_copyRawBlock(i32* %121, i32 %128, i32* %129, i64 %130)
  store i64 %131, i64* %19, align 8
  br label %156

132:                                              ; preds = %104
  %133 = load i32*, i32** %16, align 8
  %134 = load i32*, i32** %15, align 8
  %135 = load i32*, i32** %16, align 8
  %136 = ptrtoint i32* %134 to i64
  %137 = ptrtoint i32* %135 to i64
  %138 = sub i64 %136, %137
  %139 = sdiv exact i64 %138, 4
  %140 = trunc i64 %139 to i32
  %141 = load i32*, i32** %12, align 8
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @ZSTDv07_generateNxBytes(i32* %133, i32 %140, i32 %142, i32 %144)
  store i64 %145, i64* %19, align 8
  br label %156

146:                                              ; preds = %104
  %147 = load i64, i64* %17, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32, i32* @srcSize_wrong, align 4
  %151 = call i64 @ERROR(i32 %150)
  store i64 %151, i64* %6, align 8
  br label %196

152:                                              ; preds = %146
  store i64 0, i64* %19, align 8
  br label %156

153:                                              ; preds = %104
  %154 = load i32, i32* @GENERIC, align 4
  %155 = call i64 @ERROR(i32 %154)
  store i64 %155, i64* %6, align 8
  br label %196

156:                                              ; preds = %152, %132, %120, %107
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 130
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %189

161:                                              ; preds = %156
  %162 = load i64, i64* %19, align 8
  %163 = call i64 @ZSTDv07_isError(i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i64, i64* %19, align 8
  store i64 %166, i64* %6, align 8
  br label %196

167:                                              ; preds = %161
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32*, i32** %16, align 8
  %177 = load i64, i64* %19, align 8
  %178 = call i32 @XXH64_update(i32* %175, i32* %176, i64 %177)
  br label %179

179:                                              ; preds = %173, %167
  %180 = load i64, i64* %19, align 8
  %181 = load i32*, i32** %16, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 %180
  store i32* %182, i32** %16, align 8
  %183 = load i64, i64* %21, align 8
  %184 = load i32*, i32** %12, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 %183
  store i32* %185, i32** %12, align 8
  %186 = load i64, i64* %21, align 8
  %187 = load i64, i64* %17, align 8
  %188 = sub i64 %187, %186
  store i64 %188, i64* %17, align 8
  br label %76

189:                                              ; preds = %160
  %190 = load i32*, i32** %16, align 8
  %191 = load i32*, i32** %14, align 8
  %192 = ptrtoint i32* %190 to i64
  %193 = ptrtoint i32* %191 to i64
  %194 = sub i64 %192, %193
  %195 = sdiv exact i64 %194, 4
  store i64 %195, i64* %6, align 8
  br label %196

196:                                              ; preds = %189, %165, %153, %149, %101, %89, %66, %57, %49, %39
  %197 = load i64, i64* %6, align 8
  ret i64 %197
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @ZSTDv07_frameHeaderSize(i8*, i64) #1

declare dso_local i64 @ZSTDv07_isError(i64) #1

declare dso_local i64 @ZSTDv07_decodeFrameHeader(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i64 @ZSTDv07_getcBlockSize(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @ZSTDv07_decompressBlock_internal(%struct.TYPE_10__*, i32*, i32, i32*, i64) #1

declare dso_local i64 @ZSTDv07_copyRawBlock(i32*, i32, i32*, i64) #1

declare dso_local i64 @ZSTDv07_generateNxBytes(i32*, i32, i32, i32) #1

declare dso_local i32 @XXH64_update(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
