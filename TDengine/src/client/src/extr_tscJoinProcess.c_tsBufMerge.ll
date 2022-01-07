; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscJoinProcess.c_tsBufMerge.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscJoinProcess.c_tsBufMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i64, i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32, i64, i64, i64 }

@TS_COMP_FILE_VNODE_MAX = common dso_local global i64 0, align 8
@SEEK_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsBufMerge(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = icmp eq %struct.TYPE_13__* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = icmp eq %struct.TYPE_13__* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %20, %3
  store i32 0, i32* %4, align 4
  br label %253

29:                                               ; preds = %23
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load i64, i64* @TS_COMP_FILE_VNODE_MAX, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %253

40:                                               ; preds = %29
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %253

46:                                               ; preds = %40
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = call i32 @tsBufFlush(%struct.TYPE_13__* %47)
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %49, %60
  br i1 %61, label %62, label %159

62:                                               ; preds = %46
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %62
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 5
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 40, %87
  %89 = trunc i64 %88 to i32
  %90 = call %struct.TYPE_12__* @realloc(%struct.TYPE_12__* %85, i32 %89)
  store %struct.TYPE_12__* %90, %struct.TYPE_12__** %10, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %92 = icmp eq %struct.TYPE_12__* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %79
  store i32 -1, i32* %4, align 4
  br label %253

94:                                               ; preds = %79
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 5
  store %struct.TYPE_12__* %95, %struct.TYPE_12__** %97, align 8
  br label %98

98:                                               ; preds = %94, %62
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 5
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i64 %103
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 5
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = mul i64 %110, 40
  %112 = call i32 @memcpy(%struct.TYPE_12__* %104, %struct.TYPE_12__* %107, i64 %111)
  store i32 0, i32* %11, align 4
  br label %113

113:                                              ; preds = %151, %98
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp slt i64 %115, %118
  br i1 %119, label %120, label %154

120:                                              ; preds = %113
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 5
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i64 %127
  store %struct.TYPE_12__* %128, %struct.TYPE_12__** %12, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i64 (...) @getDataStartOffset()
  %139 = sub nsw i64 %137, %138
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %139, %142
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  store i64 %143, i64* %146, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  br label %151

151:                                              ; preds = %120
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %113

154:                                              ; preds = %113
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  br label %206

159:                                              ; preds = %46
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 5
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = sub nsw i64 %165, 1
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i64 %166
  store %struct.TYPE_12__* %167, %struct.TYPE_12__** %13, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 5
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, %173
  store i64 %177, i64* %175, align 8
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 5
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, %184
  store i64 %189, i64* %187, align 8
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 5
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i64 0
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %200, %196
  store i64 %201, i64* %199, align 8
  %202 = load i32, i32* %7, align 4
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  store i32 %202, i32* %205, align 8
  br label %206

206:                                              ; preds = %159, %154
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @SEEK_END, align 4
  %211 = call i64 @fseek(i32 %209, i32 0, i32 %210)
  store i64 %211, i64* %14, align 8
  %212 = load i64, i64* %14, align 8
  %213 = icmp eq i64 %212, 0
  %214 = zext i1 %213 to i32
  %215 = call i32 @assert(i32 %214)
  %216 = call i64 (...) @getDataStartOffset()
  store i64 %216, i64* %15, align 8
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* %15, align 8
  %221 = sub nsw i64 %219, %220
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %16, align 4
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %16, align 4
  %230 = call i32 @fsendfile(i32 %225, i32 %228, i64* %15, i32 %229)
  store i32 %230, i32* %17, align 4
  %231 = load i32, i32* %17, align 4
  %232 = icmp eq i32 %231, -1
  br i1 %232, label %233, label %237

233:                                              ; preds = %206
  %234 = load i32, i32* @errno, align 4
  %235 = call i8* @strerror(i32 %234)
  %236 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %235)
  store i32 -1, i32* %4, align 4
  br label %253

237:                                              ; preds = %206
  %238 = load i32, i32* %17, align 4
  %239 = load i32, i32* %16, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %237
  %242 = load i32, i32* @errno, align 4
  %243 = call i8* @strerror(i32 %242)
  %244 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %243)
  store i32 -1, i32* %4, align 4
  br label %253

245:                                              ; preds = %237
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %251, %248
  store i64 %252, i64* %250, align 8
  store i32 0, i32* %4, align 4
  br label %253

253:                                              ; preds = %245, %241, %233, %93, %45, %39, %28
  %254 = load i32, i32* %4, align 4
  ret i32 %254
}

declare dso_local i32 @tsBufFlush(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @realloc(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_12__*, i64) #1

declare dso_local i64 @getDataStartOffset(...) #1

declare dso_local i64 @fseek(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fsendfile(i32, i32, i64*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
