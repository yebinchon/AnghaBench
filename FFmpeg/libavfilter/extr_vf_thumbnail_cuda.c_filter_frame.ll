; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_thumbnail_cuda.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_thumbnail_cuda.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_25__**, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64, i32, i64, %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 (i32*)*, i32 (%struct.TYPE_23__*, i32)*, i32 (i64, i32, i32, i32)*, i32 (i32)* }
%struct.TYPE_23__ = type { i32*, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_19__ = type { i32*, i32* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_24__ = type { i64 }

@HIST_SIZE = common dso_local global i32 0, align 4
@CU_MEMORYTYPE_DEVICE = common dso_local global i32 0, align 4
@CU_MEMORYTYPE_HOST = common dso_local global i32 0, align 4
@AV_PIX_FMT_NV12 = common dso_local global i64 0, align 8
@AV_PIX_FMT_YUV420P = common dso_local global i64 0, align 8
@AV_PIX_FMT_P010LE = common dso_local global i64 0, align 8
@AV_PIX_FMT_P016LE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i32*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_25__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_23__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %6, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %7, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** %8, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %31, i64 0
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %32, align 8
  store %struct.TYPE_25__* %33, %struct.TYPE_25__** %9, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %10, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %48, %struct.TYPE_24__** %11, align 8
  %49 = bitcast %struct.TYPE_23__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %49, i8 0, i64 48, i1 false)
  store i32 0, i32* %14, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  store i32* %50, i32** %58, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 3
  %61 = load i32 (i32)*, i32 (i32)** %60, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 %61(i32 %66)
  %68 = call i32 @CHECK_CU(i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %2
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %3, align 4
  br label %206

73:                                               ; preds = %2
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 2
  %76 = load i32 (i64, i32, i32, i32)*, i32 (i64, i32, i32, i32)** %75, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @HIST_SIZE, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 %76(i64 %79, i32 0, i32 %83, i32 %86)
  %88 = call i32 @CHECK_CU(i32 %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i32*
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @thumbnail(%struct.TYPE_16__* %89, i32* %93, i32* %94)
  %96 = load i32, i32* @CU_MEMORYTYPE_DEVICE, align 4
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 7
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* @CU_MEMORYTYPE_HOST, align 4
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 6
  store i32 %98, i32* %99, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 5
  store i64 %102, i64* %103, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  store i32* %104, i32** %105, align 8
  %106 = load i32, i32* @HIST_SIZE, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = trunc i64 %108 to i32
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  store i32 %109, i32* %110, align 8
  %111 = load i32, i32* @HIST_SIZE, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 4
  %114 = trunc i64 %113 to i32
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 2
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @HIST_SIZE, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 3
  store i32 %119, i32* %120, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 4
  store i32 1, i32* %121, align 4
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 1
  %124 = load i32 (%struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_23__*, i32)** %123, align 8
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 %124(%struct.TYPE_23__* %13, i32 %127)
  %129 = call i32 @CHECK_CU(i32 %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %73
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* %3, align 4
  br label %206

134:                                              ; preds = %73
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @AV_PIX_FMT_NV12, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %158, label %140

140:                                              ; preds = %134
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @AV_PIX_FMT_YUV420P, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %158, label %146

146:                                              ; preds = %140
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @AV_PIX_FMT_P010LE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @AV_PIX_FMT_P016LE, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %178

158:                                              ; preds = %152, %146, %140, %134
  store i32 256, i32* %15, align 4
  br label %159

159:                                              ; preds = %174, %158
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* @HIST_SIZE, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %177

163:                                              ; preds = %159
  %164 = load i32*, i32** %10, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 4, %168
  %170 = load i32*, i32** %10, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %169, i32* %173, align 4
  br label %174

174:                                              ; preds = %163
  %175 = load i32, i32* %15, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %15, align 4
  br label %159

177:                                              ; preds = %159
  br label %178

178:                                              ; preds = %177, %152
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  %181 = load i32 (i32*)*, i32 (i32*)** %180, align 8
  %182 = call i32 %181(i32* %12)
  %183 = call i32 @CHECK_CU(i32 %182)
  %184 = load i32, i32* %14, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %178
  %187 = load i32, i32* %14, align 4
  store i32 %187, i32* %3, align 4
  br label %206

188:                                              ; preds = %178
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %190, align 8
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ult i64 %195, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %188
  store i32 0, i32* %3, align 4
  br label %206

201:                                              ; preds = %188
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %204 = call i32 @get_best_frame(%struct.TYPE_16__* %203)
  %205 = call i32 @ff_filter_frame(%struct.TYPE_25__* %202, i32 %204)
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %201, %200, %186, %132, %71
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CHECK_CU(i32) #2

declare dso_local i32 @thumbnail(%struct.TYPE_16__*, i32*, i32*) #2

declare dso_local i32 @ff_filter_frame(%struct.TYPE_25__*, i32) #2

declare dso_local i32 @get_best_frame(%struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
