; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeTagMgmt.c_tQSortEx.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeTagMgmt.c_tQSortEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TSDB_DATA_TYPE_BINARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tQSortEx(i8** %0, i64 %1, i32 %2, i32 %3, i8* %4, i32 (i8*, i8*, i32*)* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32 (i8*, i8*, i32*)*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
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
  store i8** %0, i8*** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 (i8*, i8*, i32*)* %5, i32 (i8*, i8*, i32*)** %12, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %13, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %28, %29
  %31 = add nsw i32 %30, 1
  %32 = icmp sle i32 %31, 8
  br i1 %32, label %33, label %41

33:                                               ; preds = %6
  %34 = load i8**, i8*** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %12, align 8
  %40 = call i32 @tInsertSort(i8** %34, i64 %35, i32 %36, i32 %37, i32* %38, i32 (i8*, i8*, i32*)* %39)
  br label %290

41:                                               ; preds = %6
  %42 = load i8**, i8*** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32*, i32** %13, align 8
  %47 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %12, align 8
  %48 = call i32 @median(i8** %42, i64 %43, i32 %44, i32 %45, i32* %46, i32 (i8*, i8*, i32*)* %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %17, align 4
  br label %53

53:                                               ; preds = %179, %41
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %180

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %99, %57
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %102

62:                                               ; preds = %58
  %63 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %12, align 8
  %64 = load i8**, i8*** %7, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load i8**, i8*** %7, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 %63(i8* %68, i8* %73, i32* %74)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  br label %102

79:                                               ; preds = %62
  %80 = load i32, i32* %18, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %82
  %87 = load i8**, i8*** %7, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8**, i8*** %7, align 8
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %16, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8*, i8** %91, i64 %94
  %96 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @tsDataSwap(i8** %90, i8** %95, i32 %96, i64 %97)
  br label %99

99:                                               ; preds = %86, %82, %79
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %15, align 4
  br label %58

102:                                              ; preds = %78, %58
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load i8**, i8*** %7, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8**, i8*** %7, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @tsDataSwap(i8** %110, i8** %114, i32 %115, i64 %116)
  br label %118

118:                                              ; preds = %106, %102
  br label %119

119:                                              ; preds = %160, %118
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %163

123:                                              ; preds = %119
  %124 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %12, align 8
  %125 = load i8**, i8*** %7, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = load i8**, i8*** %7, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = load i32*, i32** %13, align 8
  %136 = call i32 %124(i8* %129, i8* %134, i32* %135)
  store i32 %136, i32* %19, align 4
  %137 = load i32, i32* %19, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %123
  br label %163

140:                                              ; preds = %123
  %141 = load i32, i32* %19, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %140
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %17, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %143
  %148 = load i8**, i8*** %7, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8**, i8*** %7, align 8
  %153 = load i32, i32* %17, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %17, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8*, i8** %152, i64 %155
  %157 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %158 = load i64, i64* %8, align 8
  %159 = call i32 @tsDataSwap(i8** %151, i8** %156, i32 %157, i64 %158)
  br label %160

160:                                              ; preds = %147, %143, %140
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  br label %119

163:                                              ; preds = %139, %119
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %163
  %168 = load i8**, i8*** %7, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  %172 = load i8**, i8*** %7, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %177 = load i64, i64* %8, align 8
  %178 = call i32 @tsDataSwap(i8** %171, i8** %175, i32 %176, i64 %177)
  br label %179

179:                                              ; preds = %167, %163
  br label %53

180:                                              ; preds = %53
  %181 = load i32, i32* %15, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %20, align 4
  %183 = load i32, i32* %16, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %223

186:                                              ; preds = %180
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %223

190:                                              ; preds = %186
  %191 = load i32, i32* %20, align 4
  store i32 %191, i32* %21, align 4
  %192 = load i32, i32* %10, align 4
  store i32 %192, i32* %22, align 4
  br label %193

193:                                              ; preds = %203, %190
  %194 = load i32, i32* %22, align 4
  %195 = load i32, i32* %16, align 4
  %196 = icmp sgt i32 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = load i32, i32* %21, align 4
  %199 = load i32, i32* %16, align 4
  %200 = icmp sle i32 %198, %199
  br label %201

201:                                              ; preds = %197, %193
  %202 = phi i1 [ false, %193 ], [ %200, %197 ]
  br i1 %202, label %203, label %217

203:                                              ; preds = %201
  %204 = load i8**, i8*** %7, align 8
  %205 = load i32, i32* %21, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %21, align 4
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i8*, i8** %204, i64 %207
  %209 = load i8**, i8*** %7, align 8
  %210 = load i32, i32* %22, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %22, align 4
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i8*, i8** %209, i64 %212
  %214 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %215 = load i64, i64* %8, align 8
  %216 = call i32 @tsDataSwap(i8** %208, i8** %213, i32 %214, i64 %215)
  br label %193

217:                                              ; preds = %201
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %16, align 4
  %220 = sub nsw i32 %218, %219
  %221 = load i32, i32* %20, align 4
  %222 = add nsw i32 %221, %220
  store i32 %222, i32* %20, align 4
  br label %223

223:                                              ; preds = %217, %186, %180
  %224 = load i32, i32* %15, align 4
  %225 = sub nsw i32 %224, 1
  store i32 %225, i32* %23, align 4
  %226 = load i32, i32* %17, align 4
  %227 = load i32, i32* %10, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %266

229:                                              ; preds = %223
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* %9, align 4
  %232 = icmp sgt i32 %230, %231
  br i1 %232, label %233, label %266

233:                                              ; preds = %229
  %234 = load i32, i32* %9, align 4
  store i32 %234, i32* %24, align 4
  %235 = load i32, i32* %23, align 4
  store i32 %235, i32* %25, align 4
  br label %236

236:                                              ; preds = %246, %233
  %237 = load i32, i32* %24, align 4
  %238 = load i32, i32* %17, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = load i32, i32* %25, align 4
  %242 = load i32, i32* %17, align 4
  %243 = icmp sge i32 %241, %242
  br label %244

244:                                              ; preds = %240, %236
  %245 = phi i1 [ false, %236 ], [ %243, %240 ]
  br i1 %245, label %246, label %260

246:                                              ; preds = %244
  %247 = load i8**, i8*** %7, align 8
  %248 = load i32, i32* %24, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %24, align 4
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i8*, i8** %247, i64 %250
  %252 = load i8**, i8*** %7, align 8
  %253 = load i32, i32* %25, align 4
  %254 = add nsw i32 %253, -1
  store i32 %254, i32* %25, align 4
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i8*, i8** %252, i64 %255
  %257 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %258 = load i64, i64* %8, align 8
  %259 = call i32 @tsDataSwap(i8** %251, i8** %256, i32 %257, i64 %258)
  br label %236

260:                                              ; preds = %244
  %261 = load i32, i32* %17, align 4
  %262 = load i32, i32* %9, align 4
  %263 = sub nsw i32 %261, %262
  %264 = load i32, i32* %23, align 4
  %265 = sub nsw i32 %264, %263
  store i32 %265, i32* %23, align 4
  br label %266

266:                                              ; preds = %260, %229, %223
  %267 = load i32, i32* %23, align 4
  %268 = load i32, i32* %9, align 4
  %269 = icmp sgt i32 %267, %268
  br i1 %269, label %270, label %278

270:                                              ; preds = %266
  %271 = load i8**, i8*** %7, align 8
  %272 = load i64, i64* %8, align 8
  %273 = load i32, i32* %9, align 4
  %274 = load i32, i32* %23, align 4
  %275 = load i32*, i32** %13, align 8
  %276 = bitcast i32* %275 to i8*
  %277 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %12, align 8
  call void @tQSortEx(i8** %271, i64 %272, i32 %273, i32 %274, i8* %276, i32 (i8*, i8*, i32*)* %277)
  br label %278

278:                                              ; preds = %270, %266
  %279 = load i32, i32* %20, align 4
  %280 = load i32, i32* %10, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %290

282:                                              ; preds = %278
  %283 = load i8**, i8*** %7, align 8
  %284 = load i64, i64* %8, align 8
  %285 = load i32, i32* %20, align 4
  %286 = load i32, i32* %10, align 4
  %287 = load i32*, i32** %13, align 8
  %288 = bitcast i32* %287 to i8*
  %289 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %12, align 8
  call void @tQSortEx(i8** %283, i64 %284, i32 %285, i32 %286, i8* %288, i32 (i8*, i8*, i32*)* %289)
  br label %290

290:                                              ; preds = %33, %282, %278
  ret void
}

declare dso_local i32 @tInsertSort(i8**, i64, i32, i32, i32*, i32 (i8*, i8*, i32*)*) #1

declare dso_local i32 @median(i8**, i64, i32, i32, i32*, i32 (i8*, i8*, i32*)*) #1

declare dso_local i32 @tsDataSwap(i8**, i8**, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
