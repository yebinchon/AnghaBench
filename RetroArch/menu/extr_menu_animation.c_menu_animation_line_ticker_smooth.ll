; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_line_ticker_smooth.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_line_ticker_smooth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i8*, float*, i8*, i8*, float*, float*, float*, float*, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.string_list = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ticker_is_active = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_animation_line_ticker_smooth(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* null, i8** %4, align 8
  store %struct.string_list* null, %struct.string_list** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %330

20:                                               ; preds = %1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 18
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @string_is_empty(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %31, %25, %20
  br label %270

42:                                               ; preds = %36
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 18
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 17
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @font_driver_get_message_width(i32 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %270

53:                                               ; preds = %42
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 18
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 17
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @font_driver_get_line_height(i32 %56, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %270

64:                                               ; preds = %53
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sdiv i32 %67, %68
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %8, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sdiv i32 %73, %74
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %8, align 8
  %78 = icmp ult i64 %77, 1
  br i1 %78, label %82, label %79

79:                                               ; preds = %64
  %80 = load i64, i64* %9, align 8
  %81 = icmp ult i64 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %79, %64
  br label %270

83:                                               ; preds = %79
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 1
  %91 = trunc i64 %90 to i32
  %92 = call i64 @malloc(i32 %91)
  %93 = inttoptr i64 %92 to i8*
  store i8* %93, i8** %4, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %83
  br label %270

97:                                               ; preds = %83
  %98 = load i8*, i8** %4, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @word_wrap(i8* %98, i8* %101, i32 %103, i32 1, i32 0)
  %105 = load i8*, i8** %4, align 8
  %106 = call i64 @string_is_empty(i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %270

109:                                              ; preds = %97
  %110 = load i8*, i8** %4, align 8
  %111 = call %struct.string_list* @string_split(i8* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct.string_list* %111, %struct.string_list** %5, align 8
  %112 = load %struct.string_list*, %struct.string_list** %5, align 8
  %113 = icmp ne %struct.string_list* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  br label %270

115:                                              ; preds = %109
  %116 = load %struct.string_list*, %struct.string_list** %5, align 8
  %117 = getelementptr inbounds %struct.string_list, %struct.string_list* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %9, align 8
  %120 = icmp ule i64 %118, %119
  br i1 %120, label %121, label %171

121:                                              ; preds = %115
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 3
  %124 = load i8*, i8** %123, align 8
  %125 = load i8*, i8** %4, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 15
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @strlcpy(i8* %124, i8* %125, i32 %128)
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 4
  %132 = load float*, float** %131, align 8
  store float 0.000000e+00, float* %132, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 14
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %170

137:                                              ; preds = %121
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 13
  %140 = load i32, i32* %139, align 8
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 5
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  store i8 0, i8* %146, align 1
  br label %147

147:                                              ; preds = %142, %137
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 12
  %150 = load i32, i32* %149, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 6
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  store i8 0, i8* %156, align 1
  br label %157

157:                                              ; preds = %152, %147
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 7
  %160 = load float*, float** %159, align 8
  store float 0.000000e+00, float* %160, align 4
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 8
  %163 = load float*, float** %162, align 8
  store float 0.000000e+00, float* %163, align 4
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 9
  %166 = load float*, float** %165, align 8
  store float 0.000000e+00, float* %166, align 4
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 10
  %169 = load float*, float** %168, align 8
  store float 0.000000e+00, float* %169, align 4
  br label %170

170:                                              ; preds = %157, %121
  store i32 1, i32* %15, align 4
  br label %270

171:                                              ; preds = %115
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 11
  %174 = load i32, i32* %173, align 8
  switch i32 %174, label %206 [
    i32 128, label %175
    i32 129, label %205
  ]

175:                                              ; preds = %171
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 16
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 14
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %8, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = load i64, i64* %9, align 8
  %186 = load %struct.string_list*, %struct.string_list** %5, align 8
  %187 = getelementptr inbounds %struct.string_list, %struct.string_list* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 4
  %191 = load float*, float** %190, align 8
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 7
  %194 = load float*, float** %193, align 8
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 9
  %197 = load float*, float** %196, align 8
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 8
  %200 = load float*, float** %199, align 8
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 10
  %203 = load float*, float** %202, align 8
  %204 = call i32 @menu_animation_line_ticker_smooth_loop(i32 %178, i64 %181, i64 %182, i64 %184, i64 %185, i64 %188, i64* %10, i64* %11, float* %191, i32* %14, i64* %12, float* %194, float* %197, i64* %13, float* %200, float* %203)
  br label %236

205:                                              ; preds = %171
  br label %206

206:                                              ; preds = %171, %205
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 16
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 14
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* %8, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sext i32 %214 to i64
  %216 = load i64, i64* %9, align 8
  %217 = load %struct.string_list*, %struct.string_list** %5, align 8
  %218 = getelementptr inbounds %struct.string_list, %struct.string_list* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 4
  %222 = load float*, float** %221, align 8
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 7
  %225 = load float*, float** %224, align 8
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 9
  %228 = load float*, float** %227, align 8
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 8
  %231 = load float*, float** %230, align 8
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 10
  %234 = load float*, float** %233, align 8
  %235 = call i32 @menu_animation_line_ticker_smooth_generic(i32 %209, i64 %212, i64 %213, i64 %215, i64 %216, i64 %219, i64* %10, i64* %11, float* %222, i32* %14, i64* %12, float* %225, float* %228, i64* %13, float* %231, float* %234)
  br label %236

236:                                              ; preds = %206, %175
  %237 = load i64, i64* %10, align 8
  %238 = trunc i64 %237 to i32
  %239 = load i64, i64* %11, align 8
  %240 = load %struct.string_list*, %struct.string_list** %5, align 8
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 3
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 15
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @build_line_ticker_string(i32 %238, i64 %239, %struct.string_list* %240, i8* %243, i32 %246)
  %248 = load i32, i32* %14, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %269

250:                                              ; preds = %236
  %251 = load i64, i64* %12, align 8
  %252 = load %struct.string_list*, %struct.string_list** %5, align 8
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 5
  %255 = load i8*, i8** %254, align 8
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 13
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @build_line_ticker_string(i32 1, i64 %251, %struct.string_list* %252, i8* %255, i32 %258)
  %260 = load i64, i64* %13, align 8
  %261 = load %struct.string_list*, %struct.string_list** %5, align 8
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 6
  %264 = load i8*, i8** %263, align 8
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 12
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @build_line_ticker_string(i32 1, i64 %260, %struct.string_list* %261, i8* %264, i32 %267)
  br label %269

269:                                              ; preds = %250, %236
  store i32 1, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 1, i32* @ticker_is_active, align 4
  br label %270

270:                                              ; preds = %269, %170, %114, %108, %96, %82, %63, %52, %41
  %271 = load i8*, i8** %4, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load i8*, i8** %4, align 8
  %275 = call i32 @free(i8* %274)
  store i8* null, i8** %4, align 8
  br label %276

276:                                              ; preds = %273, %270
  %277 = load %struct.string_list*, %struct.string_list** %5, align 8
  %278 = icmp ne %struct.string_list* %277, null
  br i1 %278, label %279, label %282

279:                                              ; preds = %276
  %280 = load %struct.string_list*, %struct.string_list** %5, align 8
  %281 = call i32 @string_list_free(%struct.string_list* %280)
  store %struct.string_list* null, %struct.string_list** %5, align 8
  br label %282

282:                                              ; preds = %279, %276
  %283 = load i32, i32* %15, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %328, label %285

285:                                              ; preds = %282
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 15
  %288 = load i32, i32* %287, align 8
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %285
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 3
  %293 = load i8*, i8** %292, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 0
  store i8 0, i8* %294, align 1
  br label %295

295:                                              ; preds = %290, %285
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 14
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %327

300:                                              ; preds = %295
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 13
  %303 = load i32, i32* %302, align 8
  %304 = icmp sgt i32 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %300
  %306 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 5
  %308 = load i8*, i8** %307, align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 0
  store i8 0, i8* %309, align 1
  br label %310

310:                                              ; preds = %305, %300
  %311 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 12
  %313 = load i32, i32* %312, align 4
  %314 = icmp sgt i32 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %310
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 6
  %318 = load i8*, i8** %317, align 8
  %319 = getelementptr inbounds i8, i8* %318, i64 0
  store i8 0, i8* %319, align 1
  br label %320

320:                                              ; preds = %315, %310
  %321 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 9
  %323 = load float*, float** %322, align 8
  store float 0.000000e+00, float* %323, align 4
  %324 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i32 0, i32 10
  %326 = load float*, float** %325, align 8
  store float 0.000000e+00, float* %326, align 4
  br label %327

327:                                              ; preds = %320, %295
  br label %328

328:                                              ; preds = %327, %282
  %329 = load i32, i32* %16, align 4
  store i32 %329, i32* %2, align 4
  br label %330

330:                                              ; preds = %328, %19
  %331 = load i32, i32* %2, align 4
  ret i32 %331
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @font_driver_get_message_width(i32, i8*, i32, i32) #1

declare dso_local i32 @font_driver_get_line_height(i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @word_wrap(i8*, i8*, i32, i32, i32) #1

declare dso_local %struct.string_list* @string_split(i8*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @menu_animation_line_ticker_smooth_loop(i32, i64, i64, i64, i64, i64, i64*, i64*, float*, i32*, i64*, float*, float*, i64*, float*, float*) #1

declare dso_local i32 @menu_animation_line_ticker_smooth_generic(i32, i64, i64, i64, i64, i64, i64*, i64*, float*, i32*, i64*, float*, float*, i64*, float*, float*) #1

declare dso_local i32 @build_line_ticker_string(i32, i64, %struct.string_list*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
