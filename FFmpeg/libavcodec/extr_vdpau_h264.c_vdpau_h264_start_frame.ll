; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau_h264.c_vdpau_h264_start_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau_h264.c_vdpau_h264_start_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i64, %struct.TYPE_16__, %struct.TYPE_21__*, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { i32*, %struct.vdpau_picture_context* }
%struct.vdpau_picture_context = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_17__, %struct.TYPE_18__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_19__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i64, i64, i32, i64, i32 }
%struct.TYPE_20__ = type { i32*, i32, i32, i32, i32, i32, i64*, i64, i32*, i32, i32, i32, i32 }

@PICT_FRAME = common dso_local global i64 0, align 8
@PICT_BOTTOM_FIELD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i32)* @vdpau_h264_start_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdpau_h264_start_frame(%struct.TYPE_13__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.vdpau_picture_context*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  store %struct.TYPE_22__* %15, %struct.TYPE_22__** %7, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %8, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %9, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %10, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %29 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %28, align 8
  store %struct.vdpau_picture_context* %29, %struct.vdpau_picture_context** %11, align 8
  %30 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %11, align 8
  %31 = getelementptr inbounds %struct.vdpau_picture_context, %struct.vdpau_picture_context* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %12, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 28
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @h264_foc(i32 %39)
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 27
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  store i8* %40, i8** %44, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @h264_foc(i32 %49)
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 27
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  store i8* %50, i8** %54, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 26
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PICT_FRAME, align 8
  %72 = icmp ne i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PICT_BOTTOM_FIELD, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 25
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 8
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %3
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br label %99

99:                                               ; preds = %93, %3
  %100 = phi i1 [ false, %3 ], [ %98, %93 ]
  %101 = zext i1 %100 to i32
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 12
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 24
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 11
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 23
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 22
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 21
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 20
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 8
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 19
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 8
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 18
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 7
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %145, 26
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 17
  store i64 %146, i64* %148, align 8
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 6
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 0
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %153, 1
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 16
  store i64 %154, i64* %156, align 8
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 6
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 1
  %161 = load i64, i64* %160, align 8
  %162 = sub nsw i64 %161, 1
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 15
  store i64 %162, i64* %164, align 8
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = sub nsw i64 %167, 4
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 14
  store i64 %168, i64* %170, align 8
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 13
  store i64 %173, i64* %175, align 8
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %99
  br label %186

181:                                              ; preds = %99
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sub nsw i32 %184, 4
  br label %186

186:                                              ; preds = %181, %180
  %187 = phi i32 [ 0, %180 ], [ %185, %181 ]
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 4
  store i32 %187, i32* %189, align 8
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 12
  store i32 %192, i32* %194, align 8
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 11
  store i32 %197, i32* %199, align 4
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 10
  store i32 %202, i32* %204, align 8
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 9
  store i32 %207, i32* %209, align 4
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 8
  store i32 %212, i32* %214, align 8
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 7
  store i32 %217, i32* %219, align 4
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @memcpy(i32 %222, i32 %225, i32 4)
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 5
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @memcpy(i32 %231, i32 %236, i32 4)
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 5
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 3
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @memcpy(i32 %242, i32 %247, i32 4)
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %250 = call i32 @vdpau_h264_set_reference_frames(%struct.TYPE_13__* %249)
  %251 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %11, align 8
  %252 = load i32*, i32** %5, align 8
  %253 = load i32, i32* %6, align 4
  %254 = call i32 @ff_vdpau_common_start_frame(%struct.vdpau_picture_context* %251, i32* %252, i32 %253)
  ret i32 %254
}

declare dso_local i8* @h264_foc(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @vdpau_h264_set_reference_frames(%struct.TYPE_13__*) #1

declare dso_local i32 @ff_vdpau_common_start_frame(%struct.vdpau_picture_context*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
