; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_render_messagebox.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_render_messagebox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.string_list = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@rgui_term_layout = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@FONT_WIDTH_STRIDE = common dso_local global i32 0, align 4
@FONT_HEIGHT_STRIDE = common dso_local global i32 0, align 4
@rgui_frame_buf = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*)* @rgui_render_messagebox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgui_render_messagebox(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.string_list*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.string_list* null, %struct.string_list** %14, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %2
  br label %321

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = call %struct.string_list* @string_split(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* %34, %struct.string_list** %14, align 8
  %35 = load %struct.string_list*, %struct.string_list** %14, align 8
  %36 = icmp ne %struct.string_list* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %321

38:                                               ; preds = %32
  %39 = load %struct.string_list*, %struct.string_list** %14, align 8
  %40 = getelementptr inbounds %struct.string_list, %struct.string_list* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = icmp eq %struct.TYPE_7__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %318

44:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %45 = call i32 @menu_display_get_fb_size(i32* %9, i32* %10, i64* %8)
  store i64 0, i64* %7, align 8
  br label %46

46:                                               ; preds = %100, %44
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.string_list*, %struct.string_list** %14, align 8
  %49 = getelementptr inbounds %struct.string_list, %struct.string_list* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %103

52:                                               ; preds = %46
  %53 = load %struct.string_list*, %struct.string_list** %14, align 8
  %54 = getelementptr inbounds %struct.string_list, %struct.string_list* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %16, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = call i32 @utf8len(i8* %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rgui_term_layout, i32 0, i32 0), align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %52
  %66 = load i8*, i8** %16, align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rgui_term_layout, i32 0, i32 0), align 4
  %68 = sub i32 %67, 2
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8 46, i8* %70, align 1
  %71 = load i8*, i8** %16, align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rgui_term_layout, i32 0, i32 0), align 4
  %73 = sub i32 %72, 1
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8 46, i8* %75, align 1
  %76 = load i8*, i8** %16, align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rgui_term_layout, i32 0, i32 0), align 4
  %78 = sub i32 %77, 0
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  store i8 46, i8* %80, align 1
  %81 = load i8*, i8** %16, align 8
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rgui_term_layout, i32 0, i32 0), align 4
  %83 = add i32 %82, 1
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  store i8 0, i8* %85, align 1
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rgui_term_layout, i32 0, i32 0), align 4
  store i32 %86, i32* %17, align 4
  br label %87

87:                                               ; preds = %65, %52
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* @FONT_WIDTH_STRIDE, align 4
  %90 = mul i32 %88, %89
  %91 = sub i32 %90, 1
  %92 = add i32 %91, 6
  %93 = add i32 %92, 10
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @MAX(i32 %94, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %17, align 4
  %99 = call i32 @MAX(i32 %97, i32 %98)
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %87
  %101 = load i64, i64* %7, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %7, align 8
  br label %46

103:                                              ; preds = %46
  %104 = load i32, i32* @FONT_HEIGHT_STRIDE, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.string_list*, %struct.string_list** %14, align 8
  %107 = getelementptr inbounds %struct.string_list, %struct.string_list* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = mul i64 %105, %108
  %110 = add i64 %109, 6
  %111 = add i64 %110, 10
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %11, align 4
  %115 = sub i32 %113, %114
  %116 = udiv i32 %115, 2
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %13, align 4
  %119 = sub i32 %117, %118
  %120 = udiv i32 %119, 2
  store i32 %120, i32* %6, align 4
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rgui_frame_buf, i32 0, i32 0), align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %264

123:                                              ; preds = %103
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %18, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %19, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %20, align 4
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rgui_frame_buf, i32 0, i32 0), align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 5
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 5
  %142 = load i32, i32* %11, align 4
  %143 = sub i32 %142, 10
  %144 = load i32, i32* %13, align 4
  %145 = sub i32 %144, 10
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @rgui_fill_rect(i64 %135, i32 %136, i32 %137, i32 %139, i32 %141, i32 %143, i32 %145, i32 %149, i32 %153, i32 %156)
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %211

162:                                              ; preds = %123
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  store i32 %166, i32* %21, align 4
  %167 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rgui_frame_buf, i32 0, i32 0), align 8
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 %170, 5
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %172, 5
  %174 = load i32, i32* %13, align 4
  %175 = sub i32 %174, 5
  %176 = load i32, i32* %21, align 4
  %177 = call i32 @rgui_color_rect(i64 %167, i32 %168, i32 %169, i32 %171, i32 %173, i32 1, i32 %175, i32 %176)
  %178 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rgui_frame_buf, i32 0, i32 0), align 8
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 %181, 5
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, 5
  %185 = load i32, i32* %11, align 4
  %186 = sub i32 %185, 5
  %187 = load i32, i32* %21, align 4
  %188 = call i32 @rgui_color_rect(i64 %178, i32 %179, i32 %180, i32 %182, i32 %184, i32 %186, i32 1, i32 %187)
  %189 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rgui_frame_buf, i32 0, i32 0), align 8
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* %11, align 4
  %194 = add i32 %192, %193
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %195, 1
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %21, align 4
  %199 = call i32 @rgui_color_rect(i64 %189, i32 %190, i32 %191, i32 %194, i32 %196, i32 1, i32 %197, i32 %198)
  %200 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rgui_frame_buf, i32 0, i32 0), align 8
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* %5, align 4
  %204 = add nsw i32 %203, 1
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* %13, align 4
  %207 = add i32 %205, %206
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* %21, align 4
  %210 = call i32 @rgui_color_rect(i64 %200, i32 %201, i32 %202, i32 %204, i32 %207, i32 %208, i32 1, i32 %209)
  br label %211

211:                                              ; preds = %162, %123
  %212 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rgui_frame_buf, i32 0, i32 0), align 8
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* %5, align 4
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* %11, align 4
  %218 = sub i32 %217, 5
  %219 = load i32, i32* %18, align 4
  %220 = load i32, i32* %19, align 4
  %221 = load i32, i32* %20, align 4
  %222 = call i32 @rgui_fill_rect(i64 %212, i32 %213, i32 %214, i32 %215, i32 %216, i32 %218, i32 5, i32 %219, i32 %220, i32 %221)
  %223 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rgui_frame_buf, i32 0, i32 0), align 8
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* %11, align 4
  %228 = add i32 %226, %227
  %229 = sub i32 %228, 5
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* %13, align 4
  %232 = sub i32 %231, 5
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* %19, align 4
  %235 = load i32, i32* %20, align 4
  %236 = call i32 @rgui_fill_rect(i64 %223, i32 %224, i32 %225, i32 %229, i32 %230, i32 5, i32 %232, i32 %233, i32 %234, i32 %235)
  %237 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rgui_frame_buf, i32 0, i32 0), align 8
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* %5, align 4
  %241 = add nsw i32 %240, 5
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* %13, align 4
  %244 = add i32 %242, %243
  %245 = sub i32 %244, 5
  %246 = load i32, i32* %11, align 4
  %247 = sub i32 %246, 5
  %248 = load i32, i32* %18, align 4
  %249 = load i32, i32* %19, align 4
  %250 = load i32, i32* %20, align 4
  %251 = call i32 @rgui_fill_rect(i64 %237, i32 %238, i32 %239, i32 %241, i32 %245, i32 %247, i32 5, i32 %248, i32 %249, i32 %250)
  %252 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rgui_frame_buf, i32 0, i32 0), align 8
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* %5, align 4
  %256 = load i32, i32* %6, align 4
  %257 = add nsw i32 %256, 5
  %258 = load i32, i32* %13, align 4
  %259 = sub i32 %258, 5
  %260 = load i32, i32* %18, align 4
  %261 = load i32, i32* %19, align 4
  %262 = load i32, i32* %20, align 4
  %263 = call i32 @rgui_fill_rect(i64 %252, i32 %253, i32 %254, i32 %255, i32 %257, i32 5, i32 %259, i32 %260, i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %211, %103
  store i64 0, i64* %7, align 8
  br label %265

265:                                              ; preds = %314, %264
  %266 = load i64, i64* %7, align 8
  %267 = load %struct.string_list*, %struct.string_list** %14, align 8
  %268 = getelementptr inbounds %struct.string_list, %struct.string_list* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = icmp ult i64 %266, %269
  br i1 %270, label %271, label %317

271:                                              ; preds = %265
  %272 = load %struct.string_list*, %struct.string_list** %14, align 8
  %273 = getelementptr inbounds %struct.string_list, %struct.string_list* %272, i32 0, i32 1
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %273, align 8
  %275 = load i64, i64* %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 0
  %278 = load i8*, i8** %277, align 8
  store i8* %278, i8** %22, align 8
  %279 = load i32, i32* @FONT_WIDTH_STRIDE, align 4
  %280 = load i32, i32* %12, align 4
  %281 = load i8*, i8** %22, align 8
  %282 = call i32 @utf8len(i8* %281)
  %283 = sub i32 %280, %282
  %284 = mul i32 %279, %283
  %285 = udiv i32 %284, 2
  store i32 %285, i32* %23, align 4
  %286 = load i32, i32* @FONT_HEIGHT_STRIDE, align 4
  %287 = sext i32 %286 to i64
  %288 = load i64, i64* %7, align 8
  %289 = mul i64 %287, %288
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %24, align 4
  %291 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rgui_frame_buf, i32 0, i32 0), align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %313

293:                                              ; preds = %271
  %294 = load i32, i32* %9, align 4
  %295 = load i32, i32* %5, align 4
  %296 = add nsw i32 %295, 8
  %297 = load i32, i32* %23, align 4
  %298 = add nsw i32 %296, %297
  %299 = load i32, i32* %6, align 4
  %300 = add nsw i32 %299, 8
  %301 = load i32, i32* %24, align 4
  %302 = add nsw i32 %300, %301
  %303 = load i8*, i8** %22, align 8
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @blit_line(i32 %294, i32 %298, i32 %302, i8* %303, i32 %307, i32 %311)
  br label %313

313:                                              ; preds = %293, %271
  br label %314

314:                                              ; preds = %313
  %315 = load i64, i64* %7, align 8
  %316 = add i64 %315, 1
  store i64 %316, i64* %7, align 8
  br label %265

317:                                              ; preds = %265
  br label %318

318:                                              ; preds = %317, %43
  %319 = load %struct.string_list*, %struct.string_list** %14, align 8
  %320 = call i32 @string_list_free(%struct.string_list* %319)
  br label %321

321:                                              ; preds = %318, %37, %31
  ret void
}

declare dso_local %struct.string_list* @string_split(i8*, i8*) #1

declare dso_local i32 @menu_display_get_fb_size(i32*, i32*, i64*) #1

declare dso_local i32 @utf8len(i8*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @rgui_fill_rect(i64, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rgui_color_rect(i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @blit_line(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
