; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau_vc1.c_vdpau_vc1_start_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau_vc1.c_vdpau_vc1_start_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_16__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_12__, i32, %struct.TYPE_11__, i32, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { %struct.vdpau_picture_context* }
%struct.vdpau_picture_context = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i8*, i8* }

@VDP_INVALID_HANDLE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*, i32)* @vdpau_vc1_start_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdpau_vc1_start_frame(%struct.TYPE_17__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.vdpau_picture_context*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %7, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 4
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %8, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 7
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %9, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %22, align 8
  store %struct.vdpau_picture_context* %23, %struct.vdpau_picture_context** %10, align 8
  %24 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %10, align 8
  %25 = getelementptr inbounds %struct.vdpau_picture_context, %struct.vdpau_picture_context* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %11, align 8
  %27 = load i8*, i8** @VDP_INVALID_HANDLE, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 29
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @VDP_INVALID_HANDLE, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 30
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %76 [
    i32 129, label %36
    i32 128, label %56
  ]

36:                                               ; preds = %3
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @ff_vdpau_get_surface_id(i32 %45)
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i8*, i8** @VDP_INVALID_HANDLE, align 8
  %49 = icmp ne i8* %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i8*, i8** %12, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 30
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %41, %36
  br label %56

56:                                               ; preds = %3, %55
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @ff_vdpau_get_surface_id(i32 %65)
  store i8* %66, i8** %12, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i8*, i8** @VDP_INVALID_HANDLE, align 8
  %69 = icmp ne i8* %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i8*, i8** %12, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 29
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %61, %56
  br label %76

76:                                               ; preds = %75, %3
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 28
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 26
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  store i32 4, i32* %85, align 8
  br label %98

86:                                               ; preds = %76
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, 1
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sdiv i32 %93, 3
  %95 = add nsw i32 %90, %94
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %86, %83
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 25
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 25
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 1
  br label %109

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %103
  %110 = phi i64 [ %107, %103 ], [ 0, %108 ]
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 27
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 24
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 26
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 23
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 25
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 22
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 24
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 21
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 23
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 20
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 22
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 19
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 21
  store i32 %145, i32* %147, align 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 18
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 20
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 17
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 19
  store i32 %155, i32* %157, align 4
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 16
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 18
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 15
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 17
  store i32 %165, i32* %167, align 4
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 14
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 16
  store i32 %170, i32* %172, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 13
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 15
  store i32 %175, i32* %177, align 4
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 12
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 14
  store i32 %180, i32* %182, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 13
  store i32 %186, i32* %188, align 4
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 11
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 12
  store i32 %191, i32* %193, align 8
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 10
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 11
  store i32 %196, i32* %198, align 4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 9
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 10
  store i32 %201, i32* %203, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 8
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 9
  store i32 %206, i32* %208, align 4
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 8
  store i32 %211, i32* %213, align 8
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 7
  store i32 %216, i32* %218, align 4
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 6
  store i32 %221, i32* %223, align 8
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = shl i32 %229, 1
  %231 = or i32 %226, %230
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 4
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 5
  store i32 %237, i32* %239, align 4
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = and i32 %242, 1
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 3
  store i32 %243, i32* %245, align 4
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 4
  store i32 %248, i32* %250, align 8
  %251 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %10, align 8
  %252 = load i32*, i32** %5, align 8
  %253 = load i32, i32* %6, align 4
  %254 = call i32 @ff_vdpau_common_start_frame(%struct.vdpau_picture_context* %251, i32* %252, i32 %253)
  ret i32 %254
}

declare dso_local i8* @ff_vdpau_get_surface_id(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ff_vdpau_common_start_frame(%struct.vdpau_picture_context*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
