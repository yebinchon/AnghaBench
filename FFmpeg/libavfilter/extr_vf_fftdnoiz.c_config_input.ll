; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fftdnoiz.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fftdnoiz.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, float, i32, i32, i32, i32, i32, i8*, i8*, i8** }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@import_row8 = common dso_local global i32 0, align 4
@export_row8 = common dso_local global i32 0, align 4
@import_row16 = common dso_local global i32 0, align 4
@export_row16 = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"nox:%d noy:%d size:%d\0A\00", align 1
@CURRENT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PREV = common dso_local global i64 0, align 8
@NEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %4, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %6, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_13__* @av_pix_fmt_desc_get(i32 %18)
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %5, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %30, 8
  br i1 %31, label %32, label %39

32:                                               ; preds = %1
  %33 = load i32, i32* @import_row8, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @export_row8, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  br label %64

39:                                               ; preds = %1
  %40 = load i32, i32* @import_row16, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @export_row16, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 1, %52
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %53, %56
  %58 = mul nsw i32 %49, %57
  %59 = shl i32 1, %58
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %39, %32
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @AV_CEIL_RSHIFT(i32 %67, i32 %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 7
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i64 2
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 7
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  store i32 %72, i32* %82, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 7
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i64 3
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  store i32 %85, i32* %90, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 7
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i32 %85, i32* %95, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @AV_CEIL_RSHIFT(i32 %98, i32 %101)
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 7
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i64 2
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  store i32 %103, i32* %108, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 7
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i64 1
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  store i32 %103, i32* %113, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 7
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i64 3
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  store i32 %116, i32* %121, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 7
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  store i32 %116, i32* %126, align 4
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @av_pix_fmt_count_planes(i32 %129)
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %354, %64
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %357

139:                                              ; preds = %133
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 7
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i64 %144
  store %struct.TYPE_11__* %145, %struct.TYPE_11__** %8, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 1, %148
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 %154, %157
  %159 = sitofp i32 %158 to float
  %160 = fdiv float 1.000000e+00, %159
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 3
  store float %160, float* %162, align 4
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = mul nsw i32 %165, %168
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %174, %177
  store i32 %178, i32* %9, align 4
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sub nsw i32 %182, 1
  %184 = add nsw i32 %181, %183
  %185 = load i32, i32* %9, align 4
  %186 = sdiv i32 %184, %185
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 5
  store i32 %186, i32* %188, align 4
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %9, align 4
  %193 = sub nsw i32 %192, 1
  %194 = add nsw i32 %191, %193
  %195 = load i32, i32* %9, align 4
  %196 = sdiv i32 %194, %195
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 6
  store i32 %196, i32* %198, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %200 = load i32, i32* @AV_LOG_DEBUG, align 4
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %9, align 4
  %208 = call i32 @av_log(%struct.TYPE_15__* %199, i32 %200, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %203, i32 %206, i32 %207)
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = mul nsw i32 %211, %214
  %216 = sext i32 %215 to i64
  %217 = mul i64 %216, 4
  %218 = trunc i64 %217 to i32
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 7
  store i32 %218, i32* %220, align 4
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 8
  %227 = mul nsw i32 %223, %226
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 4
  %231 = call i8* @av_calloc(i32 %227, i32 %230)
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 11
  %234 = load i8**, i8*** %233, align 8
  %235 = load i64, i64* @CURRENT, align 8
  %236 = getelementptr inbounds i8*, i8** %234, i64 %235
  store i8* %231, i8** %236, align 8
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 11
  %239 = load i8**, i8*** %238, align 8
  %240 = load i64, i64* @CURRENT, align 8
  %241 = getelementptr inbounds i8*, i8** %239, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %247, label %244

244:                                              ; preds = %139
  %245 = load i32, i32* @ENOMEM, align 4
  %246 = call i32 @AVERROR(i32 %245)
  store i32 %246, i32* %2, align 4
  br label %358

247:                                              ; preds = %139
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %280

252:                                              ; preds = %247
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 8
  %259 = mul nsw i32 %255, %258
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 7
  %262 = load i32, i32* %261, align 4
  %263 = call i8* @av_calloc(i32 %259, i32 %262)
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 11
  %266 = load i8**, i8*** %265, align 8
  %267 = load i64, i64* @PREV, align 8
  %268 = getelementptr inbounds i8*, i8** %266, i64 %267
  store i8* %263, i8** %268, align 8
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 11
  %271 = load i8**, i8*** %270, align 8
  %272 = load i64, i64* @PREV, align 8
  %273 = getelementptr inbounds i8*, i8** %271, i64 %272
  %274 = load i8*, i8** %273, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %279, label %276

276:                                              ; preds = %252
  %277 = load i32, i32* @ENOMEM, align 4
  %278 = call i32 @AVERROR(i32 %277)
  store i32 %278, i32* %2, align 4
  br label %358

279:                                              ; preds = %252
  br label %280

280:                                              ; preds = %279, %247
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %313

285:                                              ; preds = %280
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 8
  %292 = mul nsw i32 %288, %291
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 7
  %295 = load i32, i32* %294, align 4
  %296 = call i8* @av_calloc(i32 %292, i32 %295)
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 11
  %299 = load i8**, i8*** %298, align 8
  %300 = load i64, i64* @NEXT, align 8
  %301 = getelementptr inbounds i8*, i8** %299, i64 %300
  store i8* %296, i8** %301, align 8
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 11
  %304 = load i8**, i8*** %303, align 8
  %305 = load i64, i64* @NEXT, align 8
  %306 = getelementptr inbounds i8*, i8** %304, i64 %305
  %307 = load i8*, i8** %306, align 8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %312, label %309

309:                                              ; preds = %285
  %310 = load i32, i32* @ENOMEM, align 4
  %311 = call i32 @AVERROR(i32 %310)
  store i32 %311, i32* %2, align 4
  br label %358

312:                                              ; preds = %285
  br label %313

313:                                              ; preds = %312, %280
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = mul nsw i32 2, %316
  %318 = sext i32 %317 to i64
  %319 = mul i64 %318, 4
  %320 = trunc i64 %319 to i32
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 8
  store i32 %320, i32* %322, align 8
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 8
  %328 = load i32, i32* %327, align 8
  %329 = call i8* @av_calloc(i32 %325, i32 %328)
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 10
  store i8* %329, i8** %331, align 8
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 8
  %337 = load i32, i32* %336, align 8
  %338 = call i8* @av_calloc(i32 %334, i32 %337)
  %339 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 9
  store i8* %338, i8** %340, align 8
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 10
  %343 = load i8*, i8** %342, align 8
  %344 = icmp ne i8* %343, null
  br i1 %344, label %345, label %350

345:                                              ; preds = %313
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i32 0, i32 9
  %348 = load i8*, i8** %347, align 8
  %349 = icmp ne i8* %348, null
  br i1 %349, label %353, label %350

350:                                              ; preds = %345, %313
  %351 = load i32, i32* @ENOMEM, align 4
  %352 = call i32 @AVERROR(i32 %351)
  store i32 %352, i32* %2, align 4
  br label %358

353:                                              ; preds = %345
  br label %354

354:                                              ; preds = %353
  %355 = load i32, i32* %7, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %7, align 4
  br label %133

357:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %358

358:                                              ; preds = %357, %350, %309, %276, %244
  %359 = load i32, i32* %2, align 4
  ret i32 %359
}

declare dso_local %struct.TYPE_13__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i8* @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @av_pix_fmt_count_planes(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, i32, i32, i32) #1

declare dso_local i8* @av_calloc(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
