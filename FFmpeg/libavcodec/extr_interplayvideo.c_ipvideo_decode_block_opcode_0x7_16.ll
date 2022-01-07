; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayvideo.c_ipvideo_decode_block_opcode_0x7_16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayvideo.c_ipvideo_decode_block_opcode_0x7_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @ipvideo_decode_block_opcode_0x7_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvideo_decode_block_opcode_0x7_16(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = call i8* @bytestream2_get_le16(i32* %15)
  %17 = ptrtoint i8* %16 to i32
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = call i8* @bytestream2_get_le16(i32* %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 32768
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %62, label %28

28:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %58, %28
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %61

32:                                               ; preds = %29
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = call i32 @bytestream2_get_byte(i32* %34)
  %36 = or i32 %35, 256
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %48, %32
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  %50 = lshr i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %37

51:                                               ; preds = %37
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %9, align 8
  br label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %29

61:                                               ; preds = %29
  br label %123

62:                                               ; preds = %2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = call i8* @bytestream2_get_le16(i32* %64)
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %119, %62
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 8
  br i1 %69, label %70, label %122

70:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %106, %70
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 8
  br i1 %73, label %74, label %111

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, 1
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %82, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %80, i64 %87
  store i32 %79, i32* %88, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %90, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %89, i64 %95
  store i32 %79, i32* %96, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  store i32 %79, i32* %101, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %79, i32* %105, align 4
  br label %106

106:                                              ; preds = %74
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 2
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %8, align 4
  %110 = lshr i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %71

111:                                              ; preds = %71
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = mul nsw i32 %114, 2
  %116 = load i32*, i32** %9, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32* %118, i32** %9, align 8
  br label %119

119:                                              ; preds = %111
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 2
  store i32 %121, i32* %6, align 4
  br label %67

122:                                              ; preds = %67
  br label %123

123:                                              ; preds = %122, %61
  ret i32 0
}

declare dso_local i8* @bytestream2_get_le16(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
