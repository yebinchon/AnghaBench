; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_mpeg2.c_fill_picture_parameters.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_mpeg2.c_fill_picture_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MpegEncContext = type { i32, i64, i32, i32, i32**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i8* }

@PICT_FRAME = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.MpegEncContext*, %struct.TYPE_10__*)* @fill_picture_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_picture_parameters(i32* %0, i32* %1, %struct.MpegEncContext* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.MpegEncContext*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.MpegEncContext* %2, %struct.MpegEncContext** %7, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %8, align 8
  %11 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %12 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %11, i32 0, i32 19
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %9, align 8
  %14 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %15 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PICT_FRAME, align 4
  %18 = icmp ne i32 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = call i32 @memset(%struct.TYPE_10__* %20, i32 0, i32 224)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @ff_dxva2_get_surface_index(i32* %22, i32* %23, i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 35
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 34
  store i64 0, i64* %31, align 8
  %32 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %33 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %41 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %40, i32 0, i32 18
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @ff_dxva2_get_surface_index(i32* %38, i32* %39, i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %51

48:                                               ; preds = %4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i32 65535, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %37
  %52 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %53 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %61 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %60, i32 0, i32 17
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @ff_dxva2_get_surface_index(i32* %58, i32* %59, i32 %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %71

68:                                               ; preds = %51
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store i32 65535, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %57
  %72 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %73 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %72, i32 0, i32 16
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %74, 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 33
  store i64 %75, i64* %77, align 8
  %78 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %79 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = ashr i32 %80, %81
  %83 = sub nsw i32 %82, 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 3
  store i32 15, i32* %87, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 4
  store i32 15, i32* %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 5
  store i32 7, i32* %91, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 6
  store i32 7, i32* %93, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 7
  store i32 7, i32* %95, align 4
  %96 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %97 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 8
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %71
  %104 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %105 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %104, i32 0, i32 15
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  br label %109

109:                                              ; preds = %103, %71
  %110 = phi i1 [ false, %71 ], [ %108, %103 ]
  %111 = zext i1 %110 to i32
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 9
  store i32 %111, i32* %113, align 4
  %114 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %115 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 10
  store i32 %119, i32* %121, align 8
  %122 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %123 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 11
  store i32 %127, i32* %129, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 32
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 31
  store i64 0, i64* %133, align 8
  %134 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %135 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %134, i32 0, i32 14
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 30
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 12
  store i32 1, i32* %140, align 8
  %141 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %142 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 1, i32 0
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 13
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 29
  store i64 0, i64* %150, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 28
  store i64 0, i64* %152, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 27
  store i64 0, i64* %154, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 26
  store i64 0, i64* %156, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 25
  store i64 0, i64* %158, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 24
  store i64 0, i64* %160, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 23
  store i64 0, i64* %162, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 22
  store i64 0, i64* %164, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 21
  store i64 0, i64* %166, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 20
  store i64 0, i64* %168, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 19
  store i64 0, i64* %170, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 18
  store i64 0, i64* %172, align 8
  %173 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %174 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %173, i32 0, i32 4
  %175 = load i32**, i32*** %174, align 8
  %176 = getelementptr inbounds i32*, i32** %175, i64 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = shl i32 %179, 12
  %181 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %182 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %181, i32 0, i32 4
  %183 = load i32**, i32*** %182, align 8
  %184 = getelementptr inbounds i32*, i32** %183, i64 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 8
  %189 = or i32 %180, %188
  %190 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %191 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %190, i32 0, i32 4
  %192 = load i32**, i32*** %191, align 8
  %193 = getelementptr inbounds i32*, i32** %192, i64 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = shl i32 %196, 4
  %198 = or i32 %189, %197
  %199 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %200 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %199, i32 0, i32 4
  %201 = load i32**, i32*** %200, align 8
  %202 = getelementptr inbounds i32*, i32** %201, i64 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %198, %205
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 14
  store i32 %206, i32* %208, align 8
  %209 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %210 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = shl i32 %211, 14
  %213 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %214 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = shl i32 %215, 12
  %217 = or i32 %212, %216
  %218 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %219 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 4
  %221 = shl i32 %220, 11
  %222 = or i32 %217, %221
  %223 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %224 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 8
  %226 = shl i32 %225, 10
  %227 = or i32 %222, %226
  %228 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %229 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %228, i32 0, i32 8
  %230 = load i32, i32* %229, align 4
  %231 = shl i32 %230, 9
  %232 = or i32 %227, %231
  %233 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %234 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %233, i32 0, i32 9
  %235 = load i32, i32* %234, align 8
  %236 = shl i32 %235, 8
  %237 = or i32 %232, %236
  %238 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %239 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %238, i32 0, i32 10
  %240 = load i32, i32* %239, align 4
  %241 = shl i32 %240, 7
  %242 = or i32 %237, %241
  %243 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %244 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = shl i32 %245, 6
  %247 = or i32 %242, %246
  %248 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %249 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %248, i32 0, i32 11
  %250 = load i32, i32* %249, align 8
  %251 = shl i32 %250, 5
  %252 = or i32 %247, %251
  %253 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %254 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %253, i32 0, i32 12
  %255 = load i32, i32* %254, align 4
  %256 = shl i32 %255, 4
  %257 = or i32 %252, %256
  %258 = load %struct.MpegEncContext*, %struct.MpegEncContext** %7, align 8
  %259 = getelementptr inbounds %struct.MpegEncContext, %struct.MpegEncContext* %258, i32 0, i32 13
  %260 = load i32, i32* %259, align 8
  %261 = shl i32 %260, 3
  %262 = or i32 %257, %261
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 15
  store i32 %262, i32* %264, align 4
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 17
  store i64 0, i64* %266, align 8
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 16
  store i64 0, i64* %268, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i8* @ff_dxva2_get_surface_index(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
