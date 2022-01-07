; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpdec.c_read_huff_channels.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpdec.c_read_huff_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32**, i32**, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_8__*, i64* }
%struct.TYPE_8__ = type { i32, i32, i64 }

@huff_vlc = common dso_local global %struct.TYPE_9__* null, align 8
@VLC_BITS = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32, i32)* @read_huff_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_huff_channels(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %57, %4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %24
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 6
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %30
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @get_bits1(i32* %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add i32 %45, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %44, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %41, i32* %55, align 4
  br label %56

56:                                               ; preds = %39, %30
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %11, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %24

60:                                               ; preds = %24
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %153, %60
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ule i32 %65, %68
  br i1 %69, label %70, label %156

70:                                               ; preds = %64
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 5
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %75
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %13, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %14, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %15, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %15, align 4
  %91 = sub nsw i32 %89, %90
  store i32 %91, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %70
  %95 = load i32*, i32** %7, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** @huff_vlc, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @VLC_BITS, align 4
  %104 = load i32, i32* @VLC_BITS, align 4
  %105 = add nsw i32 9, %104
  %106 = sub nsw i32 %105, 1
  %107 = load i32, i32* @VLC_BITS, align 4
  %108 = sdiv i32 %106, %107
  %109 = call i32 @get_vlc2(i32* %95, i32 %102, i32 %103, i32 %108)
  store i32 %109, i32* %17, align 4
  br label %110

110:                                              ; preds = %94, %70
  %111 = load i32, i32* %17, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %114, i32* %5, align 4
  br label %157

115:                                              ; preds = %110
  %116 = load i32, i32* %16, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %16, align 4
  %121 = shl i32 %119, %120
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @get_bits(i32* %122, i32 %123)
  %125 = add nsw i32 %121, %124
  store i32 %125, i32* %17, align 4
  br label %126

126:                                              ; preds = %118, %115
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %129
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* %15, align 4
  %135 = shl i32 1, %134
  %136 = load i32, i32* %17, align 4
  %137 = mul nsw i32 %136, %135
  store i32 %137, i32* %17, align 4
  %138 = load i32, i32* %17, align 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32**, i32*** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add i32 %142, %145
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %141, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %138, i32* %152, align 4
  br label %153

153:                                              ; preds = %126
  %154 = load i32, i32* %12, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %64

156:                                              ; preds = %64
  store i32 0, i32* %5, align 4
  br label %157

157:                                              ; preds = %156, %113
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
