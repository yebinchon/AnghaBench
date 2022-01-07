; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_make_new_tree.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_make_new_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @make_new_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_new_tree(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [32 x i32], align 16
  %13 = alloca [8192 x i32], align 16
  %14 = alloca [512 x %struct.TYPE_3__], align 16
  %15 = alloca [1024 x i32], align 16
  %16 = alloca [512 x i32], align 16
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
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %29 = bitcast [32 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 128, i1 false)
  store i32 0, i32* %17, align 4
  br label %30

30:                                               ; preds = %60, %2
  %31 = load i32, i32* %17, align 4
  %32 = icmp slt i32 %31, 256
  br i1 %32, label %33, label %63

33:                                               ; preds = %30
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %17, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %19, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp slt i32 %43, 1
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %18, align 4
  %50 = shl i32 %49, 8
  %51 = load i32, i32* %19, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8192 x i32], [8192 x i32]* %13, i64 0, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load i32, i32* %18, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %33
  %61 = load i32, i32* %17, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %17, align 4
  br label %30

63:                                               ; preds = %30
  store i32 0, i32* %20, align 4
  br label %64

64:                                               ; preds = %80, %63
  %65 = load i32, i32* %20, align 4
  %66 = icmp slt i32 %65, 512
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = load i32, i32* %20, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %14, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 16
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 -1, i32* %73, align 4
  %74 = load i32, i32* %20, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %14, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 16
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 -1, i32* %79, align 4
  br label %80

80:                                               ; preds = %67
  %81 = load i32, i32* %20, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %20, align 4
  br label %64

83:                                               ; preds = %64
  store i32 0, i32* %21, align 4
  br label %84

84:                                               ; preds = %93, %83
  %85 = load i32, i32* %21, align 4
  %86 = icmp slt i32 %85, 256
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i32, i32* %21, align 4
  %89 = add nsw i32 257, %88
  %90 = load i32, i32* %21, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [1024 x i32], [1024 x i32]* %15, i64 0, i64 %91
  store i32 %89, i32* %92, align 4
  br label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %21, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %21, align 4
  br label %84

96:                                               ; preds = %84
  store i32 1, i32* %7, align 4
  %97 = getelementptr inbounds [1024 x i32], [1024 x i32]* %15, i64 0, i64 512
  store i32 256, i32* %97, align 16
  store i32 255, i32* %10, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %7, align 4
  br label %98

98:                                               ; preds = %266, %96
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 32
  br i1 %100, label %101, label %269

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %180

107:                                              ; preds = %101
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %108, %112
  store i32 %113, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %114

114:                                              ; preds = %174, %107
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 256
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %22, align 4
  %120 = icmp slt i32 %118, %119
  br label %121

121:                                              ; preds = %117, %114
  %122 = phi i1 [ false, %114 ], [ %120, %117 ]
  br i1 %122, label %123, label %179

123:                                              ; preds = %121
  %124 = load i32, i32* %9, align 4
  %125 = sub nsw i32 %124, 1
  %126 = add nsw i32 %125, 512
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [1024 x i32], [1024 x i32]* %15, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %24, align 4
  %130 = load i32, i32* %7, align 4
  %131 = mul nsw i32 256, %130
  %132 = load i32, i32* %23, align 4
  %133 = add nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [8192 x i32], [8192 x i32]* %13, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %25, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp sle i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %123
  %140 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %140, i32* %3, align 4
  br label %274

141:                                              ; preds = %123
  %142 = load i32, i32* %24, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %14, i64 0, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 16
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %158

150:                                              ; preds = %141
  %151 = load i32, i32* %25, align 4
  %152 = load i32, i32* %24, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %14, i64 0, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 16
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 %151, i32* %157, align 4
  br label %168

158:                                              ; preds = %141
  %159 = load i32, i32* %25, align 4
  %160 = load i32, i32* %24, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %14, i64 0, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 16
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 %159, i32* %165, align 4
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %9, align 4
  br label %168

168:                                              ; preds = %158, %150
  %169 = load i32, i32* %24, align 4
  %170 = load i32, i32* %25, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %14, i64 0, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  store i32 %169, i32* %173, align 8
  br label %174

174:                                              ; preds = %168
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %23, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %23, align 4
  br label %114

179:                                              ; preds = %121
  br label %180

180:                                              ; preds = %179, %101
  %181 = load i32, i32* %10, align 4
  %182 = sub nsw i32 %181, 1
  store i32 %182, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %183

183:                                              ; preds = %263, %180
  %184 = load i32, i32* %9, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %264

186:                                              ; preds = %183
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %8, align 4
  %189 = sub nsw i32 %187, %188
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %9, align 4
  %191 = sub nsw i32 %190, 1
  %192 = add nsw i32 %191, 512
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [1024 x i32], [1024 x i32]* %15, i64 0, i64 %193
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %26, align 4
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [1024 x i32], [1024 x i32]* %15, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %27, align 4
  %200 = load i32, i32* %26, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %14, i64 0, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 16
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, -1
  br i1 %207, label %208, label %216

208:                                              ; preds = %186
  %209 = load i32, i32* %27, align 4
  %210 = load i32, i32* %26, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %14, i64 0, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 16
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  store i32 %209, i32* %215, align 4
  br label %226

216:                                              ; preds = %186
  %217 = load i32, i32* %27, align 4
  %218 = load i32, i32* %26, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %14, i64 0, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 16
  %223 = getelementptr inbounds i32, i32* %222, i64 1
  store i32 %217, i32* %223, align 4
  %224 = load i32, i32* %9, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %9, align 4
  br label %226

226:                                              ; preds = %216, %208
  %227 = load i32, i32* %27, align 4
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [512 x i32], [512 x i32]* %16, i64 0, i64 %229
  store i32 %227, i32* %230, align 4
  %231 = load i32, i32* %26, align 4
  %232 = load i32, i32* %27, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %14, i64 0, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 1
  store i32 %231, i32* %235, align 8
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* %11, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %226
  br label %270

240:                                              ; preds = %226
  %241 = load i32, i32* %8, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %8, align 4
  %243 = load i32, i32* %9, align 4
  %244 = icmp sle i32 %243, 0
  br i1 %244, label %245, label %263

245:                                              ; preds = %240
  store i32 0, i32* %28, align 4
  br label %246

246:                                              ; preds = %259, %245
  %247 = load i32, i32* %28, align 4
  %248 = load i32, i32* %8, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %262

250:                                              ; preds = %246
  %251 = load i32, i32* %28, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [512 x i32], [512 x i32]* %16, i64 0, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %28, align 4
  %256 = add nsw i32 512, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [1024 x i32], [1024 x i32]* %15, i64 0, i64 %257
  store i32 %254, i32* %258, align 4
  br label %259

259:                                              ; preds = %250
  %260 = load i32, i32* %28, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %28, align 4
  br label %246

262:                                              ; preds = %246
  br label %263

263:                                              ; preds = %262, %240
  br label %183

264:                                              ; preds = %183
  %265 = load i32, i32* %8, align 4
  store i32 %265, i32* %9, align 4
  br label %266

266:                                              ; preds = %264
  %267 = load i32, i32* %7, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %7, align 4
  br label %98

269:                                              ; preds = %98
  br label %270

270:                                              ; preds = %269, %239
  %271 = load i32*, i32** %5, align 8
  %272 = getelementptr inbounds [512 x %struct.TYPE_3__], [512 x %struct.TYPE_3__]* %14, i64 0, i64 0
  %273 = call i32 @get_tree_codes(i32* %271, %struct.TYPE_3__* %272, i32 256, i32 0, i32 0)
  store i32 0, i32* %3, align 4
  br label %274

274:                                              ; preds = %270, %139
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_tree_codes(i32*, %struct.TYPE_3__*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
