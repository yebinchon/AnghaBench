; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/jpeg/extr_rjpeg.c_rjpeg_jpeg_decode_block.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/jpeg/extr_rjpeg.c_rjpeg_jpeg_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@FAST_BITS = common dso_local global i32 0, align 4
@rjpeg_jpeg_dezigzag = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i16*, i32*, i32*, i32*, i32, i32*)* @rjpeg_jpeg_decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rjpeg_jpeg_decode_block(%struct.TYPE_8__* %0, i16* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i16* %1, i16** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %19, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %32

29:                                               ; preds = %7
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = call i32 @rjpeg_grow_buffer_unsafe(%struct.TYPE_8__* %30)
  br label %32

32:                                               ; preds = %29, %7
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @rjpeg_jpeg_huff_decode(%struct.TYPE_8__* %33, i32* %34)
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %189

39:                                               ; preds = %32
  %40 = load i16*, i16** %10, align 8
  %41 = call i32 @memset(i16* %40, i32 0, i32 128)
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %46 = load i32, i32* %18, align 4
  %47 = call i32 @rjpeg_extend_receive(%struct.TYPE_8__* %45, i32 %46)
  store i32 %47, i32* %19, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %19, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32 %59, i32* %66, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32*, i32** %15, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = trunc i32 %71 to i16
  %73 = load i16*, i16** %10, align 8
  %74 = getelementptr inbounds i16, i16* %73, i64 0
  store i16 %72, i16* %74, align 2
  store i32 1, i32* %17, align 4
  br label %75

75:                                               ; preds = %185, %48
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %78, 16
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %82 = call i32 @rjpeg_grow_buffer_unsafe(%struct.TYPE_8__* %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @FAST_BITS, align 4
  %88 = sub nsw i32 32, %87
  %89 = ashr i32 %86, %88
  %90 = load i32, i32* @FAST_BITS, align 4
  %91 = shl i32 1, %90
  %92 = sub nsw i32 %91, 1
  %93 = and i32 %89, %92
  store i32 %93, i32* %21, align 4
  %94 = load i32*, i32** %13, align 8
  %95 = load i32, i32* %21, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %22, align 4
  %99 = load i32, i32* %22, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %138

101:                                              ; preds = %83
  %102 = load i32, i32* %22, align 4
  %103 = ashr i32 %102, 4
  %104 = and i32 %103, 15
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %22, align 4
  %108 = and i32 %107, 15
  store i32 %108, i32* %23, align 4
  %109 = load i32, i32* %23, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* %23, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load i32*, i32** @rjpeg_jpeg_dezigzag, align 8
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %17, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %20, align 4
  %125 = load i32, i32* %22, align 4
  %126 = ashr i32 %125, 8
  %127 = load i32*, i32** %15, align 8
  %128 = load i32, i32* %20, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %126, %131
  %133 = trunc i32 %132 to i16
  %134 = load i16*, i16** %10, align 8
  %135 = load i32, i32* %20, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i16, i16* %134, i64 %136
  store i16 %133, i16* %137, align 2
  br label %184

138:                                              ; preds = %83
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %140 = load i32*, i32** %12, align 8
  %141 = call i32 @rjpeg_jpeg_huff_decode(%struct.TYPE_8__* %139, i32* %140)
  store i32 %141, i32* %24, align 4
  %142 = load i32, i32* %24, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i32 0, i32* %8, align 4
  br label %189

145:                                              ; preds = %138
  %146 = load i32, i32* %24, align 4
  %147 = and i32 %146, 15
  store i32 %147, i32* %23, align 4
  %148 = load i32, i32* %24, align 4
  %149 = ashr i32 %148, 4
  store i32 %149, i32* %22, align 4
  %150 = load i32, i32* %23, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load i32, i32* %24, align 4
  %154 = icmp ne i32 %153, 240
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  br label %188

156:                                              ; preds = %152
  %157 = load i32, i32* %17, align 4
  %158 = add nsw i32 %157, 16
  store i32 %158, i32* %17, align 4
  br label %183

159:                                              ; preds = %145
  %160 = load i32, i32* %22, align 4
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %17, align 4
  %163 = load i32*, i32** @rjpeg_jpeg_dezigzag, align 8
  %164 = load i32, i32* %17, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %17, align 4
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %20, align 4
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %170 = load i32, i32* %23, align 4
  %171 = call i32 @rjpeg_extend_receive(%struct.TYPE_8__* %169, i32 %170)
  %172 = load i32*, i32** %15, align 8
  %173 = load i32, i32* %20, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 %171, %176
  %178 = trunc i32 %177 to i16
  %179 = load i16*, i16** %10, align 8
  %180 = load i32, i32* %20, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i16, i16* %179, i64 %181
  store i16 %178, i16* %182, align 2
  br label %183

183:                                              ; preds = %159, %156
  br label %184

184:                                              ; preds = %183, %101
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %17, align 4
  %187 = icmp slt i32 %186, 64
  br i1 %187, label %75, label %188

188:                                              ; preds = %185, %155
  store i32 1, i32* %8, align 4
  br label %189

189:                                              ; preds = %188, %144, %38
  %190 = load i32, i32* %8, align 4
  ret i32 %190
}

declare dso_local i32 @rjpeg_grow_buffer_unsafe(%struct.TYPE_8__*) #1

declare dso_local i32 @rjpeg_jpeg_huff_decode(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @memset(i16*, i32, i32) #1

declare dso_local i32 @rjpeg_extend_receive(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
