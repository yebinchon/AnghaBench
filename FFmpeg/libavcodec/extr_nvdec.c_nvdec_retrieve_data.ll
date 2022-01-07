; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvdec.c_nvdec_retrieve_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvdec.c_nvdec_retrieve_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32, i32*, i32**, %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_17__*, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_21__*, i32, %struct.TYPE_20__*, i32, i32 }
%struct.TYPE_21__ = type { i32 (i32*)*, i32 (i32)* }
%struct.TYPE_20__ = type { i32 (i32, i64)*, i32 (i32, i32, i64*, i32*, %struct.TYPE_25__*)* }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@nvdec_unmap_mapped_frame = common dso_local global i32 0, align 4
@AV_BUFFER_FLAG_READONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_16__*)* @nvdec_retrieve_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvdec_retrieve_data(i8* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_25__, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 5
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %25, %struct.TYPE_24__** %6, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %29, %struct.TYPE_22__** %7, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %35, %struct.TYPE_23__** %8, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %41, %struct.TYPE_26__** %9, align 8
  %42 = bitcast %struct.TYPE_25__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %42, i8 0, i64 12, i1 false)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %11, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  %52 = load i32 (i32)*, i32 (i32)** %51, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 %52(i32 %55)
  %57 = call i32 @CHECK_CU(i32 %56)
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %2
  %61 = load i32, i32* %19, align 4
  store i32 %61, i32* %3, align 4
  br label %214

62:                                               ; preds = %2
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = load i32 (i32, i32, i64*, i32*, %struct.TYPE_25__*)*, i32 (i32, i32, i64*, i32*, %struct.TYPE_25__*)** %66, align 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %67(i32 %70, i32 %73, i64* %13, i32* %14, %struct.TYPE_25__* %10)
  %75 = call i32 @CHECK_CU(i32 %74)
  store i32 %75, i32* %19, align 4
  %76 = load i32, i32* %19, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  br label %205

79:                                               ; preds = %62
  %80 = call %struct.TYPE_22__* @av_mallocz(i32 24)
  store %struct.TYPE_22__* %80, %struct.TYPE_22__** %11, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %82 = icmp ne %struct.TYPE_22__* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = call i32 @AVERROR(i32 %84)
  store i32 %85, i32* %19, align 4
  br label %178

86:                                               ; preds = %79
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %88 = bitcast %struct.TYPE_22__* %87 to i32*
  %89 = load i32, i32* @nvdec_unmap_mapped_frame, align 4
  %90 = load i64, i64* %13, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = load i32, i32* @AV_BUFFER_FLAG_READONLY, align 4
  %93 = call i32 @av_buffer_create(i32* %88, i32 24, i32 %89, i8* %91, i32 %92)
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  store i32 %93, i32* %97, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %86
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = call i32 @AVERROR(i32 %105)
  store i32 %106, i32* %19, align 4
  br label %178

107:                                              ; preds = %86
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = call i8* @av_buffer_ref(%struct.TYPE_17__* %115)
  %117 = bitcast i8* %116 to %struct.TYPE_17__*
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 1
  store %struct.TYPE_17__* %117, %struct.TYPE_17__** %119, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  %123 = call i8* @av_buffer_ref(%struct.TYPE_17__* %122)
  %124 = bitcast i8* %123 to %struct.TYPE_17__*
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  store %struct.TYPE_17__* %124, %struct.TYPE_17__** %126, align 8
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @av_pix_fmt_get_chroma_sub_sample(i32 %129, i32* %17, i32* %18)
  store i32 0, i32* %15, align 4
  br label %131

131:                                              ; preds = %174, %107
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %15, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %177

140:                                              ; preds = %131
  %141 = load i64, i64* %13, align 8
  %142 = load i32, i32* %16, align 4
  %143 = zext i32 %142 to i64
  %144 = add nsw i64 %141, %143
  %145 = inttoptr i64 %144 to i32*
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 3
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %15, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  store i32* %145, i32** %151, align 8
  %152 = load i32, i32* %14, align 4
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %15, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %152, i32* %158, align 4
  %159 = load i32, i32* %14, align 4
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %140
  %166 = load i32, i32* %18, align 4
  br label %168

167:                                              ; preds = %140
  br label %168

168:                                              ; preds = %167, %165
  %169 = phi i32 [ %166, %165 ], [ 0, %167 ]
  %170 = ashr i32 %162, %169
  %171 = mul i32 %159, %170
  %172 = load i32, i32* %16, align 4
  %173 = add i32 %172, %171
  store i32 %173, i32* %16, align 4
  br label %174

174:                                              ; preds = %168
  %175 = load i32, i32* %15, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %15, align 4
  br label %131

177:                                              ; preds = %131
  br label %205

178:                                              ; preds = %104, %83
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %198, label %185

185:                                              ; preds = %178
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = load i32 (i32, i64)*, i32 (i32, i64)** %189, align 8
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load i64, i64* %13, align 8
  %195 = call i32 %190(i32 %193, i64 %194)
  %196 = call i32 @CHECK_CU(i32 %195)
  %197 = call i32 @av_freep(%struct.TYPE_22__** %11)
  br label %204

198:                                              ; preds = %178
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = call i32 @av_buffer_unref(i32* %202)
  br label %204

204:                                              ; preds = %198, %185
  br label %205

205:                                              ; preds = %204, %177, %78
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 0
  %210 = load i32 (i32*)*, i32 (i32*)** %209, align 8
  %211 = call i32 %210(i32* %12)
  %212 = call i32 @CHECK_CU(i32 %211)
  %213 = load i32, i32* %19, align 4
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %205, %60
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CHECK_CU(i32) #2

declare dso_local %struct.TYPE_22__* @av_mallocz(i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_buffer_create(i32*, i32, i32, i8*, i32) #2

declare dso_local i8* @av_buffer_ref(%struct.TYPE_17__*) #2

declare dso_local i32 @av_pix_fmt_get_chroma_sub_sample(i32, i32*, i32*) #2

declare dso_local i32 @av_freep(%struct.TYPE_22__**) #2

declare dso_local i32 @av_buffer_unref(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
