; ModuleID = '/home/carl/AnghaBench/ccv/test/extr_case_main.h_main.c'
source_filename = "/home/carl/AnghaBench/ccv/test/extr_case_main.h_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@__stop_case_data_assessment = common dso_local global i64 0, align 8
@__start_case_data_assessment = common dso_local global i64 0, align 8
@__stop_case_data = common dso_local global i64 0, align 8
@__start_case_data = common dso_local global i64 0, align 8
@main.the_sig = internal global i64 -8632746039351629749, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_3__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_3__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_3__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_3__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %26 = load i64, i64* @__stop_case_data_assessment, align 8
  %27 = load i64, i64* @__start_case_data_assessment, align 8
  %28 = sub nsw i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i64, i64* @__stop_case_data, align 8
  %31 = load i64, i64* @__start_case_data, align 8
  %32 = sub nsw i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %35 = call i8* @getcwd(i8* %34, i32 1024)
  store i8* %35, i8** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = srem i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %47

43:                                               ; preds = %2
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  br label %48

47:                                               ; preds = %2
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i8* [ %46, %43 ], [ null, %47 ]
  store i8* %49, i8** %11, align 8
  store i32 0, i32* %13, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %52, %48
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %84, %56
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %57
  %62 = load i64, i64* @__start_case_data, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %6, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  %69 = bitcast i8* %68 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %69, %struct.TYPE_3__** %14, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @main.the_sig, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %61
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @main.the_sig, align 8
  %80 = add nsw i64 %79, 2
  %81 = icmp ne i64 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75, %61
  store i32 1, i32* %10, align 4
  br label %87

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %57

87:                                               ; preds = %82, %57
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %138

90:                                               ; preds = %87
  store i32 0, i32* %13, align 4
  %91 = load i64, i64* @__stop_case_data, align 8
  %92 = load i64, i64* @__start_case_data, align 8
  %93 = sub nsw i64 %91, %92
  %94 = sub i64 %93, 24
  %95 = add i64 %94, 1
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %134, %90
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %137

101:                                              ; preds = %97
  %102 = load i64, i64* @__start_case_data, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = bitcast i8* %106 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %107, %struct.TYPE_3__** %19, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @main.the_sig, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %133

113:                                              ; preds = %101
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @main.the_sig, align 8
  %118 = add nsw i64 %117, 2
  %119 = icmp eq i64 %116, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %113
  %121 = load i8*, i8** %11, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %11, align 8
  %128 = call i64 @strstr(i32 %126, i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %123, %120
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %130, %123, %113, %101
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %97

137:                                              ; preds = %97
  br label %138

138:                                              ; preds = %137, %87
  br i1 true, label %139, label %141

139:                                              ; preds = %138
  %140 = call i32 (...) @__test_case_setup()
  br label %141

141:                                              ; preds = %139, %138
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %192

144:                                              ; preds = %141
  store i32 0, i32* %20, align 4
  store i32 0, i32* %12, align 4
  br label %145

145:                                              ; preds = %188, %144
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %15, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %191

149:                                              ; preds = %145
  %150 = load i64, i64* @__start_case_data, align 8
  %151 = inttoptr i64 %150 to i8*
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = bitcast i8* %154 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %155, %struct.TYPE_3__** %21, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @main.the_sig, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %187

161:                                              ; preds = %149
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @main.the_sig, align 8
  %166 = add nsw i64 %165, 2
  %167 = icmp eq i64 %164, %166
  br i1 %167, label %168, label %187

168:                                              ; preds = %161
  %169 = load i8*, i8** %11, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %178

171:                                              ; preds = %168
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = call i64 @strstr(i32 %174, i8* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %171, %168
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %180 = load i8*, i8** %11, align 8
  %181 = load i32, i32* %20, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %20, align 4
  %183 = load i32, i32* %13, align 4
  %184 = call i32 @case_run(%struct.TYPE_3__* %179, i8* %180, i32 %181, i32 %183, i32* %16, i32* %17, i32* %18)
  %185 = load i8*, i8** %9, align 8
  %186 = call i32 @chdir(i8* %185)
  br label %187

187:                                              ; preds = %178, %171, %161, %149
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %12, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %12, align 4
  br label %145

191:                                              ; preds = %145
  br label %267

192:                                              ; preds = %141
  %193 = load i8*, i8** %11, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %198

196:                                              ; preds = %192
  %197 = load i32, i32* %13, align 4
  br label %198

198:                                              ; preds = %196, %195
  %199 = phi i32 [ 0, %195 ], [ %197, %196 ]
  store i32 %199, i32* %22, align 4
  %200 = load i8*, i8** %11, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %230

202:                                              ; preds = %198
  store i32 0, i32* %12, align 4
  br label %203

203:                                              ; preds = %226, %202
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %13, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %229

207:                                              ; preds = %203
  %208 = load i64, i64* @__start_case_data, align 8
  %209 = inttoptr i64 %208 to i8*
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* %6, align 4
  %212 = mul nsw i32 %210, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %209, i64 %213
  %215 = bitcast i8* %214 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %215, %struct.TYPE_3__** %23, align 8
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load i8*, i8** %11, align 8
  %220 = call i64 @strstr(i32 %218, i8* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %207
  %223 = load i32, i32* %22, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %22, align 4
  br label %225

225:                                              ; preds = %222, %207
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %12, align 4
  br label %203

229:                                              ; preds = %203
  br label %230

230:                                              ; preds = %229, %198
  store i32 0, i32* %24, align 4
  store i32 0, i32* %12, align 4
  br label %231

231:                                              ; preds = %263, %230
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* %13, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %266

235:                                              ; preds = %231
  %236 = load i64, i64* @__start_case_data, align 8
  %237 = inttoptr i64 %236 to i8*
  %238 = load i32, i32* %12, align 4
  %239 = load i32, i32* %6, align 4
  %240 = mul nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %237, i64 %241
  %243 = bitcast i8* %242 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %243, %struct.TYPE_3__** %25, align 8
  %244 = load i8*, i8** %11, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %253

246:                                              ; preds = %235
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load i8*, i8** %11, align 8
  %251 = call i64 @strstr(i32 %249, i8* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %246, %235
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %255 = load i8*, i8** %11, align 8
  %256 = load i32, i32* %24, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %24, align 4
  %258 = load i32, i32* %22, align 4
  %259 = call i32 @case_run(%struct.TYPE_3__* %254, i8* %255, i32 %256, i32 %258, i32* %16, i32* %17, i32* %18)
  br label %260

260:                                              ; preds = %253, %246
  %261 = load i8*, i8** %9, align 8
  %262 = call i32 @chdir(i8* %261)
  br label %263

263:                                              ; preds = %260
  %264 = load i32, i32* %12, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %12, align 4
  br label %231

266:                                              ; preds = %231
  br label %267

267:                                              ; preds = %266, %191
  br i1 true, label %268, label %270

268:                                              ; preds = %267
  %269 = call i32 (...) @__test_case_teardown()
  br label %270

270:                                              ; preds = %268, %267
  %271 = load i32, i32* %16, align 4
  %272 = load i32, i32* %17, align 4
  %273 = load i32, i32* %18, align 4
  %274 = call i32 @case_conclude(i32 %271, i32 %272, i32 %273)
  %275 = load i32, i32* %18, align 4
  ret i32 %275
}

declare dso_local i8* @getcwd(i8*, i32) #1

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local i32 @__test_case_setup(...) #1

declare dso_local i32 @case_run(%struct.TYPE_3__*, i8*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @__test_case_teardown(...) #1

declare dso_local i32 @case_conclude(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
