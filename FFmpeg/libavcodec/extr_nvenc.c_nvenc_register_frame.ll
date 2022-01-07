; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvenc.c_nvenc_register_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvenc.c_nvenc_register_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__*, i32, %struct.TYPE_18__ }
%struct.TYPE_17__ = type { i64, i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 (i32, %struct.TYPE_20__*)* }
%struct.TYPE_20__ = type { i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i64*, i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, i32 }

@AV_PIX_FMT_CUDA = common dso_local global i64 0, align 8
@AV_PIX_FMT_D3D11 = common dso_local global i64 0, align 8
@NV_ENC_REGISTER_RESOURCE_VER = common dso_local global i32 0, align 4
@NV_ENC_INPUT_RESOURCE_TYPE_CUDADEVICEPTR = common dso_local global i32 0, align 4
@NV_ENC_INPUT_RESOURCE_TYPE_DIRECTX = common dso_local global i32 0, align 4
@NV_ENC_BUFFER_FORMAT_UNDEFINED = common dso_local global i64 0, align 8
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid input pixel format: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NV_ENC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Error registering an input resource\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)* @nvenc_register_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvenc_register_frame(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %6, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 3
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %7, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %8, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %26, %struct.TYPE_22__** %9, align 8
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %96, %2
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %99

33:                                               ; preds = %27
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AV_PIX_FMT_CUDA, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %47, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %3, align 4
  br label %221

56:                                               ; preds = %39, %33
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @AV_PIX_FMT_D3D11, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %94

62:                                               ; preds = %56
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %70, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %62
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %85, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %77
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %3, align 4
  br label %221

94:                                               ; preds = %77, %62, %56
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %27

99:                                               ; preds = %27
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %101 = call i32 @nvenc_find_free_reg_resource(%struct.TYPE_24__* %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %3, align 4
  br label %221

106:                                              ; preds = %99
  %107 = load i32, i32* @NV_ENC_REGISTER_RESOURCE_VER, align 4
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 8
  store i32 %107, i32* %108, align 4
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 7
  store i32 %111, i32* %112, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 6
  store i32 %115, i32* %116, align 4
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 5
  store i32 %121, i32* %122, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i64 %127, i64* %128, align 8
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @AV_PIX_FMT_CUDA, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %106
  %135 = load i32, i32* @NV_ENC_INPUT_RESOURCE_TYPE_CUDADEVICEPTR, align 4
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 4
  store i32 %135, i32* %136, align 4
  br label %153

137:                                              ; preds = %106
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @AV_PIX_FMT_D3D11, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %137
  %144 = load i32, i32* @NV_ENC_INPUT_RESOURCE_TYPE_DIRECTX, align 4
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 4
  store i32 %144, i32* %145, align 4
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 1
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  store i64 %150, i64* %151, align 8
  br label %152

152:                                              ; preds = %143, %137
  br label %153

153:                                              ; preds = %152, %134
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @nvenc_map_buffer_format(i32 %156)
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 2
  store i64 %157, i64* %158, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @NV_ENC_BUFFER_FORMAT_UNDEFINED, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %153
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %165 = load i32, i32* @AV_LOG_FATAL, align 4
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @av_get_pix_fmt_name(i32 %168)
  %170 = call i32 @av_log(%struct.TYPE_24__* %164, i32 %165, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* @EINVAL, align 4
  %172 = call i32 @AVERROR(i32 %171)
  store i32 %172, i32* %3, align 4
  br label %221

173:                                              ; preds = %153
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 0
  %176 = load i32 (i32, %struct.TYPE_20__*)*, i32 (i32, %struct.TYPE_20__*)** %175, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 %176(i32 %179, %struct.TYPE_20__* %10)
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* @NV_ENC_SUCCESS, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %173
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @nvenc_print_error(%struct.TYPE_24__* %185, i32 %186, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %188 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %188, i32* %3, align 4
  br label %221

189:                                              ; preds = %173
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 0
  %192 = load i64*, i64** %191, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 0
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %196, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  store i64 %194, i64* %201, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  store i64 %203, i64* %210, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %214, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 2
  store i32 %212, i32* %219, align 8
  %220 = load i32, i32* %12, align 4
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %189, %184, %163, %104, %92, %54
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i32 @nvenc_find_free_reg_resource(%struct.TYPE_24__*) #1

declare dso_local i64 @nvenc_map_buffer_format(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_24__*, i32, i8*, i32) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @nvenc_print_error(%struct.TYPE_24__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
