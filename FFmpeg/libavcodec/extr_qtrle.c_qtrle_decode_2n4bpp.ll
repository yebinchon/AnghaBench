; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qtrle.c_qtrle_decode_2n4bpp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qtrle.c_qtrle_decode_2n4bpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32, i32)* @qtrle_decode_2n4bpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtrle_decode_2n4bpp(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [16 x i32], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32**, i32*** %29, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %14, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %39, %44
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 4
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 8, i32 16
  store i32 %49, i32* %16, align 4
  br label %50

50:                                               ; preds = %225, %4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  %53 = icmp ne i32 %51, 0
  br i1 %53, label %54, label %229

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = call i32 @bytestream2_get_byte(i32* %58)
  %60 = sub nsw i32 %59, 1
  %61 = mul nsw i32 %56, %60
  %62 = add nsw i32 %55, %61
  store i32 %62, i32* %11, align 4
  %63 = call i32 @CHECK_PIXEL_PTR(i32 0)
  br label %64

64:                                               ; preds = %224, %54
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = call i32 @bytestream2_get_byte(i32* %66)
  store i32 %67, i32* %9, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %225

69:                                               ; preds = %64
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = call i32 @bytestream2_get_bytes_left(i32* %71)
  %73 = icmp slt i32 %72, 1
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %229

75:                                               ; preds = %69
  %76 = load i32, i32* %9, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = call i32 @bytestream2_get_byte(i32* %81)
  %83 = sub nsw i32 %82, 1
  %84 = mul nsw i32 %79, %83
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %11, align 4
  %87 = call i32 @CHECK_PIXEL_PTR(i32 0)
  br label %224

88:                                               ; preds = %75
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %152

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %16, align 4
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %128, %91
  %97 = load i32, i32* %10, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %131

99:                                               ; preds = %96
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = call i32 @bytestream2_peek_byte(i32* %101)
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %8, align 4
  %105 = mul nsw i32 %103, %104
  %106 = and i32 %105, 7
  %107 = ashr i32 %102, %106
  %108 = load i32, i32* %8, align 4
  %109 = shl i32 1, %108
  %110 = sub nsw i32 %109, 1
  %111 = and i32 %107, %110
  %112 = load i32, i32* %16, align 4
  %113 = sub nsw i32 %112, 1
  %114 = load i32, i32* %10, align 4
  %115 = sub nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 %116
  store i32 %111, i32* %117, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %16, align 4
  %122 = ashr i32 %121, 2
  %123 = sub nsw i32 %122, 1
  %124 = and i32 %120, %123
  %125 = icmp eq i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @bytestream2_skip(i32* %119, i32 %126)
  br label %128

128:                                              ; preds = %99
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %10, align 4
  br label %96

131:                                              ; preds = %96
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %16, align 4
  %134 = mul nsw i32 %132, %133
  %135 = call i32 @CHECK_PIXEL_PTR(i32 %134)
  br label %136

136:                                              ; preds = %140, %131
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %9, align 4
  %139 = icmp ne i32 %137, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %136
  %141 = load i32*, i32** %14, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = bitcast [16 x i32]* %13 to i32**
  %146 = load i32, i32* %16, align 4
  %147 = call i32 @memcpy(i32* %144, i32** %145, i32 %146)
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %11, align 4
  br label %136

151:                                              ; preds = %136
  br label %223

152:                                              ; preds = %88
  %153 = load i32, i32* %9, align 4
  %154 = mul nsw i32 %153, 4
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %16, align 4
  %157 = ashr i32 %156, 2
  %158 = mul nsw i32 %155, %157
  %159 = call i32 @CHECK_PIXEL_PTR(i32 %158)
  br label %160

160:                                              ; preds = %221, %152
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %9, align 4
  %163 = icmp ne i32 %161, 0
  br i1 %163, label %164, label %222

164:                                              ; preds = %160
  %165 = load i32, i32* %8, align 4
  %166 = icmp eq i32 %165, 4
  br i1 %166, label %167, label %186

167:                                              ; preds = %164
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = call i32 @bytestream2_get_byte(i32* %169)
  store i32 %170, i32* %17, align 4
  %171 = load i32, i32* %17, align 4
  %172 = ashr i32 %171, 4
  %173 = and i32 %172, 15
  %174 = load i32*, i32** %14, align 8
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %11, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  store i32 %173, i32* %178, align 4
  %179 = load i32, i32* %17, align 4
  %180 = and i32 %179, 15
  %181 = load i32*, i32** %14, align 8
  %182 = load i32, i32* %11, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %11, align 4
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  store i32 %180, i32* %185, align 4
  br label %221

186:                                              ; preds = %164
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = call i32 @bytestream2_get_byte(i32* %188)
  store i32 %189, i32* %18, align 4
  %190 = load i32, i32* %18, align 4
  %191 = ashr i32 %190, 6
  %192 = and i32 %191, 3
  %193 = load i32*, i32** %14, align 8
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %11, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  store i32 %192, i32* %197, align 4
  %198 = load i32, i32* %18, align 4
  %199 = ashr i32 %198, 4
  %200 = and i32 %199, 3
  %201 = load i32*, i32** %14, align 8
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %11, align 4
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  store i32 %200, i32* %205, align 4
  %206 = load i32, i32* %18, align 4
  %207 = ashr i32 %206, 2
  %208 = and i32 %207, 3
  %209 = load i32*, i32** %14, align 8
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %11, align 4
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  store i32 %208, i32* %213, align 4
  %214 = load i32, i32* %18, align 4
  %215 = and i32 %214, 3
  %216 = load i32*, i32** %14, align 8
  %217 = load i32, i32* %11, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %11, align 4
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  store i32 %215, i32* %220, align 4
  br label %221

221:                                              ; preds = %186, %167
  br label %160

222:                                              ; preds = %160
  br label %223

223:                                              ; preds = %222, %151
  br label %224

224:                                              ; preds = %223, %78
  br label %64

225:                                              ; preds = %64
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* %6, align 4
  %228 = add nsw i32 %227, %226
  store i32 %228, i32* %6, align 4
  br label %50

229:                                              ; preds = %74, %50
  ret void
}

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @CHECK_PIXEL_PTR(i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_peek_byte(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
