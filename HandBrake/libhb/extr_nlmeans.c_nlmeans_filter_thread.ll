; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_nlmeans.c_nlmeans_filter_thread.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_nlmeans.c_nlmeans_filter_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32*, i64*, i32, %struct.TYPE_16__*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { i32, i32*, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"NLMeans thread started for segment %d\00", align 1
@NLMEANS_PREFILTER_MODE_PASSTHRU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nlmeans_filter_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlmeans_filter_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %3, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %4, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @hb_deep_log(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %1, %299
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @taskset_thread_wait4start(i32* %22, i32 %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @taskset_thread_stop(i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %317

31:                                               ; preds = %20
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i64 %36
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %6, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 12
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.TYPE_15__* @hb_frame_buffer_init(i32 %41, i32 %44, i32 %47)
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %7, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 12
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 12
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 12
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 12
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 11
  store i32* %78, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %296, %31
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 3
  br i1 %81, label %82, label %299

82:                                               ; preds = %79
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @NLMEANS_PREFILTER_MODE_PASSTHRU, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %147

93:                                               ; preds = %82
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @nlmeans_prefilter(i32* %99, i32 %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @nlmeans_deborder(i32* %113, i32 %121, i32 %129, i32 %137, i32 %145)
  br label %296

147:                                              ; preds = %82
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = load i64*, i64** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %196

156:                                              ; preds = %147
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @nlmeans_deborder(i32* %162, i32 %170, i32 %178, i32 %186, i32 %194)
  br label %296

196:                                              ; preds = %147
  %197 = load i32*, i32** %8, align 8
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %9, align 4
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 10
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %215, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %223, align 8
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %231, align 8
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %239, align 8
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 1
  %248 = load i64*, i64** %247, align 8
  %249 = load i32, i32* %9, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %248, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 9
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 8
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %9, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 7
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %9, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 6
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %9, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 5
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %9, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 4
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %9, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @nlmeans_plane(i32* %197, %struct.TYPE_16__* %198, i32 %205, i32 %206, i32 %213, i32 %221, i32 %229, i32 %237, i32 %245, i64 %252, i32 %259, i32 %266, i32 %273, i32 %280, i32 %287, i32 %294)
  br label %296

296:                                              ; preds = %196, %156, %93
  %297 = load i32, i32* %9, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %9, align 4
  br label %79

299:                                              ; preds = %79
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 3
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %301, align 8
  %303 = load i32, i32* %5, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 0
  store i32 %307, i32* %309, align 8
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 1
  store %struct.TYPE_15__* %310, %struct.TYPE_15__** %312, align 8
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 2
  %315 = load i32, i32* %5, align 4
  %316 = call i32 @taskset_thread_complete(i32* %314, i32 %315)
  br label %20

317:                                              ; preds = %30
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 2
  %320 = load i32, i32* %5, align 4
  %321 = call i32 @taskset_thread_complete(i32* %319, i32 %320)
  ret void
}

declare dso_local i32 @hb_deep_log(i32, i8*, i32) #1

declare dso_local i32 @taskset_thread_wait4start(i32*, i32) #1

declare dso_local i64 @taskset_thread_stop(i32*, i32) #1

declare dso_local %struct.TYPE_15__* @hb_frame_buffer_init(i32, i32, i32) #1

declare dso_local i32 @nlmeans_prefilter(i32*, i32) #1

declare dso_local i32 @nlmeans_deborder(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmeans_plane(i32*, %struct.TYPE_16__*, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @taskset_thread_complete(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
