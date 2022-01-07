; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_huf_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_huf_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64* }
%struct.TYPE_9__ = type { i32* }

@HUF_DECBITS = common dso_local global i32 0, align 4
@HUF_DECMASK = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32, i32, i32*)* @huf_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @huf_decode(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_9__* %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_8__, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_8__, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %28 = load i32*, i32** %15, align 8
  store i32* %28, i32** %17, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32* %32, i32** %18, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 7
  %38 = sdiv i32 %37, 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  store i32* %40, i32** %19, align 8
  store i32 0, i32* %23, align 4
  br label %41

41:                                               ; preds = %186, %7
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** %19, align 8
  %46 = icmp ult i32* %44, %45
  br i1 %46, label %47, label %187

47:                                               ; preds = %41
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %23, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %51 = call i32 @get_char(i32 %48, i32 %49, %struct.TYPE_9__* %50)
  br label %52

52:                                               ; preds = %185, %47
  %53 = load i32, i32* %23, align 4
  %54 = load i32, i32* @HUF_DECBITS, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %186

56:                                               ; preds = %52
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %23, align 4
  %60 = load i32, i32* @HUF_DECBITS, align 4
  %61 = sub nsw i32 %59, %60
  %62 = ashr i32 %58, %61
  %63 = load i32, i32* @HUF_DECMASK, align 4
  %64 = and i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %65
  %67 = bitcast %struct.TYPE_8__* %24 to i8*
  %68 = bitcast %struct.TYPE_8__* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 16, i1 false)
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %56
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %23, align 4
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* %23, align 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %23, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = load i32*, i32** %18, align 8
  %85 = load i32*, i32** %17, align 8
  %86 = call i32 @get_code(i32 %78, i32 %79, i32 %80, i32 %81, %struct.TYPE_9__* %82, i32* %83, i32* %84, i32* %85)
  br label %185

87:                                               ; preds = %56
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = icmp ne i64* %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %92, i32* %8, align 4
  br label %252

93:                                               ; preds = %87
  store i32 0, i32* %25, align 4
  br label %94

94:                                               ; preds = %174, %93
  %95 = load i32, i32* %25, align 4
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %177

99:                                               ; preds = %94
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %25, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %100, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 63
  store i32 %109, i32* %26, align 4
  br label %110

110:                                              ; preds = %120, %99
  %111 = load i32, i32* %23, align 4
  %112 = load i32, i32* %26, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %116 = call i64 @bytestream2_get_bytes_left(%struct.TYPE_9__* %115)
  %117 = icmp sgt i64 %116, 0
  br label %118

118:                                              ; preds = %114, %110
  %119 = phi i1 [ false, %110 ], [ %117, %114 ]
  br i1 %119, label %120, label %125

120:                                              ; preds = %118
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %23, align 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %124 = call i32 @get_char(i32 %121, i32 %122, %struct.TYPE_9__* %123)
  br label %110

125:                                              ; preds = %118
  %126 = load i32, i32* %23, align 4
  %127 = load i32, i32* %26, align 4
  %128 = icmp sge i32 %126, %127
  br i1 %128, label %129, label %173

129:                                              ; preds = %125
  %130 = load i32*, i32** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %25, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i32, i32* %130, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = ashr i32 %138, 6
  %140 = sext i32 %139 to i64
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %23, align 4
  %143 = load i32, i32* %26, align 4
  %144 = sub nsw i32 %142, %143
  %145 = ashr i32 %141, %144
  %146 = sext i32 %145 to i64
  %147 = load i32, i32* %26, align 4
  %148 = zext i32 %147 to i64
  %149 = shl i64 1, %148
  %150 = sub nsw i64 %149, 1
  %151 = and i64 %146, %150
  %152 = icmp eq i64 %140, %151
  br i1 %152, label %153, label %172

153:                                              ; preds = %129
  %154 = load i32, i32* %26, align 4
  %155 = load i32, i32* %23, align 4
  %156 = sub nsw i32 %155, %154
  store i32 %156, i32* %23, align 4
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %25, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* %23, align 4
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %168 = load i32*, i32** %15, align 8
  %169 = load i32*, i32** %18, align 8
  %170 = load i32*, i32** %17, align 8
  %171 = call i32 @get_code(i32 %163, i32 %164, i32 %165, i32 %166, %struct.TYPE_9__* %167, i32* %168, i32* %169, i32* %170)
  br label %177

172:                                              ; preds = %129
  br label %173

173:                                              ; preds = %172, %125
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %25, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %25, align 4
  br label %94

177:                                              ; preds = %153, %94
  %178 = load i32, i32* %25, align 4
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %178, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %183, i32* %8, align 4
  br label %252

184:                                              ; preds = %177
  br label %185

185:                                              ; preds = %184, %72
  br label %52

186:                                              ; preds = %52
  br label %41

187:                                              ; preds = %41
  %188 = load i32, i32* %12, align 4
  %189 = sub nsw i32 8, %188
  %190 = and i32 %189, 7
  store i32 %190, i32* %22, align 4
  %191 = load i32, i32* %22, align 4
  %192 = load i32, i32* %16, align 4
  %193 = ashr i32 %192, %191
  store i32 %193, i32* %16, align 4
  %194 = load i32, i32* %22, align 4
  %195 = load i32, i32* %23, align 4
  %196 = sub nsw i32 %195, %194
  store i32 %196, i32* %23, align 4
  br label %197

197:                                              ; preds = %238, %187
  %198 = load i32, i32* %23, align 4
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %239

200:                                              ; preds = %197
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* @HUF_DECBITS, align 4
  %204 = load i32, i32* %23, align 4
  %205 = sub nsw i32 %203, %204
  %206 = shl i32 %202, %205
  %207 = load i32, i32* @HUF_DECMASK, align 4
  %208 = and i32 %206, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i64 %209
  %211 = bitcast %struct.TYPE_8__* %27 to i8*
  %212 = bitcast %struct.TYPE_8__* %210 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %211, i8* align 8 %212, i64 16, i1 false)
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %236

216:                                              ; preds = %200
  %217 = load i32, i32* %23, align 4
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp sge i32 %217, %219
  br i1 %220, label %221, label %236

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %23, align 4
  %225 = sub nsw i32 %224, %223
  store i32 %225, i32* %23, align 4
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* %16, align 4
  %230 = load i32, i32* %23, align 4
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %232 = load i32*, i32** %15, align 8
  %233 = load i32*, i32** %18, align 8
  %234 = load i32*, i32** %17, align 8
  %235 = call i32 @get_code(i32 %227, i32 %228, i32 %229, i32 %230, %struct.TYPE_9__* %231, i32* %232, i32* %233, i32* %234)
  br label %238

236:                                              ; preds = %216, %200
  %237 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %237, i32* %8, align 4
  br label %252

238:                                              ; preds = %221
  br label %197

239:                                              ; preds = %197
  %240 = load i32*, i32** %15, align 8
  %241 = load i32*, i32** %17, align 8
  %242 = ptrtoint i32* %240 to i64
  %243 = ptrtoint i32* %241 to i64
  %244 = sub i64 %242, %243
  %245 = sdiv exact i64 %244, 4
  %246 = load i32, i32* %14, align 4
  %247 = sext i32 %246 to i64
  %248 = icmp ne i64 %245, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %239
  %250 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %250, i32* %8, align 4
  br label %252

251:                                              ; preds = %239
  store i32 0, i32* %8, align 4
  br label %252

252:                                              ; preds = %251, %249, %236, %182, %91
  %253 = load i32, i32* %8, align 4
  ret i32 %253
}

declare dso_local i32 @get_char(i32, i32, %struct.TYPE_9__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_code(i32, i32, i32, i32, %struct.TYPE_9__*, i32*, i32*, i32*) #1

declare dso_local i64 @bytestream2_get_bytes_left(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
