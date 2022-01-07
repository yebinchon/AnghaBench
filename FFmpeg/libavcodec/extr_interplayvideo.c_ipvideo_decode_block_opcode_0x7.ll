; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayvideo.c_ipvideo_decode_block_opcode_0x7.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayvideo.c_ipvideo_decode_block_opcode_0x7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"too little data for opcode 0x7\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @ipvideo_decode_block_opcode_0x7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvideo_decode_block_opcode_0x7(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = call i32 @bytestream2_get_bytes_left(i32* %11)
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AV_LOG_ERROR, align 4
  %19 = call i32 @av_log(i32 %17, i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %20, i32* %3, align 4
  br label %148

21:                                               ; preds = %2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = call i32 @bytestream2_get_byte(i32* %23)
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 %25, i8* %26, align 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = call i32 @bytestream2_get_byte(i32* %28)
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp sle i32 %34, %37
  br i1 %38, label %39, label %77

39:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %73, %39
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 8
  br i1 %42, label %43, label %76

43:                                               ; preds = %40
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = call i32 @bytestream2_get_byte(i32* %45)
  %47 = or i32 %46, 256
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %61, %43
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 1
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %58, align 8
  store i8 %56, i8* %59, align 1
  br label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %9, align 4
  %63 = lshr i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %48

64:                                               ; preds = %48
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = sext i32 %67 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %69, align 8
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %40

76:                                               ; preds = %40
  br label %147

77:                                               ; preds = %21
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = call i32 @bytestream2_get_le16(i32* %79)
  store i32 %80, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %143, %77
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 8
  br i1 %83, label %84, label %146

84:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %128, %84
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 8
  br i1 %87, label %88, label %133

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = and i32 %89, 1
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %98, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %96, i64 %103
  store i8 %93, i8* %104, align 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %108, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %107, i64 %113
  store i8 %93, i8* %114, align 1
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  store i8 %93, i8* %121, align 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 %93, i8* %127, align 1
  br label %128

128:                                              ; preds = %88
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 2
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %9, align 4
  %132 = lshr i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %85

133:                                              ; preds = %85
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = mul nsw i32 %136, 2
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = sext i32 %137 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %139, align 8
  br label %143

143:                                              ; preds = %133
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 2
  store i32 %145, i32* %7, align 4
  br label %81

146:                                              ; preds = %81
  br label %147

147:                                              ; preds = %146, %76
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %14
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
