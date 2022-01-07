; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_common_uninit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_common_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__**, i32* }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"fft_time         = %16.3f s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"cqt_time         = %16.3f s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"process_cqt_time = %16.3f s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"update_sono_time = %16.3f s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"alloc_time       = %16.3f s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"bar_time         = %16.3f s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"axis_time        = %16.3f s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"sono_time        = %16.3f s.\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"plot_time        = %16.3f s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @common_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_uninit(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load i32, i32* @AV_LOG_DEBUG, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 23
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sitofp i32 %18 to double
  %20 = fmul double %19, 0x3EB0C6F7A0B5ED8D
  %21 = fptosi double %20 to i32
  %22 = call i32 @av_log(i32 %14, i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %11, %1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 23
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sitofp i32 %35 to double
  %37 = fmul double %36, 0x3EB0C6F7A0B5ED8D
  %38 = fptosi double %37 to i32
  %39 = call i32 @av_log(i32 %31, i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %28, %23
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 23
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sitofp i32 %52 to double
  %54 = fmul double %53, 0x3EB0C6F7A0B5ED8D
  %55 = fptosi double %54 to i32
  %56 = call i32 @av_log(i32 %48, i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %45, %40
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 23
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = sitofp i32 %69 to double
  %71 = fmul double %70, 0x3EB0C6F7A0B5ED8D
  %72 = fptosi double %71 to i32
  %73 = call i32 @av_log(i32 %65, i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %62, %57
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 23
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = sitofp i32 %86 to double
  %88 = fmul double %87, 0x3EB0C6F7A0B5ED8D
  %89 = fptosi double %88 to i32
  %90 = call i32 @av_log(i32 %82, i32 %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %79, %74
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 23
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = sitofp i32 %103 to double
  %105 = fmul double %104, 0x3EB0C6F7A0B5ED8D
  %106 = fptosi double %105 to i32
  %107 = call i32 @av_log(i32 %99, i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %96, %91
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %108
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 23
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = sitofp i32 %120 to double
  %122 = fmul double %121, 0x3EB0C6F7A0B5ED8D
  %123 = fptosi double %122 to i32
  %124 = call i32 @av_log(i32 %116, i32 %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %113, %108
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 23
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = sitofp i32 %137 to double
  %139 = fmul double %138, 0x3EB0C6F7A0B5ED8D
  %140 = fptosi double %139 to i32
  %141 = call i32 @av_log(i32 %133, i32 %134, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %130, %125
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %145, %148
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %149, %152
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %153, %156
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %157, %160
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %161, %164
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %165, %168
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %169, %172
  store i32 %173, i32* %5, align 4
  %174 = load i32, i32* %5, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %142
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 23
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %4, align 4
  %181 = load i32, i32* %5, align 4
  %182 = sitofp i32 %181 to double
  %183 = fmul double %182, 0x3EB0C6F7A0B5ED8D
  %184 = fptosi double %183 to i32
  %185 = call i32 @av_log(i32 %179, i32 %180, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %176, %142
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 7
  store i32 0, i32* %188, align 4
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 6
  store i32 0, i32* %190, align 8
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 5
  store i32 0, i32* %192, align 4
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 4
  store i32 0, i32* %194, align 8
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 3
  store i32 0, i32* %196, align 4
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 2
  store i32 0, i32* %198, align 8
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 1
  store i32 0, i32* %200, align 4
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  store i32 0, i32* %202, align 8
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 22
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %204, align 8
  %206 = icmp ne %struct.TYPE_7__* %205, null
  br i1 %206, label %207, label %239

207:                                              ; preds = %186
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 22
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %239, label %216

216:                                              ; preds = %207
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 22
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %220, align 8
  %222 = call i32 @av_freep(%struct.TYPE_6__** %221)
  store i32 0, i32* %3, align 4
  br label %223

223:                                              ; preds = %235, %216
  %224 = load i32, i32* %3, align 4
  %225 = icmp slt i32 %224, 4
  br i1 %225, label %226, label %238

226:                                              ; preds = %223
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 22
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %230, align 8
  %232 = load i32, i32* %3, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %231, i64 %233
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %234, align 8
  br label %235

235:                                              ; preds = %226
  %236 = load i32, i32* %3, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %3, align 4
  br label %223

238:                                              ; preds = %223
  br label %239

239:                                              ; preds = %238, %207, %186
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 22
  %242 = call i32 @av_frame_free(%struct.TYPE_7__** %241)
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 21
  %245 = call i32 @av_frame_free(%struct.TYPE_7__** %244)
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 20
  %248 = load i32*, i32** %247, align 8
  %249 = call i32 @av_fft_end(i32* %248)
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 20
  store i32* null, i32** %251, align 8
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 19
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %253, align 8
  %255 = icmp ne %struct.TYPE_6__* %254, null
  br i1 %255, label %256, label %276

256:                                              ; preds = %239
  store i32 0, i32* %3, align 4
  br label %257

257:                                              ; preds = %272, %256
  %258 = load i32, i32* %3, align 4
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 8
  %261 = load i32, i32* %260, align 8
  %262 = icmp slt i32 %258, %261
  br i1 %262, label %263, label %275

263:                                              ; preds = %257
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 19
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = load i32, i32* %3, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 0
  %271 = call i32 @av_freep(%struct.TYPE_6__** %270)
  br label %272

272:                                              ; preds = %263
  %273 = load i32, i32* %3, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %3, align 4
  br label %257

275:                                              ; preds = %257
  br label %276

276:                                              ; preds = %275, %239
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 19
  %279 = call i32 @av_freep(%struct.TYPE_6__** %278)
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 18
  %282 = call i32 @av_freep(%struct.TYPE_6__** %281)
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 17
  %285 = call i32 @av_freep(%struct.TYPE_6__** %284)
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 16
  %288 = call i32 @av_freep(%struct.TYPE_6__** %287)
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 15
  %291 = call i32 @av_freep(%struct.TYPE_6__** %290)
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 14
  %294 = call i32 @av_freep(%struct.TYPE_6__** %293)
  %295 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 13
  %297 = call i32 @av_freep(%struct.TYPE_6__** %296)
  %298 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 12
  %300 = call i32 @av_freep(%struct.TYPE_6__** %299)
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 11
  %303 = call i32 @av_freep(%struct.TYPE_6__** %302)
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 10
  %306 = call i32 @av_freep(%struct.TYPE_6__** %305)
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 9
  %309 = call i32 @av_freep(%struct.TYPE_6__** %308)
  ret void
}

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_6__**) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_7__**) #1

declare dso_local i32 @av_fft_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
