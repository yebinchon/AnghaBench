; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_layout.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_15__, %struct.TYPE_11__, i64 }
%struct.TYPE_10__ = type { i8*, i8*, i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_12__ = type { i32, i32*, i8* }
%struct.TYPE_14__ = type { i32, i32*, i8* }
%struct.TYPE_13__ = type { i32, i32*, i8* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@MUI_NAV_BAR_LOCATION_RIGHT = common dso_local global i32 0, align 4
@MUI_NAV_BAR_LOCATION_BOTTOM = common dso_local global i32 0, align 4
@APPLICATION_SPECIAL_DIRECTORY_ASSETS_MATERIALUI_FONT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32)* @materialui_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @materialui_layout(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  %19 = zext i1 %18 to i32
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 3
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 7
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 3
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  store i32 %46, i32* %8, align 4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 7
  store i32 %50, i32* %5, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %53, 9
  store i32 %54, i32* %6, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %57, 11
  store i32 %58, i32* %7, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %61, 36
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %67, 9
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %73, 3
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 9
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %79, 12
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 10
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %85, 7
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 11
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 13
  %91 = load float, float* %90, align 8
  %92 = fcmp ogt float %91, 1.000000e+00
  br i1 %92, label %93, label %99

93:                                               ; preds = %2
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 13
  %96 = load float, float* %95, align 8
  %97 = fadd float %96, 5.000000e-01
  %98 = fptoui float %97 to i32
  br label %100

99:                                               ; preds = %2
  br label %100

100:                                              ; preds = %99, %93
  %101 = phi i32 [ %98, %93 ], [ 1, %99 ]
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 12
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = sdiv i32 %106, 3
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 19
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 12
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 19
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 19
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sdiv i32 %120, 16
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 19
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  store i32 %121, i32* %124, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %147, label %129

129:                                              ; preds = %100
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 20
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %129
  %135 = load i32, i32* @MUI_NAV_BAR_LOCATION_RIGHT, align 4
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 19
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 3
  store i32 %135, i32* %138, align 4
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 19
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 14
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 15
  store i32 0, i32* %146, align 8
  br label %160

147:                                              ; preds = %129, %100
  %148 = load i32, i32* @MUI_NAV_BAR_LOCATION_BOTTOM, align 4
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 19
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  store i32 %148, i32* %151, align 4
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 14
  store i32 0, i32* %153, align 4
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 19
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 15
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %147, %134
  %161 = load i32, i32* %5, align 4
  %162 = sitofp i32 %161 to float
  %163 = fmul float %162, 7.500000e-01
  %164 = fadd float %163, 5.000000e-01
  %165 = fptosi float %164 to i32
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 18
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  store i32 %165, i32* %169, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sitofp i32 %170 to float
  %172 = fmul float %171, 7.500000e-01
  %173 = fadd float %172, 5.000000e-01
  %174 = fptosi float %173 to i32
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 18
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  store i32 %174, i32* %178, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sitofp i32 %179 to float
  %181 = fmul float %180, 7.500000e-01
  %182 = fadd float %181, 5.000000e-01
  %183 = fptosi float %182 to i32
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 18
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  store i32 %183, i32* %187, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @menu_display_set_header_height(i32 %188)
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 18
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %207

196:                                              ; preds = %160
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 18
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @menu_display_font_free(i32* %201)
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 18
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  store i32* null, i32** %206, align 8
  br label %207

207:                                              ; preds = %196, %160
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 18
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = icmp ne i32* %212, null
  br i1 %213, label %214, label %225

214:                                              ; preds = %207
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 18
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @menu_display_font_free(i32* %219)
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 18
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 1
  store i32* null, i32** %224, align 8
  br label %225

225:                                              ; preds = %214, %207
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 18
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %243

232:                                              ; preds = %225
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 18
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 @menu_display_font_free(i32* %237)
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 18
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 1
  store i32* null, i32** %242, align 8
  br label %243

243:                                              ; preds = %232, %225
  %244 = load i32, i32* @APPLICATION_SPECIAL_DIRECTORY_ASSETS_MATERIALUI_FONT, align 4
  %245 = load i32, i32* %5, align 4
  %246 = load i32, i32* %4, align 4
  %247 = call i8* @menu_display_font(i32 %244, i32 %245, i32 %246)
  %248 = bitcast i8* %247 to i32*
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 18
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 1
  store i32* %248, i32** %252, align 8
  %253 = load i32, i32* @APPLICATION_SPECIAL_DIRECTORY_ASSETS_MATERIALUI_FONT, align 4
  %254 = load i32, i32* %6, align 4
  %255 = load i32, i32* %4, align 4
  %256 = call i8* @menu_display_font(i32 %253, i32 %254, i32 %255)
  %257 = bitcast i8* %256 to i32*
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 18
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 1
  store i32* %257, i32** %261, align 8
  %262 = load i32, i32* @APPLICATION_SPECIAL_DIRECTORY_ASSETS_MATERIALUI_FONT, align 4
  %263 = load i32, i32* %7, align 4
  %264 = load i32, i32* %4, align 4
  %265 = call i8* @menu_display_font(i32 %262, i32 %263, i32 %264)
  %266 = bitcast i8* %265 to i32*
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 18
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 1
  store i32* %266, i32** %270, align 8
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 18
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = icmp ne i32* %275, null
  br i1 %276, label %277, label %303

277:                                              ; preds = %243
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 18
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = call i32 @font_driver_get_message_width(i32* %282, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 1)
  store i32 %283, i32* %9, align 4
  %284 = load i32, i32* %9, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %277
  %287 = load i32, i32* %9, align 4
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 18
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 0
  store i32 %287, i32* %291, align 8
  br label %292

292:                                              ; preds = %286, %277
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 18
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = call i8* @font_driver_get_line_height(i32* %297, float 1.000000e+00)
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 18
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 2
  store i8* %298, i8** %302, align 8
  br label %303

303:                                              ; preds = %292, %243
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 18
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 1
  %308 = load i32*, i32** %307, align 8
  %309 = icmp ne i32* %308, null
  br i1 %309, label %310, label %336

310:                                              ; preds = %303
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 18
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = call i32 @font_driver_get_message_width(i32* %315, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 1)
  store i32 %316, i32* %10, align 4
  %317 = load i32, i32* %10, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %310
  %320 = load i32, i32* %10, align 4
  %321 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 18
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 0
  store i32 %320, i32* %324, align 8
  br label %325

325:                                              ; preds = %319, %310
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 18
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 1
  %330 = load i32*, i32** %329, align 8
  %331 = call i8* @font_driver_get_line_height(i32* %330, float 1.000000e+00)
  %332 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 18
  %334 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 2
  store i8* %331, i8** %335, align 8
  br label %336

336:                                              ; preds = %325, %303
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i32 0, i32 18
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 1
  %341 = load i32*, i32** %340, align 8
  %342 = icmp ne i32* %341, null
  br i1 %342, label %343, label %369

343:                                              ; preds = %336
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 18
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 1
  %348 = load i32*, i32** %347, align 8
  %349 = call i32 @font_driver_get_message_width(i32* %348, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 1)
  store i32 %349, i32* %11, align 4
  %350 = load i32, i32* %11, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %343
  %353 = load i32, i32* %11, align 4
  %354 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %354, i32 0, i32 18
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i32 0, i32 0
  store i32 %353, i32* %357, align 8
  br label %358

358:                                              ; preds = %352, %343
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i32 0, i32 18
  %361 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %361, i32 0, i32 1
  %363 = load i32*, i32** %362, align 8
  %364 = call i8* @font_driver_get_line_height(i32* %363, float 1.000000e+00)
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 18
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 2
  store i8* %364, i8** %368, align 8
  br label %369

369:                                              ; preds = %358, %336
  %370 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %370, i32 0, i32 17
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 0
  %373 = load i8*, i8** %372, align 8
  %374 = getelementptr inbounds i8, i8* %373, i64 0
  store i8 0, i8* %374, align 1
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %375, i32 0, i32 17
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 3
  store i64 0, i64* %377, align 8
  %378 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %378, i32 0, i32 17
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 1
  %381 = load i8*, i8** %380, align 8
  %382 = getelementptr inbounds i8, i8* %381, i64 0
  store i8 0, i8* %382, align 1
  %383 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %384 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %383, i32 0, i32 17
  %385 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %384, i32 0, i32 2
  store i64 0, i64* %385, align 8
  %386 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %387 = call i32 @materialui_update_list_view(%struct.TYPE_16__* %386)
  %388 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %388, i32 0, i32 16
  store i32 1, i32* %389, align 4
  ret void
}

declare dso_local i32 @menu_display_set_header_height(i32) #1

declare dso_local i32 @menu_display_font_free(i32*) #1

declare dso_local i8* @menu_display_font(i32, i32, i32) #1

declare dso_local i32 @font_driver_get_message_width(i32*, i8*, i32, i32) #1

declare dso_local i8* @font_driver_get_line_height(i32*, float) #1

declare dso_local i32 @materialui_update_list_view(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
