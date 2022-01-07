; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau_mpeg4.c_vdpau_mpeg4_start_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau_mpeg4.c_vdpau_mpeg4_start_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_20__*, %struct.TYPE_13__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_19__*, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { %struct.vdpau_picture_context* }
%struct.vdpau_picture_context = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32*, i32*, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@VDP_INVALID_HANDLE = common dso_local global i8* null, align 8
@AV_CODEC_ID_H263 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*, i32)* @vdpau_mpeg4_start_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdpau_mpeg4_start_frame(%struct.TYPE_14__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.vdpau_picture_context*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %7, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %8, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 18
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %9, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %23, align 8
  store %struct.vdpau_picture_context* %24, %struct.vdpau_picture_context** %10, align 8
  %25 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %10, align 8
  %26 = getelementptr inbounds %struct.vdpau_picture_context, %struct.vdpau_picture_context* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %11, align 8
  %28 = load i8*, i8** @VDP_INVALID_HANDLE, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 16
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @VDP_INVALID_HANDLE, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 17
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %69 [
    i32 129, label %39
    i32 128, label %55
  ]

39:                                               ; preds = %3
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 17
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @ff_vdpau_get_surface_id(i32 %43)
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** @VDP_INVALID_HANDLE, align 8
  %47 = icmp ne i8* %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i8*, i8** %12, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 17
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  store i32 2, i32* %54, align 8
  br label %55

55:                                               ; preds = %3, %39
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 16
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @ff_vdpau_get_surface_id(i32 %59)
  store i8* %60, i8** %12, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load i8*, i8** @VDP_INVALID_HANDLE, align 8
  %63 = icmp ne i8* %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i8*, i8** %12, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 16
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %55, %3
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %72, i32* %76, align 4
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %79, i32* %83, align 4
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 1
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 %87, i32* %91, align 4
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = ashr i32 %94, 1
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 %95, i32* %99, align 4
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 15
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 15
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 14
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 14
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 13
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 13
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 12
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 11
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 12
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 10
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 11
  store i32 %141, i32* %143, align 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @AV_CODEC_ID_H263, align 8
  %150 = icmp eq i64 %148, %149
  %151 = zext i1 %150 to i32
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 8
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 9
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 10
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 9
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 8
  store i32 %166, i32* %168, align 8
  store i32 0, i32* %13, align 4
  br label %169

169:                                              ; preds = %199, %69
  %170 = load i32, i32* %13, align 4
  %171 = icmp slt i32 %170, 64
  br i1 %171, label %172, label %202

172:                                              ; preds = %169
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 6
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 7
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %179, i32* %185, align 4
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 5
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 6
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %192, i32* %198, align 4
  br label %199

199:                                              ; preds = %172
  %200 = load i32, i32* %13, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %13, align 4
  br label %169

202:                                              ; preds = %169
  %203 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %10, align 8
  %204 = load i32*, i32** %5, align 8
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @ff_vdpau_common_start_frame(%struct.vdpau_picture_context* %203, i32* %204, i32 %205)
  %207 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %10, align 8
  %208 = load i32*, i32** %5, align 8
  %209 = load i32, i32* %6, align 4
  %210 = call i32 @ff_vdpau_add_buffer(%struct.vdpau_picture_context* %207, i32* %208, i32 %209)
  ret i32 %210
}

declare dso_local i8* @ff_vdpau_get_surface_id(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ff_vdpau_common_start_frame(%struct.vdpau_picture_context*, i32*, i32) #1

declare dso_local i32 @ff_vdpau_add_buffer(%struct.vdpau_picture_context*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
