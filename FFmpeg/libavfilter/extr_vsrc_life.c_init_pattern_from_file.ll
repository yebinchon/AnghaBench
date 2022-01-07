; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vsrc_life.c_init_pattern_from_file.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vsrc_life.c_init_pattern_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32, i32, i32, i64, i32**, i32* }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"h:%d max_w:%d\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"The specified size is %dx%d which cannot contain the provided file size of %dx%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%d:%d %c\0A\00", align 1
@ALIVE_CELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @init_pattern_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_pattern_from_file(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 6
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = call i32 @av_file_map(i32* %18, i8** %20, i32* %22, i32 0, %struct.TYPE_7__* %23)
  store i32 %24, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %232

28:                                               ; preds = %1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 6
  %31 = call i32 @av_freep(i32** %30)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %58, %28
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %32
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @FFMAX(i32 %51, i32 %52)
  store i32 %53, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %57

54:                                               ; preds = %38
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %54, %48
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %32

61:                                               ; preds = %32
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = load i32, i32* @AV_LOG_DEBUG, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 (%struct.TYPE_7__*, i32, i8*, i32, i32, ...) @av_log(%struct.TYPE_7__* %62, i32 %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %61
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %77, %71
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = load i32, i32* @AV_LOG_ERROR, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 (%struct.TYPE_7__*, i32, i8*, i32, i32, ...) @av_log(%struct.TYPE_7__* %84, i32 %85, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = call i32 @AVERROR(i32 %95)
  store i32 %96, i32* %2, align 4
  br label %232

97:                                               ; preds = %77
  br label %105

98:                                               ; preds = %61
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %98, %97
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %108, %111
  %113 = call i8* @av_calloc(i32 %112, i32 4)
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 5
  %117 = load i32**, i32*** %116, align 8
  %118 = getelementptr inbounds i32*, i32** %117, i64 0
  store i32* %114, i32** %118, align 8
  %119 = icmp ne i32* %114, null
  br i1 %119, label %120, label %135

120:                                              ; preds = %105
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %123, %126
  %128 = call i8* @av_calloc(i32 %127, i32 4)
  %129 = bitcast i8* %128 to i32*
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 5
  %132 = load i32**, i32*** %131, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 1
  store i32* %129, i32** %133, align 8
  %134 = icmp ne i32* %129, null
  br i1 %134, label %148, label %135

135:                                              ; preds = %120, %105
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 5
  %138 = load i32**, i32*** %137, align 8
  %139 = getelementptr inbounds i32*, i32** %138, i64 0
  %140 = call i32 @av_freep(i32** %139)
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 5
  %143 = load i32**, i32*** %142, align 8
  %144 = getelementptr inbounds i32*, i32** %143, i64 1
  %145 = call i32 @av_freep(i32** %144)
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = call i32 @AVERROR(i32 %146)
  store i32 %147, i32* %2, align 4
  br label %232

148:                                              ; preds = %120
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  store i8* %151, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sub nsw i32 %154, %155
  %157 = sdiv i32 %156, 2
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %224, %148
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %229

162:                                              ; preds = %158
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %12, align 4
  %167 = sub nsw i32 %165, %166
  %168 = sdiv i32 %167, 2
  store i32 %168, i32* %9, align 4
  br label %169

169:                                              ; preds = %220, %162
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %171 = load i32, i32* @AV_LOG_DEBUG, align 4
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load i8*, i8** %5, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 10
  br i1 %177, label %178, label %179

178:                                              ; preds = %169
  br label %183

179:                                              ; preds = %169
  %180 = load i8*, i8** %5, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  br label %183

183:                                              ; preds = %179, %178
  %184 = phi i32 [ 78, %178 ], [ %182, %179 ]
  %185 = call i32 (%struct.TYPE_7__*, i32, i8*, i32, i32, ...) @av_log(%struct.TYPE_7__* %170, i32 %171, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %172, i32 %173, i32 %184)
  %186 = load i8*, i8** %5, align 8
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 10
  br i1 %189, label %190, label %193

190:                                              ; preds = %183
  %191 = load i8*, i8** %5, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %5, align 8
  br label %223

193:                                              ; preds = %183
  %194 = load i8*, i8** %5, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %5, align 8
  %196 = load i8, i8* %194, align 1
  %197 = sext i8 %196 to i32
  %198 = call i64 @av_isgraph(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %193
  %201 = load i32, i32* @ALIVE_CELL, align 4
  br label %203

202:                                              ; preds = %193
  br label %203

203:                                              ; preds = %202, %200
  %204 = phi i32 [ %201, %200 ], [ 0, %202 ]
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 5
  %207 = load i32**, i32*** %206, align 8
  %208 = getelementptr inbounds i32*, i32** %207, i64 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %7, align 4
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 %210, %213
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %209, i64 %217
  store i32 %204, i32* %218, align 4
  br label %219

219:                                              ; preds = %203
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %9, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %9, align 4
  br label %169

223:                                              ; preds = %190
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %7, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %7, align 4
  br label %158

229:                                              ; preds = %158
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 4
  store i64 0, i64* %231, align 8
  store i32 0, i32* %2, align 4
  br label %232

232:                                              ; preds = %229, %135, %83, %26
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local i32 @av_file_map(i32*, i8**, i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_calloc(i32, i32) #1

declare dso_local i64 @av_isgraph(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
