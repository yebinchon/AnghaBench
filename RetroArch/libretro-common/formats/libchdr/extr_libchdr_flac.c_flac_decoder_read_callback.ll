; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_flac.c_flac_decoder_read_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_flac.c_flac_decoder_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@FLAC__STREAM_DECODER_READ_STATUS_END_OF_STREAM = common dso_local global i32 0, align 4
@FLAC__STREAM_DECODER_READ_STATUS_CONTINUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flac_decoder_read_callback(i8* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %7, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %20
  %29 = load i64*, i64** %6, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = sub i64 %30, %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = call i32 @MIN(i64 %32, i64 %39)
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %10, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @memcpy(i32* %44, i64 %51, i64 %52)
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, %57
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %28, %20, %3
  %63 = load i64, i64* %9, align 8
  %64 = load i64*, i64** %6, align 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %121

67:                                               ; preds = %62
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = icmp slt i64 %70, %77
  br i1 %78, label %79, label %121

79:                                               ; preds = %67
  %80 = load i64*, i64** %6, align 8
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = sub i64 %81, %82
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %89, %92
  %94 = sub nsw i64 %86, %93
  %95 = call i32 @MIN(i64 %83, i64 %94)
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %11, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %106, %109
  %111 = load i64, i64* %11, align 8
  %112 = call i32 @memcpy(i32* %99, i64 %110, i64 %111)
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* %9, align 8
  %115 = add i64 %114, %113
  store i64 %115, i64* %9, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, %116
  store i64 %120, i64* %118, align 8
  br label %121

121:                                              ; preds = %79, %67, %62
  %122 = load i64, i64* %9, align 8
  %123 = load i64*, i64** %6, align 8
  store i64 %122, i64* %123, align 8
  %124 = load i64*, i64** %6, align 8
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %8, align 8
  %127 = icmp ult i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load i32, i32* @FLAC__STREAM_DECODER_READ_STATUS_END_OF_STREAM, align 4
  br label %132

130:                                              ; preds = %121
  %131 = load i32, i32* @FLAC__STREAM_DECODER_READ_STATUS_CONTINUE, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  ret i32 %133
}

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
