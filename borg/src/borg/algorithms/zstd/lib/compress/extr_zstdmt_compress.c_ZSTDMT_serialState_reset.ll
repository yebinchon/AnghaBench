; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_serialState_reset.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_serialState_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_19__, %struct.TYPE_16__, i32, i32, i64 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__, i32, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"LDM window size = %u KB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*, %struct.TYPE_19__*, i64)* @ZSTDMT_serialState_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ZSTDMT_serialState_reset(%struct.TYPE_17__* %0, i32* %1, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 1, %22
  %24 = lshr i32 %23, 10
  %25 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 4
  %28 = call i32 @ZSTD_ldm_adjustParameters(%struct.TYPE_18__* %26, %struct.TYPE_14__* %27)
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp uge i32 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %40, 32
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ZSTD_rollingHash_primePower(i32 %46)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  br label %54

51:                                               ; preds = %4
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 1
  %53 = call i32 @memset(%struct.TYPE_18__* %52, i32 0, i64 32)
  br label %54

54:                                               ; preds = %51, %19
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 3
  %64 = call i32 @XXH64_reset(i32* %63, i32 0)
  br label %65

65:                                               ; preds = %61, %54
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %193

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %9, align 4
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = shl i64 1, %77
  %79 = mul i64 %78, 32
  store i64 %79, i64* %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub i32 %82, %85
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = zext i32 %87 to i64
  %89 = shl i64 1, %88
  store i64 %89, i64* %13, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sub i32 %94, %99
  store i32 %100, i32* %14, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %2, i32 0, i32 1
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @ZSTD_ldm_getMaxNbSeq(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %102, i64 %103)
  %105 = call i32 @ZSTDMT_setNbSeq(i32* %101, i32 %104)
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 2
  %109 = call i32 @ZSTD_window_clear(i32* %108)
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = icmp eq %struct.TYPE_18__* %119, null
  br i1 %120, label %129, label %121

121:                                              ; preds = %70
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %143

129:                                              ; preds = %121, %70
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @ZSTD_free(%struct.TYPE_18__* %133, i32 %134)
  %136 = load i64, i64* %11, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i64 @ZSTD_malloc(i64 %136, i32 %137)
  %139 = inttoptr i64 %138 to %struct.TYPE_18__*
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  store %struct.TYPE_18__* %139, %struct.TYPE_18__** %142, align 8
  br label %143

143:                                              ; preds = %129, %121
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  %148 = icmp eq %struct.TYPE_18__* %147, null
  br i1 %148, label %153, label %149

149:                                              ; preds = %143
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %153, label %167

153:                                              ; preds = %149, %143
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @ZSTD_free(%struct.TYPE_18__* %157, i32 %158)
  %160 = load i64, i64* %13, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i64 @ZSTD_malloc(i64 %160, i32 %161)
  %163 = inttoptr i64 %162 to %struct.TYPE_18__*
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  store %struct.TYPE_18__* %163, %struct.TYPE_18__** %166, align 8
  br label %167

167:                                              ; preds = %153, %149
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %170, align 8
  %172 = icmp ne %struct.TYPE_18__* %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %176, align 8
  %178 = icmp ne %struct.TYPE_18__* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %173, %167
  store i32 1, i32* %5, align 4
  br label %202

180:                                              ; preds = %173
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %183, align 8
  %185 = load i64, i64* %11, align 8
  %186 = call i32 @memset(%struct.TYPE_18__* %184, i32 0, i64 %185)
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %189, align 8
  %191 = load i64, i64* %13, align 8
  %192 = call i32 @memset(%struct.TYPE_18__* %190, i32 0, i64 %191)
  br label %193

193:                                              ; preds = %180, %65
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = bitcast %struct.TYPE_19__* %195 to i8*
  %197 = bitcast %struct.TYPE_19__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %196, i8* align 8 %197, i64 64, i1 false)
  %198 = load i64, i64* %8, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 0
  store i64 %198, i64* %201, align 8
  store i32 0, i32* %5, align 4
  br label %202

202:                                              ; preds = %193, %179
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local i32 @DEBUGLOG(i32, i8*, i32) #1

declare dso_local i32 @ZSTD_ldm_adjustParameters(%struct.TYPE_18__*, %struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ZSTD_rollingHash_primePower(i32) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i64) #1

declare dso_local i32 @XXH64_reset(i32*, i32) #1

declare dso_local i32 @ZSTDMT_setNbSeq(i32*, i32) #1

declare dso_local i32 @ZSTD_ldm_getMaxNbSeq(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8, i64) #1

declare dso_local i32 @ZSTD_window_clear(i32*) #1

declare dso_local i32 @ZSTD_free(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @ZSTD_malloc(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
