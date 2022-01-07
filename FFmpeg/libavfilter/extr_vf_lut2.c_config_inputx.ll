; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut2.c_config_inputx.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut2.c_config_inputx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8*, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i8**, i64, i8*, i8**, i8**, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }

@VAR_W = common dso_local global i64 0, align 8
@VAR_H = common dso_local global i64 0, align 8
@VAR_BITDEPTHX = common dso_local global i64 0, align 8
@VAR_BITDEPTHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @config_inputx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_inputx(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %3, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %4, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_10__* @av_pix_fmt_desc_get(i32 %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %5, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @av_pix_fmt_count_planes(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i8* @AV_CEIL_RSHIFT(i8* %32, i32 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 5
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  store i8* %34, i8** %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 5
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  store i8* %34, i8** %42, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 5
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 3
  store i8* %45, i8** %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 5
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  store i8* %45, i8** %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i8* @AV_CEIL_RSHIFT(i8* %56, i32 %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 4
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 2
  store i8* %58, i8** %62, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 4
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  store i8* %58, i8** %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 4
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 3
  store i8* %69, i8** %73, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 4
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  store i8* %69, i8** %77, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i8**, i8*** %82, align 8
  %84 = load i64, i64* @VAR_W, align 8
  %85 = getelementptr inbounds i8*, i8** %83, i64 %84
  store i8* %80, i8** %85, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i8**, i8*** %90, align 8
  %92 = load i64, i64* @VAR_H, align 8
  %93 = getelementptr inbounds i8*, i8** %91, i64 %92
  store i8* %88, i8** %93, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i8**, i8*** %106, align 8
  %108 = load i64, i64* @VAR_BITDEPTHX, align 8
  %109 = getelementptr inbounds i8*, i8** %107, i64 %108
  store i8* %104, i8** %109, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %1
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i8**, i8*** %127, align 8
  %129 = load i64, i64* @VAR_BITDEPTHY, align 8
  %130 = getelementptr inbounds i8*, i8** %128, i64 %129
  store i8* %125, i8** %130, align 8
  br label %131

131:                                              ; preds = %114, %1
  ret i32 0
}

declare dso_local %struct.TYPE_10__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_pix_fmt_count_planes(i32) #1

declare dso_local i8* @AV_CEIL_RSHIFT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
