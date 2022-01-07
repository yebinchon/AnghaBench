; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_find_sample.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_find_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@MP4_SAMPLE_TABLE_STTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i64, i32*, i32, i64*)* @mp4_find_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mp4_find_sample(%struct.TYPE_14__* %0, i64 %1, i32* %2, i32 %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %20, i64 %21
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %11, align 8
  %28 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %28, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %16, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @VC_CONTAINER_PARAM_UNUSED(i32* %31)
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %33, %36
  %38 = sdiv i32 %37, 1000000
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %39, %42
  %44 = sdiv i32 %43, 1000000
  store i32 %44, i32* %16, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = load i64, i64* @MP4_SAMPLE_TABLE_STTS, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @SEEK(%struct.TYPE_14__* %45, i32 %52)
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %5
  br label %130

58:                                               ; preds = %5
  store i32 0, i32* %17, align 4
  br label %59

59:                                               ; preds = %126, %58
  %60 = load i32, i32* %17, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = load i64, i64* @MP4_SAMPLE_TABLE_STTS, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ult i32 %60, %67
  br i1 %68, label %69, label %129

69:                                               ; preds = %59
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = call i8* @_READ_U32(%struct.TYPE_14__* %70)
  %72 = ptrtoint i8* %71 to i64
  store i64 %72, i64* %14, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %74 = call i8* @_READ_U32(%struct.TYPE_14__* %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %15, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = call i64 @STREAM_STATUS(%struct.TYPE_14__* %76)
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %129

82:                                               ; preds = %69
  %83 = load i64, i64* %14, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %83, %85
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp ule i64 %86, %88
  br i1 %89, label %90, label %110

90:                                               ; preds = %82
  %91 = load i64, i64* %14, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %91, %93
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = sub i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %9, align 4
  %99 = load i64, i64* %14, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 %99, %101
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = sub i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %16, align 4
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* %13, align 8
  %109 = add i64 %108, %107
  store i64 %109, i64* %13, align 8
  br label %126

110:                                              ; preds = %82
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  br label %129

114:                                              ; preds = %110
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %9, align 4
  %117 = sdiv i32 %116, %115
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %16, align 4
  %120 = sdiv i32 %119, %118
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %16, align 4
  %123 = call i64 @MAX(i32 %121, i32 %122)
  %124 = load i64, i64* %13, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %13, align 8
  br label %129

126:                                              ; preds = %90
  %127 = load i32, i32* %17, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %17, align 4
  br label %59

129:                                              ; preds = %114, %113, %81, %59
  br label %130

130:                                              ; preds = %129, %57
  %131 = load i64*, i64** %10, align 8
  %132 = icmp ne i64* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i64, i64* %12, align 8
  %135 = load i64*, i64** %10, align 8
  store i64 %134, i64* %135, align 8
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i64, i64* %13, align 8
  ret i64 %137
}

declare dso_local i32 @VC_CONTAINER_PARAM_UNUSED(i32*) #1

declare dso_local i64 @SEEK(%struct.TYPE_14__*, i32) #1

declare dso_local i8* @_READ_U32(%struct.TYPE_14__*) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_14__*) #1

declare dso_local i64 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
