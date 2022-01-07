; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nuv.c_nuv_read_dts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nuv.c_nuv_read_dts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@HDRSIZE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AVINDEX_KEYFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32, i64*, i64)* @nuv_read_dts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nuv_read_dts(%struct.TYPE_6__* %0, i32 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %10, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %11, align 8
  %27 = load i32, i32* @HDRSIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %12, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %13, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i64*, i64** %8, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @SEEK_SET, align 4
  %35 = call i64 @avio_seek(i32* %31, i64 %33, i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i64, i64* @AV_NOPTS_VALUE, align 8
  store i64 %38, i64* %5, align 8
  store i32 1, i32* %20, align 4
  br label %135

39:                                               ; preds = %4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @nuv_resync(%struct.TYPE_6__* %40, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = load i64, i64* @AV_NOPTS_VALUE, align 8
  store i64 %45, i64* %5, align 8
  store i32 1, i32* %20, align 4
  br label %135

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %132, %46
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @avio_feof(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @avio_tell(i32* %52)
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %9, align 8
  %56 = icmp slt i64 %54, %55
  br label %57

57:                                               ; preds = %51, %47
  %58 = phi i1 [ false, %47 ], [ %56, %51 ]
  br i1 %58, label %59, label %133

59:                                               ; preds = %57
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* @HDRSIZE, align 4
  %62 = call i32 @avio_read(i32* %60, i32* %30, i32 %61)
  %63 = load i32, i32* @HDRSIZE, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i64, i64* @AV_NOPTS_VALUE, align 8
  store i64 %66, i64* %5, align 8
  store i32 1, i32* %20, align 4
  br label %135

67:                                               ; preds = %59
  %68 = getelementptr inbounds i32, i32* %30, i64 0
  %69 = load i32, i32* %68, align 16
  store i32 %69, i32* %14, align 4
  %70 = getelementptr inbounds i32, i32* %30, i64 8
  %71 = call i64 @AV_RL32(i32* %70)
  %72 = call i32 @PKTSIZE(i64 %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %14, align 4
  switch i32 %73, label %128 [
    i32 129, label %74
    i32 130, label %75
    i32 128, label %75
  ]

74:                                               ; preds = %67
  br label %132

75:                                               ; preds = %67, %67
  %76 = load i32, i32* %14, align 4
  %77 = icmp eq i32 %76, 128
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %17, align 4
  %82 = getelementptr inbounds i32, i32* %30, i64 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 0
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %16, align 4
  br label %90

86:                                               ; preds = %75
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %17, align 4
  store i32 1, i32* %16, align 4
  br label %90

90:                                               ; preds = %86, %78
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %127

94:                                               ; preds = %90
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @avio_tell(i32* %97)
  %99 = load i32, i32* @HDRSIZE, align 4
  %100 = sub nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %18, align 8
  %102 = getelementptr inbounds i32, i32* %30, i64 4
  %103 = call i64 @AV_RL32(i32* %102)
  store i64 %103, i64* %19, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i64, i64* %18, align 8
  %112 = load i64, i64* %19, align 8
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @HDRSIZE, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %94
  %119 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  br label %121

120:                                              ; preds = %94
  br label %121

121:                                              ; preds = %120, %118
  %122 = phi i32 [ %119, %118 ], [ 0, %120 ]
  %123 = call i32 @av_add_index_entry(i32 %110, i64 %111, i64 %112, i32 %115, i32 0, i32 %122)
  %124 = load i64, i64* %18, align 8
  %125 = load i64*, i64** %8, align 8
  store i64 %124, i64* %125, align 8
  %126 = load i64, i64* %19, align 8
  store i64 %126, i64* %5, align 8
  store i32 1, i32* %20, align 4
  br label %135

127:                                              ; preds = %90
  br label %128

128:                                              ; preds = %67, %127
  %129 = load i32*, i32** %11, align 8
  %130 = load i32, i32* %15, align 4
  %131 = call i32 @avio_skip(i32* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %74
  br label %47

133:                                              ; preds = %57
  %134 = load i64, i64* @AV_NOPTS_VALUE, align 8
  store i64 %134, i64* %5, align 8
  store i32 1, i32* %20, align 4
  br label %135

135:                                              ; preds = %133, %121, %65, %44, %37
  %136 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i64, i64* %5, align 8
  ret i64 %137
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @avio_seek(i32*, i64, i32) #2

declare dso_local i32 @nuv_resync(%struct.TYPE_6__*, i64) #2

declare dso_local i32 @avio_feof(i32*) #2

declare dso_local i32 @avio_tell(i32*) #2

declare dso_local i32 @avio_read(i32*, i32*, i32) #2

declare dso_local i32 @PKTSIZE(i64) #2

declare dso_local i64 @AV_RL32(i32*) #2

declare dso_local i32 @av_add_index_entry(i32, i64, i64, i32, i32, i32) #2

declare dso_local i32 @avio_skip(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
