; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gif.c_gif_crop_opaque.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gif.c_gif_crop_opaque.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64**, i32* }

@GF_OFFSETTING = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%dx%d image at pos (%d;%d) [area:%dx%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, i64*, i32, i32*, i32*, i32*, i32*)* @gif_crop_opaque to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gif_crop_opaque(%struct.TYPE_8__* %0, i32* %1, i64* %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64* %2, i64** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %17, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @GF_OFFSETTING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %245

35:                                               ; preds = %8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %245

40:                                               ; preds = %35
  %41 = load i32*, i32** %10, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %245, label %43

43:                                               ; preds = %40
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64**, i64*** %47, align 8
  %49 = getelementptr inbounds i64*, i64** %48, i64 0
  %50 = load i64*, i64** %49, align 8
  store i64* %50, i64** %18, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %19, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %20, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %21, align 4
  br label %66

66:                                               ; preds = %91, %43
  %67 = load i32*, i32** %16, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %21, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %66
  %72 = load i64*, i64** %18, align 8
  %73 = load i32*, i32** %16, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %19, align 4
  %76 = mul nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %72, i64 %77
  %79 = load i64*, i64** %11, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %12, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %79, i64 %84
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @memcmp(i64* %78, i64* %85, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %71
  br label %95

91:                                               ; preds = %71
  %92 = load i32*, i32** %16, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %66

95:                                               ; preds = %90, %66
  br label %96

96:                                               ; preds = %119, %95
  %97 = load i32, i32* %21, align 4
  %98 = load i32*, i32** %16, align 8
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %97, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %96
  %102 = load i64*, i64** %18, align 8
  %103 = load i32, i32* %21, align 4
  %104 = load i32, i32* %19, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %102, i64 %106
  %108 = load i64*, i64** %11, align 8
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %12, align 4
  %111 = mul nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %108, i64 %112
  %114 = load i32*, i32** %13, align 8
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @memcmp(i64* %107, i64* %113, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %101
  br label %122

119:                                              ; preds = %101
  %120 = load i32, i32* %21, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %21, align 4
  br label %96

122:                                              ; preds = %118, %96
  %123 = load i32, i32* %21, align 4
  %124 = add nsw i32 %123, 1
  %125 = load i32*, i32** %16, align 8
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %124, %126
  %128 = load i32*, i32** %14, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %172, %122
  %130 = load i32*, i32** %15, align 8
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %20, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %176

134:                                              ; preds = %129
  store i32 1, i32* %22, align 4
  %135 = load i32*, i32** %16, align 8
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %23, align 4
  br label %137

137:                                              ; preds = %165, %134
  %138 = load i32, i32* %23, align 4
  %139 = load i32, i32* %21, align 4
  %140 = icmp sle i32 %138, %139
  br i1 %140, label %141, label %168

141:                                              ; preds = %137
  %142 = load i64*, i64** %18, align 8
  %143 = load i32, i32* %23, align 4
  %144 = load i32, i32* %19, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load i32*, i32** %15, align 8
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %145, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %142, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load i64*, i64** %11, align 8
  %153 = load i32, i32* %23, align 4
  %154 = load i32, i32* %12, align 4
  %155 = mul nsw i32 %153, %154
  %156 = load i32*, i32** %15, align 8
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %155, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %152, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %151, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %141
  store i32 0, i32* %22, align 4
  br label %168

164:                                              ; preds = %141
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %23, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %23, align 4
  br label %137

168:                                              ; preds = %163, %137
  %169 = load i32, i32* %22, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %168
  br label %176

172:                                              ; preds = %168
  %173 = load i32*, i32** %15, align 8
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  br label %129

176:                                              ; preds = %171, %129
  br label %177

177:                                              ; preds = %218, %176
  %178 = load i32, i32* %20, align 4
  %179 = load i32*, i32** %15, align 8
  %180 = load i32, i32* %179, align 4
  %181 = icmp sgt i32 %178, %180
  br i1 %181, label %182, label %221

182:                                              ; preds = %177
  store i32 1, i32* %24, align 4
  %183 = load i32*, i32** %16, align 8
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %25, align 4
  br label %185

185:                                              ; preds = %211, %182
  %186 = load i32, i32* %25, align 4
  %187 = load i32, i32* %21, align 4
  %188 = icmp sle i32 %186, %187
  br i1 %188, label %189, label %214

189:                                              ; preds = %185
  %190 = load i64*, i64** %18, align 8
  %191 = load i32, i32* %25, align 4
  %192 = load i32, i32* %19, align 4
  %193 = mul nsw i32 %191, %192
  %194 = load i32, i32* %20, align 4
  %195 = add nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %190, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = load i64*, i64** %11, align 8
  %200 = load i32, i32* %25, align 4
  %201 = load i32, i32* %12, align 4
  %202 = mul nsw i32 %200, %201
  %203 = load i32, i32* %20, align 4
  %204 = add nsw i32 %202, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %199, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %198, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %189
  store i32 0, i32* %24, align 4
  br label %214

210:                                              ; preds = %189
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %25, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %25, align 4
  br label %185

214:                                              ; preds = %209, %185
  %215 = load i32, i32* %24, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %214
  br label %221

218:                                              ; preds = %214
  %219 = load i32, i32* %20, align 4
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %20, align 4
  br label %177

221:                                              ; preds = %217, %177
  %222 = load i32, i32* %20, align 4
  %223 = add nsw i32 %222, 1
  %224 = load i32*, i32** %15, align 8
  %225 = load i32, i32* %224, align 4
  %226 = sub nsw i32 %223, %225
  %227 = load i32*, i32** %13, align 8
  store i32 %226, i32* %227, align 4
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %229 = load i32, i32* @AV_LOG_DEBUG, align 4
  %230 = load i32*, i32** %13, align 8
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %14, align 8
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %15, align 8
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** %16, align 8
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @av_log(%struct.TYPE_8__* %228, i32 %229, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %231, i32 %233, i32 %235, i32 %237, i32 %240, i32 %243)
  br label %245

245:                                              ; preds = %221, %40, %35, %8
  ret void
}

declare dso_local i64 @memcmp(i64*, i64*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
