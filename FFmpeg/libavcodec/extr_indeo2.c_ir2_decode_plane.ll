; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_indeo2.c_ir2_decode_plane.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_indeo2.c_ir2_decode_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@IR2_CODES = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32*, i32, i32*)* @ir2_decode_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir2_decode_plane(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %16, align 4
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* @IR2_CODES, align 4
  %28 = sub nsw i32 %27, 127
  %29 = mul nsw i32 2, %28
  %30 = sdiv i32 %26, %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @get_bits_left(i32* %32)
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %23, %6
  %36 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %36, i32* %7, align 4
  br label %232

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %104, %37
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %105

42:                                               ; preds = %38
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @ir2_get_code(i32* %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp sge i32 %46, 128
  br i1 %47, label %48, label %75

48:                                               ; preds = %42
  %49 = load i32, i32* %17, align 4
  %50 = sub nsw i32 %49, 127
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = mul nsw i32 %52, 2
  %54 = add nsw i32 %51, %53
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %58, i32* %7, align 4
  br label %232

59:                                               ; preds = %48
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %71, %59
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %17, align 4
  %63 = mul nsw i32 %62, 2
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %16, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 128, i32* %70, align 4
  br label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %60

74:                                               ; preds = %60
  br label %104

75:                                               ; preds = %42
  %76 = load i32, i32* %17, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %79, i32* %7, align 4
  br label %232

80:                                               ; preds = %75
  %81 = load i32*, i32** %13, align 8
  %82 = load i32, i32* %17, align 4
  %83 = mul nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %86, i32* %91, align 4
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %17, align 4
  %94 = mul nsw i32 %93, 2
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %16, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  store i32 %98, i32* %103, align 4
  br label %104

104:                                              ; preds = %80, %74
  br label %38

105:                                              ; preds = %38
  %106 = load i32, i32* %12, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %11, align 8
  store i32 1, i32* %15, align 4
  br label %110

110:                                              ; preds = %228, %105
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %231

114:                                              ; preds = %110
  store i32 0, i32* %16, align 4
  br label %115

115:                                              ; preds = %222, %114
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %223

119:                                              ; preds = %115
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = call i32 @get_bits_left(i32* %121)
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %125, i32* %7, align 4
  br label %232

126:                                              ; preds = %119
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = call i32 @ir2_get_code(i32* %128)
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %18, align 4
  %131 = icmp sge i32 %130, 128
  br i1 %131, label %132, label %167

132:                                              ; preds = %126
  %133 = load i32, i32* %18, align 4
  %134 = sub nsw i32 %133, 127
  store i32 %134, i32* %18, align 4
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %18, align 4
  %137 = mul nsw i32 %136, 2
  %138 = add nsw i32 %135, %137
  %139 = load i32, i32* %9, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %132
  %142 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %142, i32* %7, align 4
  br label %232

143:                                              ; preds = %132
  store i32 0, i32* %14, align 4
  br label %144

144:                                              ; preds = %163, %143
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %18, align 4
  %147 = mul nsw i32 %146, 2
  %148 = icmp slt i32 %145, %147
  br i1 %148, label %149, label %166

149:                                              ; preds = %144
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* %12, align 4
  %153 = sub nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %150, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %11, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 %156, i32* %160, align 4
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %16, align 4
  br label %163

163:                                              ; preds = %149
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %14, align 4
  br label %144

166:                                              ; preds = %144
  br label %222

167:                                              ; preds = %126
  %168 = load i32, i32* %18, align 4
  %169 = icmp sle i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %171, i32* %7, align 4
  br label %232

172:                                              ; preds = %167
  %173 = load i32*, i32** %11, align 8
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* %12, align 4
  %176 = sub nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %13, align 8
  %181 = load i32, i32* %18, align 4
  %182 = mul nsw i32 %181, 2
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = sub nsw i32 %185, 128
  %187 = add nsw i32 %179, %186
  store i32 %187, i32* %19, align 4
  %188 = load i32, i32* %19, align 4
  %189 = call i32 @av_clip_uint8(i32 %188)
  store i32 %189, i32* %19, align 4
  %190 = load i32, i32* %19, align 4
  %191 = load i32*, i32** %11, align 8
  %192 = load i32, i32* %16, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %190, i32* %194, align 4
  %195 = load i32, i32* %16, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %16, align 4
  %197 = load i32*, i32** %11, align 8
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* %12, align 4
  %200 = sub nsw i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %197, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %13, align 8
  %205 = load i32, i32* %18, align 4
  %206 = mul nsw i32 %205, 2
  %207 = add nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %204, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 %210, 128
  %212 = add nsw i32 %203, %211
  store i32 %212, i32* %19, align 4
  %213 = load i32, i32* %19, align 4
  %214 = call i32 @av_clip_uint8(i32 %213)
  store i32 %214, i32* %19, align 4
  %215 = load i32, i32* %19, align 4
  %216 = load i32*, i32** %11, align 8
  %217 = load i32, i32* %16, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 %215, i32* %219, align 4
  %220 = load i32, i32* %16, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %16, align 4
  br label %222

222:                                              ; preds = %172, %166
  br label %115

223:                                              ; preds = %115
  %224 = load i32, i32* %12, align 4
  %225 = load i32*, i32** %11, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  store i32* %227, i32** %11, align 8
  br label %228

228:                                              ; preds = %223
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %15, align 4
  br label %110

231:                                              ; preds = %110
  store i32 0, i32* %7, align 4
  br label %232

232:                                              ; preds = %231, %170, %141, %124, %78, %57, %35
  %233 = load i32, i32* %7, align 4
  ret i32 %233
}

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @ir2_get_code(i32*) #1

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
