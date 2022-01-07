; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_signature.c_binary_export.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_signature.c_binary_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32, i32, i32*, i32*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32**, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot open file %s: %s\0A\00", align 1
@SIGELEM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_15__*, i8*)* @binary_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binary_export(i32* %0, %struct.TYPE_15__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [128 x i8], align 16
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 44
  %23 = sdiv i32 %22, 45
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = mul nsw i32 %24, 1344
  %26 = add nsw i32 754, %25
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %29, 690
  %31 = add nsw i32 %26, %30
  %32 = sdiv i32 %31, 8
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call i32* @av_malloc_array(i32 %33, i32 4)
  store i32* %34, i32** %16, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %4, align 4
  br label %251

40:                                               ; preds = %3
  %41 = load i8*, i8** %7, align 8
  %42 = call i32* @fopen(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %42, i32** %8, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = call i32 @AVERROR(i32 %46)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %50 = call i32 @av_strerror(i32 %48, i8* %49, i32 128)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @AV_LOG_ERROR, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %55 = call i32 @av_log(i32* %51, i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %53, i8* %54)
  %56 = call i32 @av_freep(i32** %16)
  %57 = load i32, i32* %17, align 4
  store i32 %57, i32* %4, align 4
  br label %251

58:                                               ; preds = %40
  %59 = load i32*, i32** %16, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @init_put_bits(i32* %14, i32* %59, i32 %60)
  %62 = call i32 @put_bits32(i32* %14, i32 1)
  %63 = call i32 @put_bits(i32* %14, i32 1, i32 1)
  %64 = call i32 @put_bits32(i32* %14, i32 0)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 1
  %69 = and i32 %68, 65535
  %70 = call i32 @put_bits(i32* %14, i32 16, i32 %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  %75 = and i32 %74, 65535
  %76 = call i32 @put_bits(i32* %14, i32 16, i32 %75)
  %77 = call i32 @put_bits32(i32* %14, i32 0)
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @put_bits32(i32* %14, i32 %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sdiv i32 %85, %89
  %91 = and i32 65535, %90
  %92 = call i32 @put_bits(i32* %14, i32 16, i32 %91)
  %93 = call i32 @put_bits(i32* %14, i32 1, i32 1)
  %94 = call i32 @put_bits32(i32* %14, i32 0)
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 -1, %101
  %103 = call i32 @put_bits32(i32* %14, i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @put_bits32(i32* %14, i32 %104)
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %107, align 8
  store %struct.TYPE_17__* %108, %struct.TYPE_17__** %10, align 8
  br label %109

109:                                              ; preds = %179, %58
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %111 = icmp ne %struct.TYPE_17__* %110, null
  br i1 %111, label %112, label %183

112:                                              ; preds = %109
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @put_bits32(i32* %14, i32 %117)
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @put_bits32(i32* %14, i32 %123)
  %125 = call i32 @put_bits(i32* %14, i32 1, i32 1)
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = and i32 -1, %130
  %132 = call i32 @put_bits32(i32* %14, i32 %131)
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = and i32 -1, %137
  %139 = call i32 @put_bits32(i32* %14, i32 %138)
  store i32 0, i32* %12, align 4
  br label %140

140:                                              ; preds = %175, %112
  %141 = load i32, i32* %12, align 4
  %142 = icmp slt i32 %141, 5
  br i1 %142, label %143, label %178

143:                                              ; preds = %140
  store i32 0, i32* %13, align 4
  br label %144

144:                                              ; preds = %160, %143
  %145 = load i32, i32* %13, align 4
  %146 = icmp slt i32 %145, 30
  br i1 %146, label %147, label %163

147:                                              ; preds = %144
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load i32**, i32*** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @put_bits(i32* %14, i32 8, i32 %158)
  br label %160

160:                                              ; preds = %147
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %13, align 4
  br label %144

163:                                              ; preds = %144
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i32**, i32*** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %166, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 30
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 5
  %174 = call i32 @put_bits(i32* %14, i32 3, i32 %173)
  br label %175

175:                                              ; preds = %163
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %12, align 4
  br label %140

178:                                              ; preds = %140
  br label %179

179:                                              ; preds = %178
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 3
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %181, align 8
  store %struct.TYPE_17__* %182, %struct.TYPE_17__** %10, align 8
  br label %109

183:                                              ; preds = %109
  %184 = call i32 @put_bits(i32* %14, i32 1, i32 0)
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  store %struct.TYPE_16__* %187, %struct.TYPE_16__** %9, align 8
  br label %188

188:                                              ; preds = %236, %183
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %190 = icmp ne %struct.TYPE_16__* %189, null
  br i1 %190, label %191, label %240

191:                                              ; preds = %188
  %192 = call i32 @put_bits(i32* %14, i32 1, i32 1)
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = and i32 -1, %195
  %197 = call i32 @put_bits32(i32* %14, i32 %196)
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @put_bits(i32* %14, i32 8, i32 %200)
  store i32 0, i32* %12, align 4
  br label %202

202:                                              ; preds = %214, %191
  %203 = load i32, i32* %12, align 4
  %204 = icmp slt i32 %203, 5
  br i1 %204, label %205, label %217

205:                                              ; preds = %202
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @put_bits(i32* %14, i32 8, i32 %212)
  br label %214

214:                                              ; preds = %205
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %12, align 4
  br label %202

217:                                              ; preds = %202
  store i32 0, i32* %12, align 4
  br label %218

218:                                              ; preds = %232, %217
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* @SIGELEM_SIZE, align 4
  %221 = sdiv i32 %220, 5
  %222 = icmp slt i32 %219, %221
  br i1 %222, label %223, label %235

223:                                              ; preds = %218
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 3
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @put_bits(i32* %14, i32 8, i32 %230)
  br label %232

232:                                              ; preds = %223
  %233 = load i32, i32* %12, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %12, align 4
  br label %218

235:                                              ; preds = %218
  br label %236

236:                                              ; preds = %235
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 4
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %238, align 8
  store %struct.TYPE_16__* %239, %struct.TYPE_16__** %9, align 8
  br label %188

240:                                              ; preds = %188
  %241 = call i32 @avpriv_align_put_bits(i32* %14)
  %242 = call i32 @flush_put_bits(i32* %14)
  %243 = load i32*, i32** %16, align 8
  %244 = call i32 @put_bits_count(i32* %14)
  %245 = sdiv i32 %244, 8
  %246 = load i32*, i32** %8, align 8
  %247 = call i32 @fwrite(i32* %243, i32 1, i32 %245, i32* %246)
  %248 = load i32*, i32** %8, align 8
  %249 = call i32 @fclose(i32* %248)
  %250 = call i32 @av_freep(i32** %16)
  store i32 0, i32* %4, align 4
  br label %251

251:                                              ; preds = %240, %45, %37
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

declare dso_local i32* @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @av_strerror(i32, i8*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @init_put_bits(i32*, i32*, i32) #1

declare dso_local i32 @put_bits32(i32*, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @avpriv_align_put_bits(i32*) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #1

declare dso_local i32 @put_bits_count(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
