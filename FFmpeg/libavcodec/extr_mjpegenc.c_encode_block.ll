; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegenc.c_encode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegenc.c_encode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32, %struct.TYPE_5__, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { i32*, i32*, i32, i32, i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32)* @encode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_block(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %17, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp sle i32 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %30

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 1
  %29 = add nsw i32 %28, 1
  br label %30

30:                                               ; preds = %26, %25
  %31 = phi i32 [ 0, %25 ], [ %29, %26 ]
  store i32 %31, i32* %12, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %35, %42
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %63

46:                                               ; preds = %30
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %16, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ff_mjpeg_encode_dc(i32* %48, i32 %49, i32 %52, i32 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %18, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %19, align 8
  br label %80

63:                                               ; preds = %30
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %16, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ff_mjpeg_encode_dc(i32* %65, i32 %66, i32 %69, i32 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %18, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %19, align 8
  br label %80

80:                                               ; preds = %63, %46
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  store i32 0, i32* %14, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %15, align 4
  store i32 1, i32* %10, align 4
  br label %95

95:                                               ; preds = %170, %80
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %173

99:                                               ; preds = %95
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %11, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %99
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  br label %169

118:                                              ; preds = %99
  br label %119

119:                                              ; preds = %122, %118
  %120 = load i32, i32* %14, align 4
  %121 = icmp sge i32 %120, 16
  br i1 %121, label %122, label %134

122:                                              ; preds = %119
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load i32*, i32** %18, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 240
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %19, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 240
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @put_bits(i32* %124, i32 %127, i32 %130)
  %132 = load i32, i32* %14, align 4
  %133 = sub nsw i32 %132, 16
  store i32 %133, i32* %14, align 4
  br label %119

134:                                              ; preds = %119
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load i32, i32* %16, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %16, align 4
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %138, %134
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @av_log2_16bit(i32 %144)
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %14, align 4
  %148 = shl i32 %147, 4
  %149 = load i32, i32* %8, align 4
  %150 = or i32 %148, %149
  store i32 %150, i32* %9, align 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i32*, i32** %18, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %19, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @put_bits(i32* %152, i32 %157, i32 %162)
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @put_sbits(i32* %165, i32 %166, i32 %167)
  store i32 0, i32* %14, align 4
  br label %169

169:                                              ; preds = %143, %115
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %95

173:                                              ; preds = %95
  %174 = load i32, i32* %15, align 4
  %175 = icmp slt i32 %174, 63
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* %14, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %176, %173
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  %182 = load i32*, i32** %18, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %19, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @put_bits(i32* %181, i32 %184, i32 %187)
  br label %189

189:                                              ; preds = %179, %176
  ret void
}

declare dso_local i32 @ff_mjpeg_encode_dc(i32*, i32, i32, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @av_log2_16bit(i32) #1

declare dso_local i32 @put_sbits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
