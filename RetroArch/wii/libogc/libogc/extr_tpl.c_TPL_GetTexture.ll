; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_tpl.c_TPL_GetTexture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_tpl.c_TPL_GetTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@GX_DISABLE = common dso_local global i32 0, align 4
@TPL_FILE_TYPE_DISC = common dso_local global i64 0, align 8
@PPC_CACHE_ALIGNMENT = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@GX_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TPL_GetTexture(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %10, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* @GX_DISABLE, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %163

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %163

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %23
  store i32 -1, i32* %4, align 4
  br label %163

33:                                               ; preds = %26
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %11, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %163

41:                                               ; preds = %33
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %12, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %49 = icmp ne %struct.TYPE_5__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %163

51:                                               ; preds = %41
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @TPL_GetTextureSize(i32 %54, i32 %57, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TPL_FILE_TYPE_DISC, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %97

67:                                               ; preds = %51
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %10, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 11
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* @PPC_CACHE_ALIGNMENT, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @memalign(i32 %76, i32 %77)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 11
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 11
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %67
  store i32 -1, i32* %4, align 4
  br label %163

86:                                               ; preds = %67
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @SEEK_SET, align 4
  %90 = call i32 @fseek(i32* %87, i32 %88, i32 %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 11
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @fread(i64 %93, i32 1, i32 %94, i32* %95)
  br label %97

97:                                               ; preds = %86, %51
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 1, i32* %13, align 4
  br label %103

103:                                              ; preds = %102, %97
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load float, float* %105, align 8
  %107 = fcmp ogt float %106, 0.000000e+00
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @GX_ENABLE, align 4
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %108, %103
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 11
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @DCFlushRange(i64 %113, i32 %114)
  %116 = load i32*, i32** %7, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 11
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 10
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @GX_InitTexObj(i32* %116, i64 %119, i32 %122, i32 %125, i32 %128, i32 %131, i32 %134, i32 %135)
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %162

139:                                              ; preds = %110
  %140 = load i32*, i32** %7, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load float, float* %154, align 8
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @GX_InitTexObjLOD(i32* %140, i32 %143, i32 %146, i32 %149, i64 %152, float %155, i32 %156, i32 %157, i32 %160)
  br label %162

162:                                              ; preds = %139, %110
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %162, %85, %50, %40, %32, %22, %18
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @TPL_GetTextureSize(i32, i32, i32) #1

declare dso_local i64 @memalign(i32, i32) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fread(i64, i32, i32, i32*) #1

declare dso_local i32 @DCFlushRange(i64, i32) #1

declare dso_local i32 @GX_InitTexObj(i32*, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GX_InitTexObjLOD(i32*, i32, i32, i32, i64, float, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
