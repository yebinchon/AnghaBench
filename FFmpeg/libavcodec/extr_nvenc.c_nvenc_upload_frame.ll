; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvenc.c_nvenc_upload_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvenc.c_nvenc_upload_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_26__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__, i64, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 (i32, i32)*, i32 (i32, %struct.TYPE_28__*)*, i32 (i32, %struct.TYPE_23__*)* }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i32* }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32 }

@AV_PIX_FMT_CUDA = common dso_local global i64 0, align 8
@AV_PIX_FMT_D3D11 = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Could not register an input HW frame\0A\00", align 1
@NV_ENC_MAP_INPUT_RESOURCE_VER = common dso_local global i32 0, align 4
@NV_ENC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Error mapping an input resource\00", align 1
@NV_ENC_LOCK_INPUT_BUFFER_VER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed locking nvenc input buffer\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed unlocking input buffer!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_25__*)* @nvenc_upload_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvenc_upload_frame(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_28__, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  %15 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  store %struct.TYPE_27__* %17, %struct.TYPE_27__** %8, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 2
  store %struct.TYPE_26__* %19, %struct.TYPE_26__** %9, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  store %struct.TYPE_29__* %21, %struct.TYPE_29__** %10, align 8
  %22 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AV_PIX_FMT_CUDA, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AV_PIX_FMT_D3D11, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %158

33:                                               ; preds = %27, %3
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %36 = call i32 @nvenc_register_frame(%struct.TYPE_31__* %34, %struct.TYPE_30__* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %41 = load i32, i32* @AV_LOG_ERROR, align 4
  %42 = call i32 @av_log(%struct.TYPE_31__* %40, i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %4, align 4
  br label %208

44:                                               ; preds = %33
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %49 = call i32 @av_frame_ref(i32 %47, %struct.TYPE_30__* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %208

54:                                               ; preds = %44
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %116, label %64

64:                                               ; preds = %54
  %65 = load i32, i32* @NV_ENC_MAP_INPUT_RESOURCE_VER, align 4
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 3
  store i32 %65, i32* %73, align 4
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 2
  store i32 %81, i32* %89, align 8
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 2
  %92 = load i32 (i32, %struct.TYPE_23__*)*, i32 (i32, %struct.TYPE_23__*)** %91, align 8
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  %103 = call i32 %92(i32 %95, %struct.TYPE_23__* %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @NV_ENC_SUCCESS, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %64
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @av_frame_unref(i32 %110)
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @nvenc_print_error(%struct.TYPE_31__* %112, i32 %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 %114, i32* %4, align 4
  br label %208

115:                                              ; preds = %64
  br label %116

116:                                              ; preds = %115, %54
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  store i32 0, i32* %4, align 4
  br label %208

158:                                              ; preds = %27
  %159 = bitcast %struct.TYPE_28__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %159, i8 0, i64 16, i1 false)
  %160 = load i32, i32* @NV_ENC_LOCK_INPUT_BUFFER_VER, align 4
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 2
  store i32 %160, i32* %161, align 4
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 1
  store i32 %164, i32* %165, align 4
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 1
  %168 = load i32 (i32, %struct.TYPE_28__*)*, i32 (i32, %struct.TYPE_28__*)** %167, align 8
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 %168(i32 %171, %struct.TYPE_28__* %14)
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* @NV_ENC_SUCCESS, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %158
  %177 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @nvenc_print_error(%struct.TYPE_31__* %177, i32 %178, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 %179, i32* %4, align 4
  br label %208

180:                                              ; preds = %158
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 4
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %187 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %188 = call i32 @nvenc_copy_frame(%struct.TYPE_31__* %185, %struct.TYPE_25__* %186, %struct.TYPE_28__* %14, %struct.TYPE_30__* %187)
  store i32 %188, i32* %11, align 4
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %189, i32 0, i32 0
  %191 = load i32 (i32, i32)*, i32 (i32, i32)** %190, align 8
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 %191(i32 %194, i32 %197)
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* @NV_ENC_SUCCESS, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %180
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @nvenc_print_error(%struct.TYPE_31__* %203, i32 %204, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 %205, i32* %4, align 4
  br label %208

206:                                              ; preds = %180
  %207 = load i32, i32* %11, align 4
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %206, %202, %176, %116, %107, %52, %39
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32 @nvenc_register_frame(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i32 @av_log(%struct.TYPE_31__*, i32, i8*) #1

declare dso_local i32 @av_frame_ref(i32, %struct.TYPE_30__*) #1

declare dso_local i32 @av_frame_unref(i32) #1

declare dso_local i32 @nvenc_print_error(%struct.TYPE_31__*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @nvenc_copy_frame(%struct.TYPE_31__*, %struct.TYPE_25__*, %struct.TYPE_28__*, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
