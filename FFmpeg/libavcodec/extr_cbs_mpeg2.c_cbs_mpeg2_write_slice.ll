; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_mpeg2.c_cbs_mpeg2_write_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_mpeg2.c_cbs_mpeg2_write_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32*)* @cbs_mpeg2_write_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_mpeg2_write_slice(i32* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = call i32 @cbs_mpeg2_write_slice_header(i32* %15, i32* %16, i32* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %154

24:                                               ; preds = %3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %153

29:                                               ; preds = %24
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 7
  %37 = sdiv i32 %36, 8
  %38 = sub nsw i32 %32, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %10, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  store i32* %48, i32** %11, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %29
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 8, %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %57, %60
  br label %62

62:                                               ; preds = %53, %29
  %63 = phi i1 [ false, %29 ], [ %61, %53 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @av_assert0(i32 %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %68, 8
  %70 = add nsw i32 %69, 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @put_bits_left(i32* %71)
  %73 = icmp sgt i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i32, i32* @ENOSPC, align 4
  %76 = call i32 @AVERROR(i32 %75)
  store i32 %76, i32* %4, align 4
  br label %154

77:                                               ; preds = %62
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = srem i32 %80, 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %77
  %84 = load i32*, i32** %7, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = srem i32 %87, 8
  %89 = sub nsw i32 8, %88
  %90 = load i32*, i32** %11, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %11, align 8
  %92 = load i32, i32* %90, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = srem i32 %95, 8
  %97 = sub nsw i32 8, %96
  %98 = call i32 @MAX_UINT_BITS(i32 %97)
  %99 = and i32 %92, %98
  %100 = call i32 @put_bits(i32* %84, i32 %89, i32 %99)
  br label %101

101:                                              ; preds = %83, %77
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @put_bits_count(i32* %102)
  %104 = srem i32 %103, 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @flush_put_bits(i32* %107)
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @put_bits_ptr(i32* %109)
  %111 = load i32*, i32** %11, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @memcpy(i32 %110, i32* %111, i64 %112)
  %114 = load i32*, i32** %7, align 8
  %115 = load i64, i64* %10, align 8
  %116 = call i32 @skip_put_bytes(i32* %114, i64 %115)
  br label %152

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %126, %117
  %119 = load i64, i64* %10, align 8
  %120 = icmp ugt i64 %119, 3
  br i1 %120, label %121, label %131

121:                                              ; preds = %118
  %122 = load i32*, i32** %7, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = call i32 @AV_RB32(i32* %123)
  %125 = call i32 @put_bits32(i32* %122, i32 %124)
  br label %126

126:                                              ; preds = %121
  %127 = load i64, i64* %10, align 8
  %128 = sub i64 %127, 4
  store i64 %128, i64* %10, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 4
  store i32* %130, i32** %11, align 8
  br label %118

131:                                              ; preds = %118
  br label %132

132:                                              ; preds = %140, %131
  %133 = load i64, i64* %10, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i32*, i32** %7, align 8
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @put_bits(i32* %136, i32 8, i32 %138)
  br label %140

140:                                              ; preds = %135
  %141 = load i64, i64* %10, align 8
  %142 = add i64 %141, -1
  store i64 %142, i64* %10, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %11, align 8
  br label %132

145:                                              ; preds = %132
  %146 = load i32*, i32** %7, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @put_bits_count(i32* %147)
  %149 = srem i32 %148, 8
  %150 = sub nsw i32 8, %149
  %151 = call i32 @put_bits(i32* %146, i32 %150, i32 0)
  br label %152

152:                                              ; preds = %145, %106
  br label %153

153:                                              ; preds = %152, %24
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %153, %74, %22
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @cbs_mpeg2_write_slice_header(i32*, i32*, i32*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @put_bits_left(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @MAX_UINT_BITS(i32) #1

declare dso_local i32 @put_bits_count(i32*) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @put_bits_ptr(i32*) #1

declare dso_local i32 @skip_put_bytes(i32*, i64) #1

declare dso_local i32 @put_bits32(i32*, i32) #1

declare dso_local i32 @AV_RB32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
