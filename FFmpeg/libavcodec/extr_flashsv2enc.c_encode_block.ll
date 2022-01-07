; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsv2enc.c_encode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsv2enc.c_encode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32, i32, i64, i32, i32 }

@COLORSPACE_15_7 = common dso_local global i32 0, align 4
@ZLIB_PRIME_COMPRESS_PREVIOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32*, i32, i32, i32, i32)* @encode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_block(%struct.TYPE_11__* %0, i32* %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = mul nsw i32 %29, 6
  store i32 %30, i32* %20, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %21, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @COLORSPACE_15_7, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %9
  %41 = load i32*, i32** %12, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @encode_15_7(i32* %41, %struct.TYPE_12__* %42, i32* %43, i32 %44, i32 %45)
  br label %52

47:                                               ; preds = %9
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @encode_bgr(%struct.TYPE_12__* %48, i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %40
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %109

57:                                               ; preds = %52
  %58 = load i32, i32* %20, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 4
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @encode_zlib(%struct.TYPE_12__* %61, i32 %64, i32* %66, i32 %67)
  store i32 %68, i32* %22, align 4
  %69 = load i32, i32* %22, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load i32, i32* %22, align 4
  store i32 %72, i32* %10, align 4
  br label %113

73:                                               ; preds = %57
  %74 = load i32, i32* %19, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %108, label %76

76:                                               ; preds = %73
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %79 = load i32*, i32** %21, align 8
  %80 = load i32, i32* %17, align 4
  %81 = call i32 @encode_zlibprime(%struct.TYPE_12__* %77, %struct.TYPE_12__* %78, i32* %79, i32* %20, i32 %80)
  store i32 %81, i32* %22, align 4
  %82 = load i32, i32* %22, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* %22, align 4
  store i32 %85, i32* %10, align 4
  br label %113

86:                                               ; preds = %76
  %87 = load i32, i32* %20, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = icmp ult i32 %87, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %86
  %93 = load i32, i32* %20, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %21, align 8
  %100 = load i32, i32* %20, align 4
  %101 = call i32 @memcpy(i32 %98, i32* %99, i32 %100)
  %102 = load i32, i32* @ZLIB_PRIME_COMPRESS_PREVIOUS, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %92, %86
  br label %108

108:                                              ; preds = %107, %73
  br label %112

109:                                              ; preds = %52
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 4
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %108
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %112, %84, %71
  %114 = load i32, i32* %10, align 4
  ret i32 %114
}

declare dso_local i32 @encode_15_7(i32*, %struct.TYPE_12__*, i32*, i32, i32) #1

declare dso_local i32 @encode_bgr(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @encode_zlib(%struct.TYPE_12__*, i32, i32*, i32) #1

declare dso_local i32 @encode_zlibprime(%struct.TYPE_12__*, %struct.TYPE_12__*, i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
