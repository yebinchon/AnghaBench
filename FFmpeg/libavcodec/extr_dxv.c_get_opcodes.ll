; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_get_opcodes.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_get_opcodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32*, i32, i32)* @get_opcodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_opcodes(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1024 x %struct.TYPE_8__], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %26, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds [1024 x %struct.TYPE_8__], [1024 x %struct.TYPE_8__]* %12, i64 0, i64 0
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @fill_optable(i32* %31, %struct.TYPE_8__* %32, i32 %33)
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %18, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* %18, align 4
  store i32 %38, i32* %6, align 4
  br label %137

39:                                               ; preds = %5
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = call i32 @bytestream2_get_le32(%struct.TYPE_9__* %40)
  store i32 %41, i32* %21, align 4
  %42 = load i32, i32* %21, align 4
  %43 = add nsw i32 %42, 7
  %44 = ashr i32 %43, 3
  %45 = sub nsw i32 %44, 4
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* %22, align 4
  %47 = icmp ule i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %39
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_9__* %49)
  %51 = load i32, i32* %22, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48, %39
  %54 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %54, i32* %6, align 4
  br label %137

55:                                               ; preds = %48
  %56 = load i32, i32* %22, align 4
  store i32 %56, i32* %24, align 4
  %57 = load i32*, i32** %26, align 8
  %58 = load i32, i32* %22, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @AV_RL32(i32* %60)
  store i32 %61, i32* %25, align 4
  %62 = load i32, i32* %21, align 4
  %63 = and i32 %62, 255
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %64, 7
  %66 = add nsw i32 %65, 15
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = sub nsw i32 32, %67
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %25, align 4
  %70 = load i32, i32* %17, align 4
  %71 = lshr i32 %69, %70
  %72 = and i32 %71, 1023
  store i32 %72, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %73

73:                                               ; preds = %127, %55
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %130

77:                                               ; preds = %73
  %78 = load i32, i32* %20, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [1024 x %struct.TYPE_8__], [1024 x %struct.TYPE_8__]* %12, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %19, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* %20, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [1024 x %struct.TYPE_8__], [1024 x %struct.TYPE_8__]* %12, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %25, align 4
  %96 = load i32, i32* %16, align 4
  %97 = shl i32 %95, %96
  %98 = lshr i32 %97, 1
  %99 = load i32, i32* %15, align 4
  %100 = sub nsw i32 31, %99
  %101 = lshr i32 %98, %100
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %24, align 4
  %103 = load i32, i32* %13, align 4
  %104 = ashr i32 %103, 3
  %105 = sub i32 %102, %104
  store i32 %105, i32* %23, align 4
  %106 = load i32, i32* %13, align 4
  %107 = and i32 %106, 7
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %20, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [1024 x %struct.TYPE_8__], [1024 x %struct.TYPE_8__]* %12, i64 0, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %108, %113
  store i32 %114, i32* %20, align 4
  %115 = load i32, i32* %23, align 4
  store i32 %115, i32* %24, align 4
  %116 = load i32, i32* %24, align 4
  %117 = load i32, i32* %22, align 4
  %118 = icmp ugt i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %77
  %120 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %120, i32* %6, align 4
  br label %137

121:                                              ; preds = %77
  %122 = load i32*, i32** %26, align 8
  %123 = load i32, i32* %24, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = call i32 @AV_RL32(i32* %125)
  store i32 %126, i32* %25, align 4
  br label %127

127:                                              ; preds = %121
  %128 = load i32, i32* %19, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %19, align 4
  br label %73

130:                                              ; preds = %73
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %132 = load i32, i32* %21, align 4
  %133 = add nsw i32 %132, 7
  %134 = ashr i32 %133, 3
  %135 = sub nsw i32 %134, 4
  %136 = call i32 @bytestream2_skip(%struct.TYPE_9__* %131, i32 %135)
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %130, %119, %53, %37
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @fill_optable(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @bytestream2_get_le32(%struct.TYPE_9__*) #1

declare dso_local i32 @bytestream2_get_bytes_left(%struct.TYPE_9__*) #1

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @bytestream2_skip(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
