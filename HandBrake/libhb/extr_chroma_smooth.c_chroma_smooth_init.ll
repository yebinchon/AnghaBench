; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_chroma_smooth.c_chroma_smooth_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_chroma_smooth.c_chroma_smooth_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, double, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Chroma Smooth calloc failed\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"cb-strength\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cb-size\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"cr-strength\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"cr-size\00", align 1
@CHROMA_SMOOTH_STRENGTH_DEFAULT = common dso_local global i32 0, align 4
@CHROMA_SMOOTH_SIZE_DEFAULT = common dso_local global i32 0, align 4
@CHROMA_SMOOTH_SIZE_MIN = common dso_local global i32 0, align 4
@CHROMA_SMOOTH_SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* @chroma_smooth_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chroma_smooth_init(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %14 = call %struct.TYPE_12__* @calloc(i32 4, i32 1)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %16, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = icmp eq %struct.TYPE_12__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @hb_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %260

23:                                               ; preds = %2
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %45, %23
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  store i32 -1, i32* %44, align 4
  br label %45

45:                                               ; preds = %30
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %27

48:                                               ; preds = %27
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %85

53:                                               ; preds = %48
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %8, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @hb_dict_extract_double(i32* %61, i32* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @hb_dict_extract_int(i32* %68, i32* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i64 2
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @hb_dict_extract_double(i32* %75, i32* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i64 2
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @hb_dict_extract_int(i32* %82, i32* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %53, %48
  store i32 2, i32* %9, align 4
  br label %86

86:                                               ; preds = %125, %85
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 3
  br i1 %88, label %89, label %128

89:                                               ; preds = %86
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i64 %95
  store %struct.TYPE_15__* %96, %struct.TYPE_15__** %10, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i64 %101
  store %struct.TYPE_15__* %102, %struct.TYPE_15__** %11, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %113

107:                                              ; preds = %89
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %107, %89
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %118, %113
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %86

128:                                              ; preds = %86
  store i32 0, i32* %12, align 4
  br label %129

129:                                              ; preds = %249, %128
  %130 = load i32, i32* %12, align 4
  %131 = icmp slt i32 %130, 3
  br i1 %131, label %132, label %252

132:                                              ; preds = %129
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i64 %137
  store %struct.TYPE_15__* %138, %struct.TYPE_15__** %13, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 6
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %149, label %153

149:                                              ; preds = %132
  %150 = load i32, i32* @CHROMA_SMOOTH_STRENGTH_DEFAULT, align 4
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %149, %132
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load i32, i32* @CHROMA_SMOOTH_SIZE_DEFAULT, align 4
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %158, %153
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  store i32 0, i32* %169, align 8
  br label %170

170:                                              ; preds = %167, %162
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp sgt i32 %173, 3
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  store i32 3, i32* %177, align 8
  br label %178

178:                                              ; preds = %175, %170
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = srem i32 %181, 2
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %184, %178
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @CHROMA_SMOOTH_SIZE_MIN, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = load i32, i32* @CHROMA_SMOOTH_SIZE_MIN, align 4
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %195, %189
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @CHROMA_SMOOTH_SIZE_MAX, align 4
  %204 = icmp sgt i32 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %199
  %206 = load i32, i32* @CHROMA_SMOOTH_SIZE_MAX, align 4
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  br label %209

209:                                              ; preds = %205, %199
  %210 = load i32, i32* %12, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %239

212:                                              ; preds = %209
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sitofp i32 %215 to double
  %217 = fmul double %216, 6.553600e+04
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 2
  store double %217, double* %219, align 8
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = sdiv i32 %222, 2
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 8
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = mul nsw i32 %228, 4
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 4
  store i32 %229, i32* %231, align 4
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = sub nsw i32 %234, 1
  %236 = shl i32 1, %235
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 5
  store i32 %236, i32* %238, align 8
  br label %248

239:                                              ; preds = %209
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 2
  store double 0.000000e+00, double* %241, align 8
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 3
  store i32 0, i32* %243, align 8
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 4
  store i32 0, i32* %245, align 4
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 5
  store i32 0, i32* %247, align 8
  br label %248

248:                                              ; preds = %239, %212
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %12, align 4
  br label %129

252:                                              ; preds = %129
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %254 = call i64 @chroma_smooth_init_thread(%struct.TYPE_13__* %253, i32 1)
  %255 = icmp slt i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %252
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %258 = call i32 @chroma_smooth_close(%struct.TYPE_13__* %257)
  store i32 -1, i32* %3, align 4
  br label %260

259:                                              ; preds = %252
  store i32 0, i32* %3, align 4
  br label %260

260:                                              ; preds = %259, %256, %21
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local %struct.TYPE_12__* @calloc(i32, i32) #1

declare dso_local i32 @hb_error(i8*) #1

declare dso_local i32 @hb_dict_extract_double(i32*, i32*, i8*) #1

declare dso_local i32 @hb_dict_extract_int(i32*, i32*, i8*) #1

declare dso_local i64 @chroma_smooth_init_thread(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @chroma_smooth_close(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
