; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_write_index.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_write_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_8__ = type { i32 }

@ff_nut_sp_pos_cmp = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Multiple keyframes with same PTS\0A\00", align 1
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*)* @write_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_index(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca [2 x %struct.TYPE_8__*], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = bitcast [2 x %struct.TYPE_8__*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 16, i1 false)
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @avio_tell(i32* %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @put_tt(%struct.TYPE_10__* %20, i32 %23, i32* %24, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @ff_put_v(i32* %29, i64 %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %66, %2
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %34
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ff_nut_sp_pos_cmp, align 4
  %46 = getelementptr inbounds [2 x %struct.TYPE_8__*], [2 x %struct.TYPE_8__*]* %7, i64 0, i64 0
  %47 = bitcast %struct.TYPE_8__** %46 to i8**
  %48 = call i32 @av_tree_find(i32 %44, %struct.TYPE_8__* %6, i32 %45, i8** %47)
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds [2 x %struct.TYPE_8__*], [2 x %struct.TYPE_8__*]* %7, i64 0, i64 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 4
  %58 = sub nsw i32 %54, %57
  %59 = sext i32 %58 to i64
  %60 = call i32 @ff_put_v(i32* %49, i64 %59)
  %61 = getelementptr inbounds [2 x %struct.TYPE_8__*], [2 x %struct.TYPE_8__*]* %7, i64 0, i64 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %41
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %34

69:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %248, %69
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %71, %76
  br i1 %77, label %78, label %251

78:                                               ; preds = %70
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %83
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %10, align 8
  store i64 -1, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %244, %78
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %87, %90
  br i1 %91, label %92, label %247

92:                                               ; preds = %85
  store i32 0, i32* %15, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %125

95:                                               ; preds = %92
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %105, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %102, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %95
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = load i32, i32* @AV_LOG_WARNING, align 4
  %117 = call i32 @av_log(%struct.TYPE_11__* %115, i32 %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %118 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  store i64 %118, i64* %124, align 8
  br label %125

125:                                              ; preds = %112, %95, %92
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %134 = icmp ne i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %138, %141
  %143 = zext i1 %142 to i32
  %144 = xor i32 %135, %143
  store i32 %144, i32* %14, align 4
  br label %145

145:                                              ; preds = %170, %125
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp slt i64 %147, %150
  br i1 %151, label %152, label %165

152:                                              ; preds = %145
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %161 = icmp ne i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* %14, align 4
  %164 = icmp eq i32 %162, %163
  br label %165

165:                                              ; preds = %152, %145
  %166 = phi i1 [ false, %145 ], [ %164, %152 ]
  br i1 %166, label %167, label %173

167:                                              ; preds = %165
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %15, align 4
  br label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %12, align 4
  br label %145

173:                                              ; preds = %165
  %174 = load i32*, i32** %4, align 8
  %175 = load i32, i32* %14, align 4
  %176 = mul nsw i32 2, %175
  %177 = add nsw i32 1, %176
  %178 = load i32, i32* %15, align 4
  %179 = mul nsw i32 4, %178
  %180 = add nsw i32 %177, %179
  %181 = sext i32 %180 to i64
  %182 = call i32 @ff_put_v(i32* %174, i64 %181)
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %15, align 4
  %185 = sub nsw i32 %183, %184
  store i32 %185, i32* %13, align 4
  br label %186

186:                                              ; preds = %240, %173
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp sle i32 %187, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %186
  %191 = load i32, i32* %13, align 4
  %192 = sext i32 %191 to i64
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp slt i64 %192, %195
  br label %197

197:                                              ; preds = %190, %186
  %198 = phi i1 [ false, %186 ], [ %196, %190 ]
  br i1 %198, label %199, label %243

199:                                              ; preds = %197
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = load i64*, i64** %201, align 8
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %199
  br label %240

210:                                              ; preds = %199
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = load i64*, i64** %212, align 8
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %213, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* %11, align 8
  %219 = icmp sgt i64 %217, %218
  %220 = zext i1 %219 to i32
  %221 = call i32 @av_assert0(i32 %220)
  %222 = load i32*, i32** %4, align 8
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load i64*, i64** %224, align 8
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64, i64* %225, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* %11, align 8
  %231 = sub nsw i64 %229, %230
  %232 = call i32 @ff_put_v(i32* %222, i64 %231)
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = load i64*, i64** %234, align 8
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i64, i64* %235, i64 %237
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* %11, align 8
  br label %240

240:                                              ; preds = %210, %209
  %241 = load i32, i32* %13, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %13, align 4
  br label %186

243:                                              ; preds = %197
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %12, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %12, align 4
  br label %85

247:                                              ; preds = %85
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %5, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %5, align 4
  br label %70

251:                                              ; preds = %70
  %252 = load i32*, i32** %4, align 8
  %253 = call i64 @avio_tell(i32* %252)
  %254 = load i64, i64* %8, align 8
  %255 = sub nsw i64 %253, %254
  %256 = add nsw i64 %255, 8
  %257 = add nsw i64 %256, 4
  store i64 %257, i64* %9, align 8
  %258 = load i32*, i32** %4, align 8
  %259 = load i64, i64* %9, align 8
  %260 = add nsw i64 8, %259
  %261 = load i64, i64* %9, align 8
  %262 = call i32 @av_log2(i64 %261)
  %263 = sdiv i32 %262, 7
  %264 = sext i32 %263 to i64
  %265 = add nsw i64 %260, %264
  %266 = add nsw i64 %265, 1
  %267 = load i64, i64* %9, align 8
  %268 = icmp sgt i64 %267, 4096
  %269 = zext i1 %268 to i32
  %270 = mul nsw i32 4, %269
  %271 = sext i32 %270 to i64
  %272 = add nsw i64 %266, %271
  %273 = trunc i64 %272 to i32
  %274 = call i32 @avio_wb64(i32* %258, i32 %273)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @avio_tell(i32*) #2

declare dso_local i32 @put_tt(%struct.TYPE_10__*, i32, i32*, i32) #2

declare dso_local i32 @ff_put_v(i32*, i64) #2

declare dso_local i32 @av_tree_find(i32, %struct.TYPE_8__*, i32, i8**) #2

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*) #2

declare dso_local i32 @av_assert0(i32) #2

declare dso_local i32 @avio_wb64(i32*, i32) #2

declare dso_local i32 @av_log2(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
