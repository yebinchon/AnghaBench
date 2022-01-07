; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_get_preview2.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_get_preview2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.SwsContext = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@HB_MIN_WIDTH = common dso_local global i32 0, align 4
@HB_MAX_WIDTH = common dso_local global i32 0, align 4
@HB_MIN_HEIGHT = common dso_local global i32 0, align 4
@HB_MAX_HEIGHT = common dso_local global i32 0, align 4
@SWS_LANCZOS = common dso_local global i32 0, align 4
@SWS_ACCURATE_RND = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"hb_get_preview2: invalid title (%d)\00", align 1
@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hb_get_preview2(i32* %0, i32 %1, i32 %2, %struct.TYPE_13__* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [1024 x i8], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [4 x i32*], align 16
  %18 = alloca [4 x i32*], align 16
  %19 = alloca [4 x i32], align 16
  %20 = alloca [4 x i32], align 16
  %21 = alloca %struct.SwsContext*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_12__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %32, %37
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %38, %43
  store i32 %44, i32* %22, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %23, align 4
  %49 = load i32, i32* %22, align 4
  store i32 %49, i32* %24, align 4
  %50 = load i32, i32* %23, align 4
  store i32 %50, i32* %25, align 4
  %51 = load i32, i32* %22, align 4
  %52 = load i32, i32* @HB_MIN_WIDTH, align 4
  %53 = call i32 @MAX(i32 %51, i32 %52)
  %54 = load i32, i32* @HB_MAX_WIDTH, align 4
  %55 = call i32 @MIN(i32 %53, i32 %54)
  store i32 %55, i32* %22, align 4
  %56 = load i32, i32* %23, align 4
  %57 = load i32, i32* %22, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %24, align 4
  %60 = sdiv i32 %58, %59
  %61 = load i32, i32* @HB_MIN_HEIGHT, align 4
  %62 = call i32 @MAX(i32 %60, i32 %61)
  %63 = load i32, i32* @HB_MAX_HEIGHT, align 4
  %64 = call i32 @MIN(i32 %62, i32 %63)
  store i32 %64, i32* %23, align 4
  %65 = load i32, i32* %22, align 4
  %66 = load i32, i32* %23, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %25, align 4
  %69 = sdiv i32 %67, %68
  %70 = load i32, i32* @HB_MIN_WIDTH, align 4
  %71 = call i32 @MAX(i32 %69, i32 %70)
  %72 = load i32, i32* @HB_MAX_WIDTH, align 4
  %73 = call i32 @MIN(i32 %71, i32 %72)
  store i32 %73, i32* %22, align 4
  %74 = load i32, i32* @SWS_LANCZOS, align 4
  %75 = load i32, i32* @SWS_ACCURATE_RND, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* @AV_PIX_FMT_RGB32, align 4
  %78 = load i32, i32* %22, align 4
  %79 = load i32, i32* %23, align 4
  %80 = call i32* @hb_frame_buffer_init(i32 %77, i32 %78, i32 %79)
  store i32* %80, i32** %15, align 8
  %81 = getelementptr inbounds [4 x i32*], [4 x i32*]* %17, i64 0, i64 0
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %83 = load i32*, i32** %15, align 8
  %84 = call i32 @hb_picture_fill(i32** %81, i32* %82, i32* %83)
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %86 = call i32 @memset(i8* %85, i32 0, i32 1024)
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call %struct.TYPE_12__* @hb_find_title_by_index(i32* %87, i32 %88)
  store %struct.TYPE_12__* %89, %struct.TYPE_12__** %26, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %91 = icmp eq %struct.TYPE_12__* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %5
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @hb_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %230

95:                                               ; preds = %5
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32* @hb_read_preview(i32* %96, %struct.TYPE_12__* %97, i32 %98)
  store i32* %99, i32** %13, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %230

103:                                              ; preds = %95
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %134

106:                                              ; preds = %103
  %107 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32* @hb_frame_buffer_init(i32 %107, i32 %111, i32 %115)
  store i32* %116, i32** %14, align 8
  %117 = load i32*, i32** %14, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = call i32 @hb_deinterlace(i32* %117, i32* %118)
  %120 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %122 = load i32*, i32** %14, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 2
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @hb_picture_crop(i32** %120, i32* %121, i32* %122, i64 %127, i64 %132)
  br label %149

134:                                              ; preds = %103
  %135 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %137 = load i32*, i32** %13, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 2
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @hb_picture_crop(i32** %135, i32* %136, i32* %137, i64 %142, i64 %147)
  br label %149

149:                                              ; preds = %134, %106
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @hb_sws_get_colorspace(i32 %152)
  store i32 %153, i32* %27, align 4
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i64*, i64** %160, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 2
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i64*, i64** %165, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 3
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %163, %168
  %170 = sub nsw i64 %158, %169
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 1
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %180, %185
  %187 = sub nsw i64 %175, %186
  %188 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  %189 = load i32, i32* %22, align 4
  %190 = load i32, i32* %23, align 4
  %191 = load i32, i32* @AV_PIX_FMT_RGB32, align 4
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %27, align 4
  %194 = call %struct.SwsContext* @hb_sws_get_context(i64 %170, i64 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193)
  store %struct.SwsContext* %194, %struct.SwsContext** %21, align 8
  %195 = load %struct.SwsContext*, %struct.SwsContext** %21, align 8
  %196 = icmp eq %struct.SwsContext* %195, null
  br i1 %196, label %197, label %198

197:                                              ; preds = %149
  br label %230

198:                                              ; preds = %149
  %199 = load %struct.SwsContext*, %struct.SwsContext** %21, align 8
  %200 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  %209 = load i64*, i64** %208, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 0
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  %214 = load i64*, i64** %213, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 1
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %211, %216
  %218 = sub nsw i64 %206, %217
  %219 = getelementptr inbounds [4 x i32*], [4 x i32*]* %17, i64 0, i64 0
  %220 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %221 = call i32 @sws_scale(%struct.SwsContext* %199, i32** %200, i32* %201, i32 0, i64 %218, i32** %219, i32* %220)
  %222 = load %struct.SwsContext*, %struct.SwsContext** %21, align 8
  %223 = call i32 @sws_freeContext(%struct.SwsContext* %222)
  %224 = load i32*, i32** %15, align 8
  %225 = call i32* @hb_buffer_to_image(i32* %224)
  store i32* %225, i32** %28, align 8
  %226 = call i32 @hb_buffer_close(i32** %13)
  %227 = call i32 @hb_buffer_close(i32** %14)
  %228 = call i32 @hb_buffer_close(i32** %15)
  %229 = load i32*, i32** %28, align 8
  store i32* %229, i32** %6, align 8
  br label %239

230:                                              ; preds = %197, %102, %92
  %231 = call i32 @hb_buffer_close(i32** %13)
  %232 = call i32 @hb_buffer_close(i32** %14)
  %233 = call i32 @hb_buffer_close(i32** %15)
  %234 = load i32, i32* @AV_PIX_FMT_RGB32, align 4
  %235 = load i32, i32* %22, align 4
  %236 = load i32, i32* %23, align 4
  %237 = call i32* @hb_image_init(i32 %234, i32 %235, i32 %236)
  store i32* %237, i32** %28, align 8
  %238 = load i32*, i32** %28, align 8
  store i32* %238, i32** %6, align 8
  br label %239

239:                                              ; preds = %230, %198
  %240 = load i32*, i32** %6, align 8
  ret i32* %240
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32* @hb_frame_buffer_init(i32, i32, i32) #1

declare dso_local i32 @hb_picture_fill(i32**, i32*, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @hb_find_title_by_index(i32*, i32) #1

declare dso_local i32 @hb_error(i8*, i32) #1

declare dso_local i32* @hb_read_preview(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @hb_deinterlace(i32*, i32*) #1

declare dso_local i32 @hb_picture_crop(i32**, i32*, i32*, i64, i64) #1

declare dso_local i32 @hb_sws_get_colorspace(i32) #1

declare dso_local %struct.SwsContext* @hb_sws_get_context(i64, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sws_scale(%struct.SwsContext*, i32**, i32*, i32, i64, i32**, i32*) #1

declare dso_local i32 @sws_freeContext(%struct.SwsContext*) #1

declare dso_local i32* @hb_buffer_to_image(i32*) #1

declare dso_local i32 @hb_buffer_close(i32**) #1

declare dso_local i32* @hb_image_init(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
