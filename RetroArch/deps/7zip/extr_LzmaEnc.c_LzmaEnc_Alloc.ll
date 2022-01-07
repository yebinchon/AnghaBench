; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaEnc.c_LzmaEnc_Alloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaEnc.c_LzmaEnc_Alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_21__, %struct.TYPE_21__*, i32, %struct.TYPE_21__, %struct.TYPE_18__, i32*, i32, i64, i32 }
%struct.TYPE_21__ = type { i64, i8 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_19__ = type { i64 (%struct.TYPE_19__*, i32)* }

@kNumOpts = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i32 0, align 4
@kBigHashDicLimit = common dso_local global i64 0, align 8
@LZMA_MATCH_LEN_MAX = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32, %struct.TYPE_19__*, %struct.TYPE_19__*)* @LzmaEnc_Alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LzmaEnc_Alloc(%struct.TYPE_20__* %0, i32 %1, %struct.TYPE_19__* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  %12 = load i32, i32* @kNumOpts, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 14
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %16 = call i32 @RangeEnc_Alloc(i32* %14, %struct.TYPE_19__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %19, i32* %5, align 4
  br label %201

20:                                               ; preds = %4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 13
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %30, %25, %20
  %37 = phi i1 [ false, %25 ], [ false, %20 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = add i32 %43, %46
  store i32 %47, i32* %11, align 4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 11
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %36
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 10
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %114

64:                                               ; preds = %58, %52, %36
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %67 = call i32 @LzmaEnc_FreeLits(%struct.TYPE_20__* %65, %struct.TYPE_19__* %66)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i64 (%struct.TYPE_19__*, i32)*, i64 (%struct.TYPE_19__*, i32)** %69, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %72 = load i32, i32* %11, align 4
  %73 = shl i32 768, %72
  %74 = zext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i64 %70(%struct.TYPE_19__* %71, i32 %76)
  %78 = inttoptr i64 %77 to i32*
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 11
  store i32* %78, i32** %80, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i64 (%struct.TYPE_19__*, i32)*, i64 (%struct.TYPE_19__*, i32)** %82, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %85 = load i32, i32* %11, align 4
  %86 = shl i32 768, %85
  %87 = zext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = trunc i64 %88 to i32
  %90 = call i64 %83(%struct.TYPE_19__* %84, i32 %89)
  %91 = inttoptr i64 %90 to i32*
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 10
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  store i32* %91, i32** %94, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 11
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %64
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 10
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %110, label %105

105:                                              ; preds = %99, %64
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %108 = call i32 @LzmaEnc_FreeLits(%struct.TYPE_20__* %106, %struct.TYPE_19__* %107)
  %109 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %109, i32* %5, align 4
  br label %201

110:                                              ; preds = %99
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %110, %58
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @kBigHashDicLimit, align 8
  %119 = icmp sgt i64 %117, %118
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 1, i32 0
  %122 = trunc i32 %121 to i8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 1
  store i8 %122, i8* %125, align 8
  %126 = load i32, i32* %10, align 4
  %127 = zext i32 %126 to i64
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %127, %130
  %132 = load i32, i32* %7, align 4
  %133 = zext i32 %132 to i64
  %134 = icmp slt i64 %131, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %114
  %136 = load i32, i32* %7, align 4
  %137 = zext i32 %136 to i64
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %137, %140
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %135, %114
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %172

148:                                              ; preds = %143
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 9
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 8
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @LZMA_MATCH_LEN_MAX, align 4
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %161 = call i32 @MatchFinderMt_Create(%struct.TYPE_21__* %150, i32 %154, i32 %155, i32 %158, i32 %159, %struct.TYPE_19__* %160)
  %162 = call i32 @RINOK(i32 %161)
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 9
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 7
  store %struct.TYPE_21__* %164, %struct.TYPE_21__** %166, align 8
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 9
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 5
  %171 = call i32 @MatchFinderMt_CreateVTable(%struct.TYPE_21__* %168, i32* %170)
  br label %199

172:                                              ; preds = %143
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 6
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = load i32, i32* %10, align 4
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @LZMA_MATCH_LEN_MAX, align 4
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %185 = call i32 @MatchFinder_Create(%struct.TYPE_21__* %174, i32 %178, i32 %179, i32 %182, i32 %183, %struct.TYPE_19__* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %172
  %188 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %188, i32* %5, align 4
  br label %201

189:                                              ; preds = %172
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 6
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 7
  store %struct.TYPE_21__* %191, %struct.TYPE_21__** %193, align 8
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 6
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 5
  %198 = call i32 @MatchFinder_CreateVTable(%struct.TYPE_21__* %195, i32* %197)
  br label %199

199:                                              ; preds = %189, %148
  %200 = load i32, i32* @SZ_OK, align 4
  store i32 %200, i32* %5, align 4
  br label %201

201:                                              ; preds = %199, %187, %105, %18
  %202 = load i32, i32* %5, align 4
  ret i32 %202
}

declare dso_local i32 @RangeEnc_Alloc(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @LzmaEnc_FreeLits(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @MatchFinderMt_Create(%struct.TYPE_21__*, i32, i32, i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @MatchFinderMt_CreateVTable(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @MatchFinder_Create(%struct.TYPE_21__*, i32, i32, i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @MatchFinder_CreateVTable(%struct.TYPE_21__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
