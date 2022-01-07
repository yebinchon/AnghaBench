; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_analyze_stereo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_analyze_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32, i32, i32, double, %struct.TYPE_28__*, %struct.TYPE_28__*** }
%struct.TYPE_28__ = type { double, i64 }
%struct.TYPE_29__ = type { i32, i32, i32, i32, %struct.TYPE_28__* }

@MAG_MASK = common dso_local global i32 0, align 4
@MAG_LSB = common dso_local global i32 0, align 4
@EXTRA_BRANCHES = common dso_local global i32 0, align 4
@EXTRA_SORT_FIRST = common dso_local global i32 0, align 4
@EXTRA_TRY_DELTAS = common dso_local global i32 0, align 4
@EXTRA_ADJUST_DELTAS = common dso_local global i32 0, align 4
@EXTRA_SORT_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_30__*, %struct.TYPE_28__*, %struct.TYPE_28__*, i32)* @analyze_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_stereo(%struct.TYPE_30__* %0, %struct.TYPE_28__* %1, %struct.TYPE_28__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_29__, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %5, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MAG_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @MAG_LSB, align 4
  %17 = ashr i32 %15, %16
  %18 = icmp sge i32 %17, 16
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MAG_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @MAG_LSB, align 4
  %27 = ashr i32 %25, %26
  %28 = add nsw i32 %27, 4
  %29 = mul nsw i32 %28, 256
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @FFMIN(i32 6912, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @allocate_buffers2(%struct.TYPE_30__* %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %4
  br label %436

46:                                               ; preds = %4
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 4
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %47, align 8
  %49 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %49, i32 0, i32 5
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %50, align 8
  %52 = call i32 @memcpy(%struct.TYPE_28__* %48, %struct.TYPE_28__* %51, i32 8)
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i32 0, i32 6
  %55 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %55, i64 0
  %57 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %57, i64 0
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %58, align 8
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %63, 4
  %65 = call i32 @memcpy(%struct.TYPE_28__* %59, %struct.TYPE_28__* %60, i32 %64)
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %66, i32 0, i32 6
  %68 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %68, i64 0
  %70 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %70, i64 1
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %71, align 8
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %76, 4
  %78 = call i32 @memcpy(%struct.TYPE_28__* %72, %struct.TYPE_28__* %73, i32 %77)
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %196, %46
  %80 = load i32, i32* %10, align 4
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 4
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br label %93

93:                                               ; preds = %84, %79
  %94 = phi i1 [ false, %79 ], [ %92, %84 ]
  br i1 %94, label %95, label %199

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %147

99:                                               ; preds = %95
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %100, i32 0, i32 6
  %102 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %102, i64 %104
  %106 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %106, i64 0
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %107, align 8
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 6
  %111 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %111, i64 %113
  %115 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %115, i64 1
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %116, align 8
  %118 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i32 0, i32 6
  %120 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %120, i64 %123
  %125 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %125, i64 0
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %126, align 8
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 6
  %130 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %130, i64 %133
  %135 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %135, i64 1
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %136, align 8
  %138 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 4
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i64 %144
  %146 = call i32 @decorr_stereo(%struct.TYPE_28__* %108, %struct.TYPE_28__* %117, %struct.TYPE_28__* %127, %struct.TYPE_28__* %137, i32 %140, %struct.TYPE_28__* %145, i32 1)
  br label %195

147:                                              ; preds = %95
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 6
  %150 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %150, i64 %152
  %154 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %154, i64 0
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %155, align 8
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 6
  %159 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %159, i64 %161
  %163 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %163, i64 1
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %164, align 8
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 6
  %168 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %168, i64 %171
  %173 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %173, i64 0
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %174, align 8
  %176 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %176, i32 0, i32 6
  %178 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %177, align 8
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %178, i64 %181
  %183 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %183, i64 1
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %184, align 8
  %186 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 4
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i64 %192
  %194 = call i32 @decorr_stereo_quick(%struct.TYPE_28__* %156, %struct.TYPE_28__* %165, %struct.TYPE_28__* %175, %struct.TYPE_28__* %185, i32 %188, %struct.TYPE_28__* %193)
  br label %195

195:                                              ; preds = %147, %99
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %10, align 4
  br label %79

199:                                              ; preds = %93
  %200 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %200, i32 0, i32 6
  %202 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %202, i64 %205
  %207 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %207, i64 0
  %209 = load %struct.TYPE_28__*, %struct.TYPE_28__** %208, align 8
  %210 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %210, i32 0, i32 6
  %212 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %212, i64 %215
  %217 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %217, i64 1
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %218, align 8
  %220 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @log2stereo(%struct.TYPE_28__* %209, %struct.TYPE_28__* %219, i32 %222, i32 0)
  %224 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 3
  store i32 %223, i32* %224, align 4
  %225 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %225, i32 0, i32 6
  %227 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = add nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %227, i64 %231
  %233 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %233, i64 0
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %234, align 8
  %236 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %236, i32 0, i32 6
  %238 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %237, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %238, i64 %240
  %242 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %242, i64 0
  %244 = load %struct.TYPE_28__*, %struct.TYPE_28__** %243, align 8
  %245 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = mul nsw i32 %247, 4
  %249 = call i32 @memcpy(%struct.TYPE_28__* %235, %struct.TYPE_28__* %244, i32 %248)
  %250 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %250, i32 0, i32 6
  %252 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %252, i64 %256
  %258 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %258, i64 1
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %259, align 8
  %261 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 6
  %263 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %262, align 8
  %264 = load i32, i32* %10, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %263, i64 %265
  %267 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %267, i64 1
  %269 = load %struct.TYPE_28__*, %struct.TYPE_28__** %268, align 8
  %270 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = mul nsw i32 %272, 4
  %274 = call i32 @memcpy(%struct.TYPE_28__* %260, %struct.TYPE_28__* %269, i32 %273)
  %275 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @EXTRA_BRANCHES, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %308

281:                                              ; preds = %199
  %282 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %283 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %283, i32 0, i32 4
  %285 = load double, double* %284, align 8
  %286 = fadd double %285, 5.000000e-01
  %287 = call i64 @floor(double %286)
  %288 = trunc i64 %287 to i32
  %289 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %289, i32 0, i32 6
  %291 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %291, i64 0
  %293 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %293, i64 0
  %295 = load %struct.TYPE_28__*, %struct.TYPE_28__** %294, align 8
  %296 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %296, i32 0, i32 6
  %298 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %298, i64 0
  %300 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %300, i64 1
  %302 = load %struct.TYPE_28__*, %struct.TYPE_28__** %301, align 8
  %303 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @log2stereo(%struct.TYPE_28__* %295, %struct.TYPE_28__* %302, i32 %305, i32 0)
  %307 = call i32 @recurse_stereo(%struct.TYPE_30__* %282, %struct.TYPE_29__* %9, i32 0, i32 %288, i32 %306)
  br label %308

308:                                              ; preds = %281, %199
  %309 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @EXTRA_SORT_FIRST, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %308
  %316 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %317 = call i32 @sort_stereo(%struct.TYPE_30__* %316, %struct.TYPE_29__* %9)
  br label %318

318:                                              ; preds = %315, %308
  %319 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @EXTRA_TRY_DELTAS, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %363

325:                                              ; preds = %318
  %326 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %327 = call i32 @delta_stereo(%struct.TYPE_30__* %326, %struct.TYPE_29__* %9)
  %328 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @EXTRA_ADJUST_DELTAS, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %359

334:                                              ; preds = %325
  %335 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %335, i32 0, i32 5
  %337 = load %struct.TYPE_28__*, %struct.TYPE_28__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %337, i64 0
  %339 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %359

342:                                              ; preds = %334
  %343 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %343, i32 0, i32 4
  %345 = load double, double* %344, align 8
  %346 = fmul double %345, 2.000000e+00
  %347 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %347, i32 0, i32 5
  %349 = load %struct.TYPE_28__*, %struct.TYPE_28__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %349, i64 0
  %351 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %350, i32 0, i32 0
  %352 = load double, double* %351, align 8
  %353 = fadd double %346, %352
  %354 = fdiv double %353, 3.000000e+00
  %355 = fptrunc double %354 to float
  %356 = fpext float %355 to double
  %357 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %357, i32 0, i32 4
  store double %356, double* %358, align 8
  br label %362

359:                                              ; preds = %334, %325
  %360 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %360, i32 0, i32 4
  store double 2.000000e+00, double* %361, align 8
  br label %362

362:                                              ; preds = %359, %342
  br label %363

363:                                              ; preds = %362, %318
  %364 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @EXTRA_SORT_LAST, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %373

370:                                              ; preds = %363
  %371 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %372 = call i32 @sort_stereo(%struct.TYPE_30__* %371, %struct.TYPE_29__* %9)
  br label %373

373:                                              ; preds = %370, %363
  %374 = load i32, i32* %8, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %411

376:                                              ; preds = %373
  %377 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %378 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %378, i32 0, i32 6
  %380 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %382 = load i32, i32* %381, align 8
  %383 = add nsw i32 %382, 1
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %380, i64 %384
  %386 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %386, i64 0
  %388 = load %struct.TYPE_28__*, %struct.TYPE_28__** %387, align 8
  %389 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 8
  %392 = mul nsw i32 %391, 4
  %393 = call i32 @memcpy(%struct.TYPE_28__* %377, %struct.TYPE_28__* %388, i32 %392)
  %394 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %395 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %395, i32 0, i32 6
  %397 = load %struct.TYPE_28__***, %struct.TYPE_28__**** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %399 = load i32, i32* %398, align 8
  %400 = add nsw i32 %399, 1
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.TYPE_28__**, %struct.TYPE_28__*** %397, i64 %401
  %403 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %403, i64 1
  %405 = load %struct.TYPE_28__*, %struct.TYPE_28__** %404, align 8
  %406 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %407 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 8
  %409 = mul nsw i32 %408, 4
  %410 = call i32 @memcpy(%struct.TYPE_28__* %394, %struct.TYPE_28__* %405, i32 %409)
  br label %411

411:                                              ; preds = %376, %373
  store i32 0, i32* %10, align 4
  br label %412

412:                                              ; preds = %429, %411
  %413 = load i32, i32* %10, align 4
  %414 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 2
  %415 = load i32, i32* %414, align 8
  %416 = icmp slt i32 %413, %415
  br i1 %416, label %417, label %432

417:                                              ; preds = %412
  %418 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %418, i32 0, i32 5
  %420 = load %struct.TYPE_28__*, %struct.TYPE_28__** %419, align 8
  %421 = load i32, i32* %10, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %420, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %423, i32 0, i32 1
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %428, label %427

427:                                              ; preds = %417
  br label %432

428:                                              ; preds = %417
  br label %429

429:                                              ; preds = %428
  %430 = load i32, i32* %10, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %10, align 4
  br label %412

432:                                              ; preds = %427, %412
  %433 = load i32, i32* %10, align 4
  %434 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %435 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %434, i32 0, i32 1
  store i32 %433, i32* %435, align 4
  br label %436

436:                                              ; preds = %432, %45
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i64 @allocate_buffers2(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_28__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @decorr_stereo(%struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__*, i32, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @decorr_stereo_quick(%struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__*, i32, %struct.TYPE_28__*) #1

declare dso_local i32 @log2stereo(%struct.TYPE_28__*, %struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @recurse_stereo(%struct.TYPE_30__*, %struct.TYPE_29__*, i32, i32, i32) #1

declare dso_local i64 @floor(double) #1

declare dso_local i32 @sort_stereo(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @delta_stereo(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
