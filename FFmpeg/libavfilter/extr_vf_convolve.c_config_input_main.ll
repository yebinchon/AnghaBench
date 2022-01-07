; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolve.c_config_input_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolve.c_config_input_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32*, i32, i32*, i32*, i8**, i8**, i8**, i8**, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @config_input_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input_main(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %4, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_11__* @av_pix_fmt_desc_get(i32 %18)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %5, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @AV_CEIL_RSHIFT(i32 %22, i32 %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 %27, i32* %31, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %27, i32* %35, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  store i32 %38, i32* %42, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %38, i32* %46, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @AV_CEIL_RSHIFT(i32 %49, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32 %54, i32* %58, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %54, i32* %62, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  store i32 %65, i32* %69, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %65, i32* %73, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 9
  store i32 %84, i32* %86, align 8
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %258, %1
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %261

93:                                               ; preds = %87
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %8, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @FFMAX(i32 %108, i32 %109)
  store i32 %110, i32* %10, align 4
  store i32 1, i32* %6, align 4
  br label %111

111:                                              ; preds = %117, %93
  %112 = load i32, i32* %6, align 4
  %113 = shl i32 1, %112
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %111

120:                                              ; preds = %111
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 1, %134
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %135, i32* %141, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = mul i64 %156, 4
  %158 = trunc i64 %157 to i32
  %159 = call i8* @av_calloc(i32 %148, i32 %158)
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 8
  %162 = load i8**, i8*** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  store i8* %159, i8** %165, align 8
  %166 = icmp ne i8* %159, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %120
  %168 = load i32, i32* @ENOMEM, align 4
  %169 = call i32 @AVERROR(i32 %168)
  store i32 %169, i32* %2, align 4
  br label %262

170:                                              ; preds = %120
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 4
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = mul i64 %185, 4
  %187 = trunc i64 %186 to i32
  %188 = call i8* @av_calloc(i32 %177, i32 %187)
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 7
  %191 = load i8**, i8*** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %191, i64 %193
  store i8* %188, i8** %194, align 8
  %195 = icmp ne i8* %188, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %170
  %197 = load i32, i32* @ENOMEM, align 4
  %198 = call i32 @AVERROR(i32 %197)
  store i32 %198, i32* %2, align 4
  br label %262

199:                                              ; preds = %170
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 4
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 4
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = mul i64 %214, 4
  %216 = trunc i64 %215 to i32
  %217 = call i8* @av_calloc(i32 %206, i32 %216)
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 6
  %220 = load i8**, i8*** %219, align 8
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8*, i8** %220, i64 %222
  store i8* %217, i8** %223, align 8
  %224 = icmp ne i8* %217, null
  br i1 %224, label %228, label %225

225:                                              ; preds = %199
  %226 = load i32, i32* @ENOMEM, align 4
  %227 = call i32 @AVERROR(i32 %226)
  store i32 %227, i32* %2, align 4
  br label %262

228:                                              ; preds = %199
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 4
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 4
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %7, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = mul i64 %243, 4
  %245 = trunc i64 %244 to i32
  %246 = call i8* @av_calloc(i32 %235, i32 %245)
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 5
  %249 = load i8**, i8*** %248, align 8
  %250 = load i32, i32* %7, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %249, i64 %251
  store i8* %246, i8** %252, align 8
  %253 = icmp ne i8* %246, null
  br i1 %253, label %257, label %254

254:                                              ; preds = %228
  %255 = load i32, i32* @ENOMEM, align 4
  %256 = call i32 @AVERROR(i32 %255)
  store i32 %256, i32* %2, align 4
  br label %262

257:                                              ; preds = %228
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %7, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %7, align 4
  br label %87

261:                                              ; preds = %87
  store i32 0, i32* %2, align 4
  br label %262

262:                                              ; preds = %261, %254, %225, %196, %167
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local %struct.TYPE_11__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i8* @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i8* @av_calloc(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
