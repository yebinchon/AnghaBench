; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopenjpegenc.c_mj2_create_image.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopenjpegenc.c_mj2_create_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i64, i64 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i64, i32, i32, i32 }

@OPJ_CLRSPC_UNKNOWN = common dso_local global i32 0, align 4
@OPJ_CLRSPC_GRAY = common dso_local global i32 0, align 4
@OPJ_CLRSPC_SRGB = common dso_local global i32 0, align 4
@OPJ_CLRSPC_SYCC = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"The requested pixel format '%s' is not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_19__*, %struct.TYPE_17__*)* @mj2_create_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @mj2_create_image(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca [4 x %struct.TYPE_16__], align 16
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_18__* @av_pix_fmt_desc_get(i32 %16)
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %6, align 8
  %18 = bitcast [4 x %struct.TYPE_16__]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 160, i1 false)
  %19 = load i32, i32* @OPJ_CLRSPC_UNKNOWN, align 4
  store i32 %19, i32* %13, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 1, i32* %21, align 16
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 1, i32* %23, align 16
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 1, %26
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 1, %32
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %48 [
    i32 168, label %42
    i32 161, label %42
    i32 172, label %42
    i32 171, label %42
    i32 170, label %42
    i32 169, label %42
    i32 162, label %42
    i32 167, label %44
    i32 165, label %44
    i32 166, label %44
    i32 164, label %44
    i32 178, label %44
    i32 173, label %44
    i32 177, label %44
    i32 176, label %44
    i32 175, label %44
    i32 174, label %44
    i32 163, label %44
    i32 160, label %46
    i32 159, label %46
    i32 158, label %46
    i32 152, label %46
    i32 146, label %46
    i32 145, label %46
    i32 139, label %46
    i32 135, label %46
    i32 131, label %46
    i32 153, label %46
    i32 147, label %46
    i32 140, label %46
    i32 136, label %46
    i32 132, label %46
    i32 128, label %46
    i32 157, label %46
    i32 151, label %46
    i32 144, label %46
    i32 138, label %46
    i32 134, label %46
    i32 130, label %46
    i32 156, label %46
    i32 150, label %46
    i32 143, label %46
    i32 155, label %46
    i32 149, label %46
    i32 142, label %46
    i32 154, label %46
    i32 148, label %46
    i32 141, label %46
    i32 137, label %46
    i32 133, label %46
    i32 129, label %46
  ]

42:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %43 = load i32, i32* @OPJ_CLRSPC_GRAY, align 4
  store i32 %43, i32* %13, align 4
  br label %56

44:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %45 = load i32, i32* @OPJ_CLRSPC_SRGB, align 4
  store i32 %45, i32* %13, align 4
  br label %56

46:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %47 = load i32, i32* @OPJ_CLRSPC_SYCC, align 4
  store i32 %47, i32* %13, align 4
  br label %56

48:                                               ; preds = %2
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @av_get_pix_fmt_name(i32 %53)
  %55 = call i32 @av_log(%struct.TYPE_19__* %49, i32 %50, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %54)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %181

56:                                               ; preds = %46, %44, %42
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %142, %56
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %145

61:                                               ; preds = %57
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 6
  store i32 %69, i32* %73, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 5
  store i32 %81, i32* %85, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 4
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  store i32 %93, i32* %97, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  store i32 %101, i32* %105, align 4
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %108, %112
  %114 = sub nsw i32 %113, 1
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sdiv i32 %114, %118
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 2
  store i32 %119, i32* %123, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %126, %130
  %132 = sub nsw i32 %131, 1
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = sdiv i32 %132, %136
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 3
  store i32 %137, i32* %141, align 4
  br label %142

142:                                              ; preds = %61
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %57

145:                                              ; preds = %57
  %146 = load i32, i32* %12, align 4
  %147 = getelementptr inbounds [4 x %struct.TYPE_16__], [4 x %struct.TYPE_16__]* %7, i64 0, i64 0
  %148 = load i32, i32* %13, align 4
  %149 = call %struct.TYPE_15__* @opj_image_create(i32 %146, %struct.TYPE_16__* %147, i32 %148)
  store %struct.TYPE_15__* %149, %struct.TYPE_15__** %8, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %151 = icmp ne %struct.TYPE_15__* %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %145
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %181

153:                                              ; preds = %145
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 3
  store i64 0, i64* %155, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  store i64 0, i64* %157, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %160, 1
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 %161, %164
  %166 = add nsw i32 %165, 1
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %171, 1
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %172, %175
  %177 = add nsw i32 %176, 1
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %180, %struct.TYPE_15__** %3, align 8
  br label %181

181:                                              ; preds = %153, %152, %48
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %182
}

declare dso_local %struct.TYPE_18__* @av_pix_fmt_desc_get(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*, i32) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

declare dso_local %struct.TYPE_15__* @opj_image_create(i32, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
