; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsvenc.c_encode_bitstream.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsvenc.c_encode_bitstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32* }

@Z_OK = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"error while compressing block %dx%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"buf_pos = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*, i32*, i32, i32, i32, i32*, i32*)* @encode_bitstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_bitstream(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %26, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @init_put_bits(i32* %17, i32* %34, i32 %35)
  %37 = load i32, i32* %13, align 4
  %38 = sdiv i32 %37, 16
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @put_bits(i32* %17, i32 4, i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @put_bits(i32* %17, i32 12, i32 %43)
  %45 = load i32, i32* %14, align 4
  %46 = sdiv i32 %45, 16
  %47 = sub nsw i32 %46, 1
  %48 = call i32 @put_bits(i32* %17, i32 4, i32 %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @put_bits(i32* %17, i32 12, i32 %51)
  %53 = call i32 @flush_put_bits(i32* %17)
  store i32 4, i32* %24, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %13, align 4
  %58 = sdiv i32 %56, %57
  store i32 %58, i32* %18, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %13, align 4
  %63 = srem i32 %61, %62
  store i32 %63, i32* %20, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %14, align 4
  %68 = sdiv i32 %66, %67
  store i32 %68, i32* %19, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %14, align 4
  %73 = srem i32 %71, %72
  store i32 %73, i32* %21, align 4
  store i32 0, i32* %23, align 4
  br label %74

74:                                               ; preds = %207, %8
  %75 = load i32, i32* %23, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %21, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 0
  %81 = add nsw i32 %76, %80
  %82 = icmp slt i32 %75, %81
  br i1 %82, label %83, label %210

83:                                               ; preds = %74
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* %14, align 4
  %86 = mul nsw i32 %84, %85
  store i32 %86, i32* %27, align 4
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* %19, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %14, align 4
  br label %94

92:                                               ; preds = %83
  %93 = load i32, i32* %21, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  store i32 %95, i32* %28, align 4
  store i32 0, i32* %22, align 4
  br label %96

96:                                               ; preds = %203, %94
  %97 = load i32, i32* %22, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %20, align 4
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 1, i32 0
  %103 = add nsw i32 %98, %102
  %104 = icmp slt i32 %97, %103
  br i1 %104, label %105, label %206

105:                                              ; preds = %96
  %106 = load i32, i32* %22, align 4
  %107 = load i32, i32* %13, align 4
  %108 = mul nsw i32 %106, %107
  store i32 %108, i32* %29, align 4
  %109 = load i32, i32* %22, align 4
  %110 = load i32, i32* %18, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32, i32* %13, align 4
  br label %116

114:                                              ; preds = %105
  %115 = load i32, i32* %20, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  store i32 %117, i32* %30, align 4
  %118 = load i32, i32* @Z_OK, align 4
  store i32 %118, i32* %31, align 4
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* %24, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32* %122, i32** %32, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %27, align 4
  %135 = load i32, i32* %28, align 4
  %136 = add nsw i32 %134, %135
  %137 = add nsw i32 %136, 1
  %138 = sub nsw i32 %133, %137
  %139 = load i32, i32* %29, align 4
  %140 = load i32, i32* %28, align 4
  %141 = load i32, i32* %30, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %15, align 8
  %148 = call i32 @copy_region_enc(i32 %127, i32 %130, i32 %138, i32 %139, i32 %140, i32 %141, i32 %146, i32* %147)
  store i32 %148, i32* %25, align 4
  %149 = load i32, i32* %25, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %116
  %152 = load i32*, i32** %16, align 8
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %196

155:                                              ; preds = %151, %116
  %156 = load i32, i32* %13, align 4
  %157 = mul nsw i32 3, %156
  %158 = load i32, i32* %14, align 4
  %159 = mul nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %33, align 8
  %161 = load i32*, i32** %32, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %30, align 4
  %167 = mul nsw i32 3, %166
  %168 = load i32, i32* %28, align 4
  %169 = mul nsw i32 %167, %168
  %170 = call i32 @compress2(i32* %162, i64* %33, i32 %165, i32 %169, i32 9)
  store i32 %170, i32* %31, align 4
  %171 = load i32, i32* %31, align 4
  %172 = load i32, i32* @Z_OK, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %155
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @AV_LOG_ERROR, align 4
  %179 = load i32, i32* %22, align 4
  %180 = load i32, i32* %23, align 4
  %181 = call i32 @av_log(i32 %177, i32 %178, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %174, %155
  %183 = load i64, i64* %33, align 8
  %184 = call i32 @bytestream_put_be16(i32** %32, i64 %183)
  %185 = load i64, i64* %33, align 8
  %186 = add i64 %185, 2
  %187 = load i32, i32* %24, align 4
  %188 = sext i32 %187 to i64
  %189 = add i64 %188, %186
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %24, align 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %24, align 4
  %195 = call i32 @ff_dlog(i32 %193, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %194)
  br label %202

196:                                              ; preds = %151
  %197 = load i32, i32* %26, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %26, align 4
  %199 = call i32 @bytestream_put_be16(i32** %32, i64 0)
  %200 = load i32, i32* %24, align 4
  %201 = add nsw i32 %200, 2
  store i32 %201, i32* %24, align 4
  br label %202

202:                                              ; preds = %196, %182
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %22, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %22, align 4
  br label %96

206:                                              ; preds = %96
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %23, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %23, align 4
  br label %74

210:                                              ; preds = %74
  %211 = load i32, i32* %26, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %210
  %214 = load i32*, i32** %16, align 8
  store i32 0, i32* %214, align 4
  br label %217

215:                                              ; preds = %210
  %216 = load i32*, i32** %16, align 8
  store i32 1, i32* %216, align 4
  br label %217

217:                                              ; preds = %215, %213
  %218 = load i32, i32* %24, align 4
  ret i32 %218
}

declare dso_local i32 @init_put_bits(i32*, i32*, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @copy_region_enc(i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @compress2(i32*, i64*, i32, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @bytestream_put_be16(i32**, i64) #1

declare dso_local i32 @ff_dlog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
