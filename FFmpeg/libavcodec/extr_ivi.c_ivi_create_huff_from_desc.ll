; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi.c_ivi_create_huff_from_desc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi.c_ivi_create_huff_from_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@IVI_VLC_BITS = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@INIT_VLC_USE_NEW_STATIC = common dso_local global i32 0, align 4
@INIT_VLC_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32)* @ivi_create_huff_from_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivi_create_huff_from_desc(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [256 x i32], align 16
  %15 = alloca [256 x i32], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %110, %3
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %113

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = icmp ne i32 %31, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 1, %38
  %40 = sub nsw i32 %39, 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %47, %48
  %50 = shl i32 %40, %49
  store i32 %50, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %106, %22
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %109

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = icmp sge i32 %56, 256
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %109

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %60, %67
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %72
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IVI_VLC_BITS, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %59
  %81 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %81, i32* %4, align 4
  br label %129

82:                                               ; preds = %59
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @inv_bits(i32 %85, i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %92
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %82
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 %101
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %82
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %51

109:                                              ; preds = %58, %51
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %16

113:                                              ; preds = %16
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* @IVI_VLC_BITS, align 4
  %116 = load i32, i32* %8, align 4
  %117 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 0
  %118 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 0
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i32, i32* @INIT_VLC_USE_NEW_STATIC, align 4
  br label %124

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123, %121
  %125 = phi i32 [ %122, %121 ], [ 0, %123 ]
  %126 = load i32, i32* @INIT_VLC_LE, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @init_vlc(i32* %114, i32 %115, i32 %116, i32* %117, i32 1, i32 1, i32* %118, i32 2, i32 2, i32 %127)
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %124, %80
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @inv_bits(i32, i32) #1

declare dso_local i32 @init_vlc(i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
