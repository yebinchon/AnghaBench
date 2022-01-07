; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_zstd_decompress_block.c_ZSTD_decodeSeqHeaders.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_zstd_decompress_block.c_ZSTD_decodeSeqHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"ZSTD_decodeSeqHeaders\00", align 1
@MIN_SEQUENCES_SIZE = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@LONGNBSEQ = common dso_local global i32 0, align 4
@MaxLL = common dso_local global i32 0, align 4
@LLFSELog = common dso_local global i32 0, align 4
@LL_base = common dso_local global i32 0, align 4
@LL_bits = common dso_local global i32 0, align 4
@LL_defaultDTable = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4
@MaxOff = common dso_local global i32 0, align 4
@OffFSELog = common dso_local global i32 0, align 4
@OF_base = common dso_local global i32 0, align 4
@OF_bits = common dso_local global i32 0, align 4
@OF_defaultDTable = common dso_local global i32 0, align 4
@MaxML = common dso_local global i32 0, align 4
@MLFSELog = common dso_local global i32 0, align 4
@ML_base = common dso_local global i32 0, align 4
@ML_bits = common dso_local global i32 0, align 4
@ML_defaultDTable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_decodeSeqHeaders(%struct.TYPE_5__* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %10, align 8
  store i32* %25, i32** %12, align 8
  %26 = call i32 @DEBUGLOG(i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @MIN_SEQUENCES_SIZE, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @srcSize_wrong, align 4
  %32 = call i64 @ERROR(i32 %31)
  store i64 %32, i64* %5, align 8
  br label %228

33:                                               ; preds = %4
  %34 = load i32*, i32** %12, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %12, align 8
  %36 = load i32, i32* %34, align 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %33
  %40 = load i32*, i32** %7, align 8
  store i32 0, i32* %40, align 4
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @srcSize_wrong, align 4
  %45 = call i64 @ERROR(i32 %44)
  store i64 %45, i64* %5, align 8
  br label %228

46:                                               ; preds = %39
  store i64 1, i64* %5, align 8
  br label %228

47:                                               ; preds = %33
  %48 = load i32, i32* %13, align 4
  %49 = icmp sgt i32 %48, 127
  br i1 %49, label %50, label %84

50:                                               ; preds = %47
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 255
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load i32*, i32** %12, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32*, i32** %11, align 8
  %57 = icmp ugt i32* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @srcSize_wrong, align 4
  %60 = call i64 @ERROR(i32 %59)
  store i64 %60, i64* %5, align 8
  br label %228

61:                                               ; preds = %53
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @MEM_readLE16(i32* %62)
  %64 = load i32, i32* @LONGNBSEQ, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %13, align 4
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32* %67, i32** %12, align 8
  br label %83

68:                                               ; preds = %50
  %69 = load i32*, i32** %12, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = icmp uge i32* %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @srcSize_wrong, align 4
  %74 = call i64 @ERROR(i32 %73)
  store i64 %74, i64* %5, align 8
  br label %228

75:                                               ; preds = %68
  %76 = load i32, i32* %13, align 4
  %77 = sub nsw i32 %76, 128
  %78 = shl i32 %77, 8
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %12, align 8
  %81 = load i32, i32* %79, align 4
  %82 = add nsw i32 %78, %81
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %75, %61
  br label %84

84:                                               ; preds = %83, %47
  %85 = load i32, i32* %13, align 4
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32*, i32** %12, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  %89 = load i32*, i32** %11, align 8
  %90 = icmp ugt i32* %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* @srcSize_wrong, align 4
  %93 = call i64 @ERROR(i32 %92)
  store i64 %93, i64* %5, align 8
  br label %228

94:                                               ; preds = %84
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 6
  store i32 %97, i32* %14, align 4
  %98 = load i32*, i32** %12, align 8
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 4
  %101 = and i32 %100, 3
  store i32 %101, i32* %15, align 4
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 2
  %105 = and i32 %104, 3
  store i32 %105, i32* %16, align 4
  %106 = load i32*, i32** %12, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %12, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 5
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* @MaxLL, align 4
  %116 = load i32, i32* @LLFSELog, align 4
  %117 = load i32*, i32** %12, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = ptrtoint i32* %118 to i64
  %121 = ptrtoint i32* %119 to i64
  %122 = sub i64 %120, %121
  %123 = sdiv exact i64 %122, 4
  %124 = trunc i64 %123 to i32
  %125 = load i32, i32* @LL_base, align 4
  %126 = load i32, i32* @LL_bits, align 4
  %127 = load i32, i32* @LL_defaultDTable, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %13, align 4
  %135 = call i64 @ZSTD_buildSeqTable(i32 %111, i32* %113, i32 %114, i32 %115, i32 %116, i32* %117, i32 %124, i32 %125, i32 %126, i32 %127, i32 %130, i32 %133, i32 %134)
  store i64 %135, i64* %17, align 8
  %136 = load i64, i64* %17, align 8
  %137 = call i64 @ZSTD_isError(i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %94
  %140 = load i32, i32* @corruption_detected, align 4
  %141 = call i64 @ERROR(i32 %140)
  store i64 %141, i64* %5, align 8
  br label %228

142:                                              ; preds = %94
  %143 = load i64, i64* %17, align 8
  %144 = load i32*, i32** %12, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 %143
  store i32* %145, i32** %12, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 4
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* @MaxOff, align 4
  %154 = load i32, i32* @OffFSELog, align 4
  %155 = load i32*, i32** %12, align 8
  %156 = load i32*, i32** %11, align 8
  %157 = load i32*, i32** %12, align 8
  %158 = ptrtoint i32* %156 to i64
  %159 = ptrtoint i32* %157 to i64
  %160 = sub i64 %158, %159
  %161 = sdiv exact i64 %160, 4
  %162 = trunc i64 %161 to i32
  %163 = load i32, i32* @OF_base, align 4
  %164 = load i32, i32* @OF_bits, align 4
  %165 = load i32, i32* @OF_defaultDTable, align 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %13, align 4
  %173 = call i64 @ZSTD_buildSeqTable(i32 %149, i32* %151, i32 %152, i32 %153, i32 %154, i32* %155, i32 %162, i32 %163, i32 %164, i32 %165, i32 %168, i32 %171, i32 %172)
  store i64 %173, i64* %18, align 8
  %174 = load i64, i64* %18, align 8
  %175 = call i64 @ZSTD_isError(i64 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %142
  %178 = load i32, i32* @corruption_detected, align 4
  %179 = call i64 @ERROR(i32 %178)
  store i64 %179, i64* %5, align 8
  br label %228

180:                                              ; preds = %142
  %181 = load i64, i64* %18, align 8
  %182 = load i32*, i32** %12, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 %181
  store i32* %183, i32** %12, align 8
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 2
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* @MaxML, align 4
  %192 = load i32, i32* @MLFSELog, align 4
  %193 = load i32*, i32** %12, align 8
  %194 = load i32*, i32** %11, align 8
  %195 = load i32*, i32** %12, align 8
  %196 = ptrtoint i32* %194 to i64
  %197 = ptrtoint i32* %195 to i64
  %198 = sub i64 %196, %197
  %199 = sdiv exact i64 %198, 4
  %200 = trunc i64 %199 to i32
  %201 = load i32, i32* @ML_base, align 4
  %202 = load i32, i32* @ML_bits, align 4
  %203 = load i32, i32* @ML_defaultDTable, align 4
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %13, align 4
  %211 = call i64 @ZSTD_buildSeqTable(i32 %187, i32* %189, i32 %190, i32 %191, i32 %192, i32* %193, i32 %200, i32 %201, i32 %202, i32 %203, i32 %206, i32 %209, i32 %210)
  store i64 %211, i64* %19, align 8
  %212 = load i64, i64* %19, align 8
  %213 = call i64 @ZSTD_isError(i64 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %180
  %216 = load i32, i32* @corruption_detected, align 4
  %217 = call i64 @ERROR(i32 %216)
  store i64 %217, i64* %5, align 8
  br label %228

218:                                              ; preds = %180
  %219 = load i64, i64* %19, align 8
  %220 = load i32*, i32** %12, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 %219
  store i32* %221, i32** %12, align 8
  %222 = load i32*, i32** %12, align 8
  %223 = load i32*, i32** %10, align 8
  %224 = ptrtoint i32* %222 to i64
  %225 = ptrtoint i32* %223 to i64
  %226 = sub i64 %224, %225
  %227 = sdiv exact i64 %226, 4
  store i64 %227, i64* %5, align 8
  br label %228

228:                                              ; preds = %218, %215, %177, %139, %91, %72, %58, %46, %43, %30
  %229 = load i64, i64* %5, align 8
  ret i64 %229
}

declare dso_local i32 @DEBUGLOG(i32, i8*) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @MEM_readLE16(i32*) #1

declare dso_local i64 @ZSTD_buildSeqTable(i32, i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ZSTD_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
