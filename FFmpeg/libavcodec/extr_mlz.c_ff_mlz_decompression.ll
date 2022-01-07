; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlz.c_ff_mlz_decompression.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlz.c_ff_mlz_decompression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i32, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"String code %d exceeds maximum value of %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"output chars overflow\0A\00", align 1
@TABLE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Too many MLZ codes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mlz_decompression(%struct.TYPE_5__* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %13, align 4
  store i64 0, i64* %11, align 8
  br label %20

20:                                               ; preds = %260, %4
  %21 = load i64, i64* %11, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %261

25:                                               ; preds = %20
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @input_code(i32* %26, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  switch i32 %31, label %38 [
    i32 130, label %32
    i32 128, label %32
    i32 129, label %35
  ]

32:                                               ; preds = %25, %25
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = call i32 @ff_mlz_flush_dict(%struct.TYPE_5__* %33)
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %13, align 4
  br label %260

35:                                               ; preds = %25
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %260

38:                                               ; preds = %25
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i32, i8*, ...) @av_log(i32 %47, i32 %48, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load i64, i64* %11, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %5, align 4
  br label %264

56:                                               ; preds = %38
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = icmp eq i32 %57, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %56
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %70, 2
  store i32 %71, i32* %69, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 4
  store i64 %76, i64* %78, align 8
  br label %259

79:                                               ; preds = %56
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp sge i32 %80, %83
  br i1 %84, label %85, label %180

85:                                               ; preds = %79
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i64, i64* %11, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %11, align 8
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = call i32 @decode_string(%struct.TYPE_5__* %86, i8* %89, i32 %90, i32* %14, i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %85
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %11, align 8
  %105 = sub i64 %103, %104
  %106 = icmp ugt i64 %101, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %99, %85
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @AV_LOG_ERROR, align 4
  %112 = call i32 (i32, i32, i8*, ...) @av_log(i32 %110, i32 %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i64, i64* %11, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %5, align 4
  br label %264

115:                                              ; preds = %99
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %11, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %11, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = load i64, i64* %11, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* %11, align 8
  %128 = sub i64 %126, %127
  %129 = trunc i64 %128 to i32
  %130 = call i32 @decode_string(%struct.TYPE_5__* %120, i8* %123, i32 %124, i32* %14, i32 %129)
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %15, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %115
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* %11, align 8
  %139 = sub i64 %137, %138
  %140 = icmp ugt i64 %135, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %133, %115
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @AV_LOG_ERROR, align 4
  %146 = call i32 (i32, i32, i8*, ...) @av_log(i32 %144, i32 %145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %147 = load i64, i64* %11, align 8
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %5, align 4
  br label %264

149:                                              ; preds = %133
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %11, align 8
  %153 = add i64 %152, %151
  store i64 %153, i64* %11, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %14, align 4
  %160 = call i32 @set_new_entry_dict(i32* %154, i32 %157, i32 %158, i32 %159)
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @TABLE_SIZE, align 4
  %165 = sub nsw i32 %164, 1
  %166 = icmp sge i32 %163, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %149
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @AV_LOG_ERROR, align 4
  %172 = call i32 (i32, i32, i8*, ...) @av_log(i32 %170, i32 %171, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %173 = load i64, i64* %11, align 8
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %5, align 4
  br label %264

175:                                              ; preds = %149
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  br label %257

180:                                              ; preds = %79
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = load i64, i64* %11, align 8
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* %11, align 8
  %189 = sub i64 %187, %188
  %190 = trunc i64 %189 to i32
  %191 = call i32 @decode_string(%struct.TYPE_5__* %181, i8* %184, i32 %185, i32* %14, i32 %190)
  store i32 %191, i32* %16, align 4
  %192 = load i32, i32* %16, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %202, label %194

194:                                              ; preds = %180
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* %11, align 8
  %200 = sub i64 %198, %199
  %201 = icmp ugt i64 %196, %200
  br i1 %201, label %202, label %210

202:                                              ; preds = %194, %180
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @AV_LOG_ERROR, align 4
  %207 = call i32 (i32, i32, i8*, ...) @av_log(i32 %205, i32 %206, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %208 = load i64, i64* %11, align 8
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %5, align 4
  br label %264

210:                                              ; preds = %194
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = load i64, i64* %11, align 8
  %214 = add i64 %213, %212
  store i64 %214, i64* %11, align 8
  %215 = load i64, i64* %11, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = icmp ule i64 %215, %217
  br i1 %218, label %219, label %255

219:                                              ; preds = %210
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %255, label %224

224:                                              ; preds = %219
  %225 = load i32, i32* %13, align 4
  %226 = icmp ne i32 %225, -1
  br i1 %226, label %227, label %254

227:                                              ; preds = %224
  %228 = load i32*, i32** %10, align 8
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* %14, align 4
  %234 = call i32 @set_new_entry_dict(i32* %228, i32 %231, i32 %232, i32 %233)
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @TABLE_SIZE, align 4
  %239 = sub nsw i32 %238, 1
  %240 = icmp sge i32 %237, %239
  br i1 %240, label %241, label %249

241:                                              ; preds = %227
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @AV_LOG_ERROR, align 4
  %246 = call i32 (i32, i32, i8*, ...) @av_log(i32 %244, i32 %245, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %247 = load i64, i64* %11, align 8
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %5, align 4
  br label %264

249:                                              ; preds = %227
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %251, align 8
  br label %254

254:                                              ; preds = %249, %224
  br label %256

255:                                              ; preds = %219, %210
  br label %260

256:                                              ; preds = %254
  br label %257

257:                                              ; preds = %256, %175
  %258 = load i32, i32* %12, align 4
  store i32 %258, i32* %13, align 4
  br label %259

259:                                              ; preds = %257, %63
  br label %260

260:                                              ; preds = %259, %255, %35, %32
  br label %20

261:                                              ; preds = %20
  %262 = load i64, i64* %11, align 8
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %5, align 4
  br label %264

264:                                              ; preds = %261, %241, %202, %167, %141, %107, %44
  %265 = load i32, i32* %5, align 4
  ret i32 %265
}

declare dso_local i32 @input_code(i32*, i32) #1

declare dso_local i32 @ff_mlz_flush_dict(%struct.TYPE_5__*) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @decode_string(%struct.TYPE_5__*, i8*, i32, i32*, i32) #1

declare dso_local i32 @set_new_entry_dict(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
