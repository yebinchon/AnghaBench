; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_anatoliy.c_prores_encode_picture.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_anatoliy.c_prores_encode_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@DEFAULT_SLICE_MB_WIDTH = common dso_local global i32 0, align 4
@qp_start_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*, i32, i32, i32)* @prores_encode_picture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prores_encode_picture(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %14, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 15
  %40 = ashr i32 %39, 4
  store i32 %40, i32* %15, align 4
  store i32 0, i32* %29, align 4
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %30, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %6
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 15
  %51 = ashr i32 %50, 4
  store i32 %51, i32* %22, align 4
  %52 = load i32, i32* %22, align 4
  store i32 %52, i32* %24, align 4
  br label %72

53:                                               ; preds = %6
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  %61 = sdiv i32 %60, 2
  store i32 %61, i32* %23, align 4
  br label %67

62:                                               ; preds = %53
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %65, 2
  store i32 %66, i32* %23, align 4
  br label %67

67:                                               ; preds = %62, %56
  %68 = load i32, i32* %23, align 4
  %69 = add nsw i32 %68, 15
  %70 = ashr i32 %69, 4
  store i32 %70, i32* %22, align 4
  %71 = load i32, i32* %22, align 4
  store i32 %71, i32* %24, align 4
  br label %72

72:                                               ; preds = %67, %46
  %73 = load i32, i32* @DEFAULT_SLICE_MB_WIDTH, align 4
  %74 = call i32 @av_log2(i32 %73)
  store i32 %74, i32* %18, align 4
  br label %75

75:                                               ; preds = %89, %72
  %76 = load i32, i32* %18, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load i32, i32* %30, align 4
  %80 = load i32, i32* %18, align 4
  %81 = ashr i32 %79, %80
  %82 = load i32, i32* %29, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %29, align 4
  %84 = load i32, i32* %18, align 4
  %85 = shl i32 1, %84
  %86 = sub nsw i32 %85, 1
  %87 = load i32, i32* %30, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %30, align 4
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %18, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %18, align 4
  br label %75

92:                                               ; preds = %75
  %93 = load i32*, i32** @qp_start_table, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %21, align 4
  store i32 8, i32* %16, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %16, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %20, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32* %105, i32** %28, align 8
  %106 = load i32*, i32** %28, align 8
  %107 = load i32, i32* %29, align 4
  %108 = load i32, i32* %22, align 4
  %109 = mul nsw i32 %107, %108
  %110 = mul nsw i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  store i32* %112, i32** %27, align 8
  store i32 0, i32* %19, align 4
  br label %113

113:                                              ; preds = %199, %92
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* %22, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %202

117:                                              ; preds = %113
  store i32 0, i32* %31, align 4
  %118 = load i32, i32* @DEFAULT_SLICE_MB_WIDTH, align 4
  store i32 %118, i32* %32, align 4
  br label %119

119:                                              ; preds = %185, %117
  %120 = load i32, i32* %31, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %198

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %130, %123
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %31, align 4
  %127 = sub nsw i32 %125, %126
  %128 = load i32, i32* %32, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i32, i32* %32, align 4
  %132 = ashr i32 %131, 1
  store i32 %132, i32* %32, align 4
  br label %124

133:                                              ; preds = %124
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 15
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load i32, i32* %19, align 4
  %141 = load i32, i32* %24, align 4
  %142 = sub nsw i32 %141, 1
  %143 = icmp eq i32 %140, %142
  br label %144

144:                                              ; preds = %139, %133
  %145 = phi i1 [ false, %133 ], [ %143, %139 ]
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %25, align 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, 15
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %144
  %153 = load i32, i32* %31, align 4
  %154 = load i32, i32* %32, align 4
  %155 = add nsw i32 %153, %154
  %156 = load i32, i32* %15, align 4
  %157 = icmp eq i32 %155, %156
  br label %158

158:                                              ; preds = %152, %144
  %159 = phi i1 [ false, %144 ], [ %157, %152 ]
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %26, align 4
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = load i32, i32* %31, align 4
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %32, align 4
  %166 = load i32*, i32** %27, align 8
  %167 = load i32, i32* %20, align 4
  %168 = load i32, i32* %25, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %158
  %171 = load i32, i32* %26, align 4
  %172 = icmp ne i32 %171, 0
  br label %173

173:                                              ; preds = %170, %158
  %174 = phi i1 [ true, %158 ], [ %172, %170 ]
  %175 = zext i1 %174 to i32
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @encode_slice(%struct.TYPE_6__* %161, i32* %162, i32 %163, i32 %164, i32 %165, i32* %166, i32 %167, i32 %175, i32* %21, i32 %178, i32 %179)
  store i32 %180, i32* %17, align 4
  %181 = load i32, i32* %17, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %173
  %184 = load i32, i32* %17, align 4
  store i32 %184, i32* %7, align 4
  br label %235

185:                                              ; preds = %173
  %186 = load i32, i32* %17, align 4
  %187 = call i32 @bytestream_put_be16(i32** %28, i32 %186)
  %188 = load i32, i32* %17, align 4
  %189 = load i32*, i32** %27, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32* %191, i32** %27, align 8
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %20, align 4
  %194 = sub nsw i32 %193, %192
  store i32 %194, i32* %20, align 4
  %195 = load i32, i32* %32, align 4
  %196 = load i32, i32* %31, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %31, align 4
  br label %119

198:                                              ; preds = %119
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %19, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %19, align 4
  br label %113

202:                                              ; preds = %113
  %203 = load i32, i32* %16, align 4
  %204 = shl i32 %203, 3
  %205 = load i32*, i32** %10, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  store i32 %204, i32* %206, align 4
  %207 = load i32*, i32** %10, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  %209 = load i32*, i32** %27, align 8
  %210 = load i32*, i32** %10, align 8
  %211 = ptrtoint i32* %209 to i64
  %212 = ptrtoint i32* %210 to i64
  %213 = sub i64 %211, %212
  %214 = sdiv exact i64 %213, 4
  %215 = trunc i64 %214 to i32
  %216 = call i32 @AV_WB32(i32* %208, i32 %215)
  %217 = load i32*, i32** %10, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 5
  %219 = load i32, i32* %29, align 4
  %220 = load i32, i32* %22, align 4
  %221 = mul nsw i32 %219, %220
  %222 = call i32 @AV_WB16(i32* %218, i32 %221)
  %223 = load i32, i32* @DEFAULT_SLICE_MB_WIDTH, align 4
  %224 = call i32 @av_log2(i32 %223)
  %225 = shl i32 %224, 4
  %226 = load i32*, i32** %10, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 7
  store i32 %225, i32* %227, align 4
  %228 = load i32*, i32** %27, align 8
  %229 = load i32*, i32** %10, align 8
  %230 = ptrtoint i32* %228 to i64
  %231 = ptrtoint i32* %229 to i64
  %232 = sub i64 %230, %231
  %233 = sdiv exact i64 %232, 4
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %7, align 4
  br label %235

235:                                              ; preds = %202, %183
  %236 = load i32, i32* %7, align 4
  ret i32 %236
}

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @encode_slice(%struct.TYPE_6__*, i32*, i32, i32, i32, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @bytestream_put_be16(i32**, i32) #1

declare dso_local i32 @AV_WB32(i32*, i32) #1

declare dso_local i32 @AV_WB16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
