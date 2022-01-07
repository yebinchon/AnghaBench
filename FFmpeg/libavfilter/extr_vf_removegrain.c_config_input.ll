; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removegrain.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removegrain.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32*, i32, i32, i8**, i8**, i8** }
%struct.TYPE_10__ = type { i32, i32 }

@mode01 = common dso_local global i8* null, align 8
@mode02 = common dso_local global i8* null, align 8
@mode03 = common dso_local global i8* null, align 8
@mode04 = common dso_local global i8* null, align 8
@mode05 = common dso_local global i8* null, align 8
@mode06 = common dso_local global i8* null, align 8
@mode07 = common dso_local global i8* null, align 8
@mode08 = common dso_local global i8* null, align 8
@mode09 = common dso_local global i8* null, align 8
@mode10 = common dso_local global i8* null, align 8
@mode1112 = common dso_local global i8* null, align 8
@mode1314 = common dso_local global i8* null, align 8
@mode1516 = common dso_local global i8* null, align 8
@mode17 = common dso_local global i8* null, align 8
@mode18 = common dso_local global i8* null, align 8
@mode19 = common dso_local global i8* null, align 8
@mode20 = common dso_local global i8* null, align 8
@mode21 = common dso_local global i8* null, align 8
@mode22 = common dso_local global i8* null, align 8
@mode23 = common dso_local global i8* null, align 8
@mode24 = common dso_local global i8* null, align 8
@ARCH_X86 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %3, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_10__* @av_pix_fmt_desc_get(i32 %13)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %4, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @av_pix_fmt_count_planes(i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @AV_CEIL_RSHIFT(i8* %23, i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 6
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  store i8* %27, i8** %31, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 6
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  store i8* %27, i8** %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 6
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 3
  store i8* %38, i8** %42, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 6
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  store i8* %38, i8** %46, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @AV_CEIL_RSHIFT(i8* %49, i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 5
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 2
  store i8* %53, i8** %57, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 5
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  store i8* %53, i8** %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 5
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 3
  store i8* %64, i8** %68, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 5
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  store i8* %64, i8** %72, align 8
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %288, %1
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %291

79:                                               ; preds = %73
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %287 [
    i32 1, label %87
    i32 2, label %95
    i32 3, label %103
    i32 4, label %111
    i32 5, label %119
    i32 6, label %127
    i32 7, label %135
    i32 8, label %143
    i32 9, label %151
    i32 10, label %159
    i32 11, label %167
    i32 12, label %175
    i32 13, label %183
    i32 14, label %193
    i32 15, label %203
    i32 16, label %213
    i32 17, label %223
    i32 18, label %231
    i32 19, label %239
    i32 20, label %247
    i32 21, label %255
    i32 22, label %263
    i32 23, label %271
    i32 24, label %279
  ]

87:                                               ; preds = %79
  %88 = load i8*, i8** @mode01, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 4
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  store i8* %88, i8** %94, align 8
  br label %287

95:                                               ; preds = %79
  %96 = load i8*, i8** @mode02, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 4
  %99 = load i8**, i8*** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  store i8* %96, i8** %102, align 8
  br label %287

103:                                              ; preds = %79
  %104 = load i8*, i8** @mode03, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 4
  %107 = load i8**, i8*** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  store i8* %104, i8** %110, align 8
  br label %287

111:                                              ; preds = %79
  %112 = load i8*, i8** @mode04, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 4
  %115 = load i8**, i8*** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  store i8* %112, i8** %118, align 8
  br label %287

119:                                              ; preds = %79
  %120 = load i8*, i8** @mode05, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 4
  %123 = load i8**, i8*** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  store i8* %120, i8** %126, align 8
  br label %287

127:                                              ; preds = %79
  %128 = load i8*, i8** @mode06, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 4
  %131 = load i8**, i8*** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  store i8* %128, i8** %134, align 8
  br label %287

135:                                              ; preds = %79
  %136 = load i8*, i8** @mode07, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 4
  %139 = load i8**, i8*** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  store i8* %136, i8** %142, align 8
  br label %287

143:                                              ; preds = %79
  %144 = load i8*, i8** @mode08, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 4
  %147 = load i8**, i8*** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  store i8* %144, i8** %150, align 8
  br label %287

151:                                              ; preds = %79
  %152 = load i8*, i8** @mode09, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 4
  %155 = load i8**, i8*** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  store i8* %152, i8** %158, align 8
  br label %287

159:                                              ; preds = %79
  %160 = load i8*, i8** @mode10, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 4
  %163 = load i8**, i8*** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  store i8* %160, i8** %166, align 8
  br label %287

167:                                              ; preds = %79
  %168 = load i8*, i8** @mode1112, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 4
  %171 = load i8**, i8*** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  store i8* %168, i8** %174, align 8
  br label %287

175:                                              ; preds = %79
  %176 = load i8*, i8** @mode1112, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 4
  %179 = load i8**, i8*** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  store i8* %176, i8** %182, align 8
  br label %287

183:                                              ; preds = %79
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  store i32 1, i32* %185, align 8
  %186 = load i8*, i8** @mode1314, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 4
  %189 = load i8**, i8*** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %189, i64 %191
  store i8* %186, i8** %192, align 8
  br label %287

193:                                              ; preds = %79
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 3
  store i32 1, i32* %195, align 4
  %196 = load i8*, i8** @mode1314, align 8
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 4
  %199 = load i8**, i8*** %198, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  store i8* %196, i8** %202, align 8
  br label %287

203:                                              ; preds = %79
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 2
  store i32 1, i32* %205, align 8
  %206 = load i8*, i8** @mode1516, align 8
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 4
  %209 = load i8**, i8*** %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %209, i64 %211
  store i8* %206, i8** %212, align 8
  br label %287

213:                                              ; preds = %79
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 3
  store i32 1, i32* %215, align 4
  %216 = load i8*, i8** @mode1516, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 4
  %219 = load i8**, i8*** %218, align 8
  %220 = load i32, i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8*, i8** %219, i64 %221
  store i8* %216, i8** %222, align 8
  br label %287

223:                                              ; preds = %79
  %224 = load i8*, i8** @mode17, align 8
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 4
  %227 = load i8**, i8*** %226, align 8
  %228 = load i32, i32* %5, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %227, i64 %229
  store i8* %224, i8** %230, align 8
  br label %287

231:                                              ; preds = %79
  %232 = load i8*, i8** @mode18, align 8
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 4
  %235 = load i8**, i8*** %234, align 8
  %236 = load i32, i32* %5, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8*, i8** %235, i64 %237
  store i8* %232, i8** %238, align 8
  br label %287

239:                                              ; preds = %79
  %240 = load i8*, i8** @mode19, align 8
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 4
  %243 = load i8**, i8*** %242, align 8
  %244 = load i32, i32* %5, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8*, i8** %243, i64 %245
  store i8* %240, i8** %246, align 8
  br label %287

247:                                              ; preds = %79
  %248 = load i8*, i8** @mode20, align 8
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 4
  %251 = load i8**, i8*** %250, align 8
  %252 = load i32, i32* %5, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8*, i8** %251, i64 %253
  store i8* %248, i8** %254, align 8
  br label %287

255:                                              ; preds = %79
  %256 = load i8*, i8** @mode21, align 8
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 4
  %259 = load i8**, i8*** %258, align 8
  %260 = load i32, i32* %5, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8*, i8** %259, i64 %261
  store i8* %256, i8** %262, align 8
  br label %287

263:                                              ; preds = %79
  %264 = load i8*, i8** @mode22, align 8
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 4
  %267 = load i8**, i8*** %266, align 8
  %268 = load i32, i32* %5, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8*, i8** %267, i64 %269
  store i8* %264, i8** %270, align 8
  br label %287

271:                                              ; preds = %79
  %272 = load i8*, i8** @mode23, align 8
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 4
  %275 = load i8**, i8*** %274, align 8
  %276 = load i32, i32* %5, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8*, i8** %275, i64 %277
  store i8* %272, i8** %278, align 8
  br label %287

279:                                              ; preds = %79
  %280 = load i8*, i8** @mode24, align 8
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 4
  %283 = load i8**, i8*** %282, align 8
  %284 = load i32, i32* %5, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8*, i8** %283, i64 %285
  store i8* %280, i8** %286, align 8
  br label %287

287:                                              ; preds = %79, %279, %271, %263, %255, %247, %239, %231, %223, %213, %203, %193, %183, %175, %167, %159, %151, %143, %135, %127, %119, %111, %103, %95, %87
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %5, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %5, align 4
  br label %73

291:                                              ; preds = %73
  %292 = load i64, i64* @ARCH_X86, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %296 = call i32 @ff_removegrain_init_x86(%struct.TYPE_9__* %295)
  br label %297

297:                                              ; preds = %294, %291
  ret i32 0
}

declare dso_local %struct.TYPE_10__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_pix_fmt_count_planes(i32) #1

declare dso_local i8* @AV_CEIL_RSHIFT(i8*, i32) #1

declare dso_local i32 @ff_removegrain_init_x86(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
