; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_jpeg.c_cbs_jpeg_assemble_fragment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_jpeg.c_cbs_jpeg_assemble_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i64, %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32* }

@JPEG_MARKER_SOS = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@JPEG_MARKER_SOI = common dso_local global i32 0, align 4
@JPEG_MARKER_EOI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @cbs_jpeg_assemble_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_jpeg_assemble_fragment(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i64 4, i64* %8, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %62, %2
  %13 = load i32, i32* %11, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %65

18:                                               ; preds = %12
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %23
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %6, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 2, %27
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %8, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @JPEG_MARKER_SOS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %18
  store i64 0, i64* %10, align 8
  br label %38

38:                                               ; preds = %57, %37
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %39, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %38
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 255
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %53, %45
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %10, align 8
  br label %38

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60, %18
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %12

65:                                               ; preds = %12
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %68 = add i64 %66, %67
  %69 = call %struct.TYPE_7__* @av_buffer_alloc(i64 %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = icmp ne %struct.TYPE_7__* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %65
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = call i32 @AVERROR(i32 %77)
  store i32 %78, i32* %3, align 4
  br label %235

79:                                               ; preds = %65
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %7, align 8
  store i64 0, i64* %9, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load i64, i64* %9, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %9, align 8
  %88 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 255, i32* %88, align 4
  %89 = load i32, i32* @JPEG_MARKER_SOI, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %9, align 8
  %93 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 %89, i32* %93, align 4
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %206, %79
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %209

100:                                              ; preds = %94
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  store %struct.TYPE_5__* %106, %struct.TYPE_5__** %6, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = load i64, i64* %9, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %9, align 8
  %110 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32 255, i32* %110, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %7, align 8
  %115 = load i64, i64* %9, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %9, align 8
  %117 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 %113, i32* %117, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @JPEG_MARKER_SOS, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %141

123:                                              ; preds = %100
  %124 = load i32*, i32** %7, align 8
  %125 = load i64, i64* %9, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = call i32 @memcpy(i32* %126, i32* %129, i64 %133)
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* %9, align 8
  %140 = add i64 %139, %138
  store i64 %140, i64* %9, align 8
  br label %205

141:                                              ; preds = %100
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = call i64 @AV_RB16(i32* %144)
  store i64 %145, i64* %10, align 8
  %146 = load i64, i64* %10, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = icmp ule i64 %146, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @av_assert0(i32 %152)
  %154 = load i32*, i32** %7, align 8
  %155 = load i64, i64* %9, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* %10, align 8
  %161 = call i32 @memcpy(i32* %156, i32* %159, i64 %160)
  %162 = load i64, i64* %10, align 8
  %163 = load i64, i64* %9, align 8
  %164 = add i64 %163, %162
  store i64 %164, i64* %9, align 8
  br label %165

165:                                              ; preds = %201, %141
  %166 = load i64, i64* %10, align 8
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = icmp ult i64 %166, %170
  br i1 %171, label %172, label %204

172:                                              ; preds = %165
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* %10, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 255
  br i1 %179, label %180, label %189

180:                                              ; preds = %172
  %181 = load i32*, i32** %7, align 8
  %182 = load i64, i64* %9, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %9, align 8
  %184 = getelementptr inbounds i32, i32* %181, i64 %182
  store i32 255, i32* %184, align 4
  %185 = load i32*, i32** %7, align 8
  %186 = load i64, i64* %9, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %9, align 8
  %188 = getelementptr inbounds i32, i32* %185, i64 %186
  store i32 0, i32* %188, align 4
  br label %200

189:                                              ; preds = %172
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = load i64, i64* %10, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %7, align 8
  %197 = load i64, i64* %9, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %9, align 8
  %199 = getelementptr inbounds i32, i32* %196, i64 %197
  store i32 %195, i32* %199, align 4
  br label %200

200:                                              ; preds = %189, %180
  br label %201

201:                                              ; preds = %200
  %202 = load i64, i64* %10, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %10, align 8
  br label %165

204:                                              ; preds = %165
  br label %205

205:                                              ; preds = %204, %123
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %11, align 4
  br label %94

209:                                              ; preds = %94
  %210 = load i32*, i32** %7, align 8
  %211 = load i64, i64* %9, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %9, align 8
  %213 = getelementptr inbounds i32, i32* %210, i64 %211
  store i32 255, i32* %213, align 4
  %214 = load i32, i32* @JPEG_MARKER_EOI, align 4
  %215 = load i32*, i32** %7, align 8
  %216 = load i64, i64* %9, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %9, align 8
  %218 = getelementptr inbounds i32, i32* %215, i64 %216
  store i32 %214, i32* %218, align 4
  %219 = load i64, i64* %9, align 8
  %220 = load i64, i64* %8, align 8
  %221 = icmp eq i64 %219, %220
  %222 = zext i1 %221 to i32
  %223 = call i32 @av_assert0(i32 %222)
  %224 = load i32*, i32** %7, align 8
  %225 = load i64, i64* %8, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  %227 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %228 = call i32 @memset(i32* %226, i32 0, i64 %227)
  %229 = load i32*, i32** %7, align 8
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  store i32* %229, i32** %231, align 8
  %232 = load i64, i64* %8, align 8
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 2
  store i64 %232, i64* %234, align 8
  store i32 0, i32* %3, align 4
  br label %235

235:                                              ; preds = %209, %76
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local %struct.TYPE_7__* @av_buffer_alloc(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @AV_RB16(i32*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
