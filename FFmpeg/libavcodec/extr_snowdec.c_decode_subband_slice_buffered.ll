; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowdec.c_decode_subband_slice_buffered.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowdec.c_decode_subband_slice_buffered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_7__ = type { i32, i64, i32, i32, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@QROOT = common dso_local global i32 0, align 4
@ff_qexp = common dso_local global i32* null, align 8
@QSHIFT = common dso_local global i32 0, align 4
@QBIAS_SHIFT = common dso_local global i32 0, align 4
@LOSSLESS_QLOG = common dso_local global i32 0, align 4
@QEXPSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i32, i32, i32*)* @decode_subband_slice_buffered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_subband_slice_buffered(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %29, %32
  %34 = load i32, i32* @QROOT, align 4
  %35 = mul nsw i32 %34, 16
  %36 = call i32 @av_clip(i32 %33, i32 0, i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32*, i32** @ff_qexp, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @QROOT, align 4
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %38, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @QSHIFT, align 4
  %47 = ashr i32 %45, %46
  %48 = shl i32 %44, %47
  store i32 %48, i32* %16, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %16, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* @QBIAS_SHIFT, align 4
  %55 = ashr i32 %53, %54
  store i32 %55, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %6
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @LOSSLESS_QLOG, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63, %6
  store i32 0, i32* %17, align 4
  %70 = load i32, i32* @QEXPSHIFT, align 4
  %71 = shl i32 1, %70
  store i32 %71, i32* %16, align 4
  br label %72

72:                                               ; preds = %69, %63
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %18, align 4
  br label %79

79:                                               ; preds = %75, %72
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %171, %79
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %174

85:                                               ; preds = %81
  store i32 0, i32* %19, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = mul nsw i32 %87, %90
  %92 = sext i32 %91 to i64
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = call i32* @slice_buffer_get_line(i32* %86, i64 %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  store i32* %102, i32** %21, align 8
  %103 = load i32*, i32** %21, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = trunc i64 %108 to i32
  %110 = call i32 @memset(i32* %103, i32 0, i32 %109)
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %20, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32, i32* %18, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %18, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %19, align 4
  br label %128

128:                                              ; preds = %132, %85
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %170

132:                                              ; preds = %128
  %133 = load i32, i32* %20, align 4
  %134 = ashr i32 %133, 1
  %135 = load i32, i32* %16, align 4
  %136 = mul i32 %134, %135
  %137 = load i32, i32* %17, align 4
  %138 = add i32 %136, %137
  %139 = load i32, i32* @QEXPSHIFT, align 4
  %140 = ashr i32 %138, %139
  store i32 %140, i32* %22, align 4
  %141 = load i32, i32* %20, align 4
  %142 = and i32 %141, 1
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %23, align 4
  %144 = load i32, i32* %22, align 4
  %145 = load i32, i32* %23, align 4
  %146 = xor i32 %144, %145
  %147 = load i32, i32* %23, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load i32*, i32** %21, align 8
  %150 = load i32, i32* %19, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %148, i32* %152, align 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i32, i32* %18, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %20, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = load i32, i32* %18, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %18, align 4
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %19, align 4
  br label %128

170:                                              ; preds = %128
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %14, align 4
  br label %81

174:                                              ; preds = %81
  %175 = load i32, i32* %18, align 4
  %176 = load i32*, i32** %12, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  store i32 %175, i32* %177, align 4
  ret void
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32* @slice_buffer_get_line(i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
