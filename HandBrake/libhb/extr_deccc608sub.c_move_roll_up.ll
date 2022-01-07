; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_move_roll_up.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_move_roll_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_write = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.eia608_screen = type { i32, i64*, i64**, i64**, i64** }

@CC608_SCREEN_WIDTH = common dso_local global i32 0, align 4
@COL_WHITE = common dso_local global i8 0, align 1
@FONT_REGULAR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_write*, i32)* @move_roll_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_roll_up(%struct.s_write* %0, i32 %1) #0 {
  %3 = alloca %struct.s_write*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.eia608_screen*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.s_write* %0, %struct.s_write** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.s_write*, %struct.s_write** %3, align 8
  %11 = getelementptr inbounds %struct.s_write, %struct.s_write* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %18 [
    i32 130, label %15
    i32 129, label %16
    i32 128, label %17
  ]

15:                                               ; preds = %2
  store i32 2, i32* %9, align 4
  br label %19

16:                                               ; preds = %2
  store i32 3, i32* %9, align 4
  br label %19

17:                                               ; preds = %2
  store i32 4, i32* %9, align 4
  br label %19

18:                                               ; preds = %2
  br label %305

19:                                               ; preds = %17, %16, %15
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.s_write*, %struct.s_write** %3, align 8
  %22 = getelementptr inbounds %struct.s_write, %struct.s_write* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %20, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %305

28:                                               ; preds = %19
  %29 = load %struct.s_write*, %struct.s_write** %3, align 8
  %30 = call %struct.eia608_screen* @get_current_visible_buffer(%struct.s_write* %29)
  store %struct.eia608_screen* %30, %struct.eia608_screen** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.s_write*, %struct.s_write** %3, align 8
  %33 = getelementptr inbounds %struct.s_write, %struct.s_write* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %31, %36
  br i1 %37, label %38, label %173

38:                                               ; preds = %28
  %39 = load %struct.s_write*, %struct.s_write** %3, align 8
  %40 = getelementptr inbounds %struct.s_write, %struct.s_write* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 %43, %44
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %47, %48
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %169, %38
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %172

55:                                               ; preds = %51
  %56 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %57 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %56, i32 0, i32 2
  %58 = load i64**, i64*** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64*, i64** %58, i64 %60
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %64 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %63, i32 0, i32 2
  %65 = load i64**, i64*** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64*, i64** %65, i64 %67
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i32 @memcpy(i64* %62, i64* %69, i32 %71)
  %73 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %74 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %73, i32 0, i32 4
  %75 = load i64**, i64*** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64*, i64** %75, i64 %77
  %79 = load i64*, i64** %78, align 8
  %80 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %81 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %80, i32 0, i32 4
  %82 = load i64**, i64*** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64*, i64** %82, i64 %84
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %88 = add nsw i32 %87, 1
  %89 = call i32 @memcpy(i64* %79, i64* %86, i32 %88)
  %90 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %91 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %90, i32 0, i32 3
  %92 = load i64**, i64*** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64*, i64** %92, i64 %94
  %96 = load i64*, i64** %95, align 8
  %97 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %98 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %97, i32 0, i32 3
  %99 = load i64**, i64*** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64*, i64** %99, i64 %101
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %105 = add nsw i32 %104, 1
  %106 = call i32 @memcpy(i64* %96, i64* %103, i32 %105)
  %107 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %108 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %115 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  store i64 %113, i64* %119, align 8
  %120 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %121 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %120, i32 0, i32 2
  %122 = load i64**, i64*** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64*, i64** %122, i64 %124
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %128 = call i32 @memset(i64* %126, i8 signext 32, i32 %127)
  %129 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %130 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %129, i32 0, i32 4
  %131 = load i64**, i64*** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64*, i64** %131, i64 %133
  %135 = load i64*, i64** %134, align 8
  %136 = load i8, i8* @COL_WHITE, align 1
  %137 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %138 = call i32 @memset(i64* %135, i8 signext %136, i32 %137)
  %139 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %140 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %139, i32 0, i32 3
  %141 = load i64**, i64*** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64*, i64** %141, i64 %143
  %145 = load i64*, i64** %144, align 8
  %146 = load i8, i8* @FONT_REGULAR, align 1
  %147 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %148 = call i32 @memset(i64* %145, i8 signext %146, i32 %147)
  %149 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %150 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %149, i32 0, i32 2
  %151 = load i64**, i64*** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64*, i64** %151, i64 %153
  %155 = load i64*, i64** %154, align 8
  %156 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  store i64 0, i64* %158, align 8
  %159 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %160 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %159, i32 0, i32 1
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  store i64 0, i64* %164, align 8
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %169

169:                                              ; preds = %55
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %6, align 4
  br label %51

172:                                              ; preds = %51
  br label %302

173:                                              ; preds = %28
  %174 = load %struct.s_write*, %struct.s_write** %3, align 8
  %175 = getelementptr inbounds %struct.s_write, %struct.s_write* %174, i32 0, i32 0
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %4, align 4
  store i32 %179, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %180

180:                                              ; preds = %298, %173
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %301

184:                                              ; preds = %180
  %185 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %186 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %185, i32 0, i32 2
  %187 = load i64**, i64*** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64*, i64** %187, i64 %189
  %191 = load i64*, i64** %190, align 8
  %192 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %193 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %192, i32 0, i32 2
  %194 = load i64**, i64*** %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64*, i64** %194, i64 %196
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %200 = add nsw i32 %199, 1
  %201 = call i32 @memcpy(i64* %191, i64* %198, i32 %200)
  %202 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %203 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %202, i32 0, i32 4
  %204 = load i64**, i64*** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64*, i64** %204, i64 %206
  %208 = load i64*, i64** %207, align 8
  %209 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %210 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %209, i32 0, i32 4
  %211 = load i64**, i64*** %210, align 8
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64*, i64** %211, i64 %213
  %215 = load i64*, i64** %214, align 8
  %216 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %217 = add nsw i32 %216, 1
  %218 = call i32 @memcpy(i64* %208, i64* %215, i32 %217)
  %219 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %220 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %219, i32 0, i32 3
  %221 = load i64**, i64*** %220, align 8
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64*, i64** %221, i64 %223
  %225 = load i64*, i64** %224, align 8
  %226 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %227 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %226, i32 0, i32 3
  %228 = load i64**, i64*** %227, align 8
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64*, i64** %228, i64 %230
  %232 = load i64*, i64** %231, align 8
  %233 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %234 = add nsw i32 %233, 1
  %235 = call i32 @memcpy(i64* %225, i64* %232, i32 %234)
  %236 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %237 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %236, i32 0, i32 1
  %238 = load i64*, i64** %237, align 8
  %239 = load i32, i32* %7, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %244 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %243, i32 0, i32 1
  %245 = load i64*, i64** %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64, i64* %245, i64 %247
  store i64 %242, i64* %248, align 8
  %249 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %250 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %249, i32 0, i32 2
  %251 = load i64**, i64*** %250, align 8
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i64*, i64** %251, i64 %253
  %255 = load i64*, i64** %254, align 8
  %256 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %257 = call i32 @memset(i64* %255, i8 signext 32, i32 %256)
  %258 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %259 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %258, i32 0, i32 4
  %260 = load i64**, i64*** %259, align 8
  %261 = load i32, i32* %7, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64*, i64** %260, i64 %262
  %264 = load i64*, i64** %263, align 8
  %265 = load i8, i8* @COL_WHITE, align 1
  %266 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %267 = call i32 @memset(i64* %264, i8 signext %265, i32 %266)
  %268 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %269 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %268, i32 0, i32 3
  %270 = load i64**, i64*** %269, align 8
  %271 = load i32, i32* %7, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i64*, i64** %270, i64 %272
  %274 = load i64*, i64** %273, align 8
  %275 = load i8, i8* @FONT_REGULAR, align 1
  %276 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %277 = call i32 @memset(i64* %274, i8 signext %275, i32 %276)
  %278 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %279 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %278, i32 0, i32 2
  %280 = load i64**, i64*** %279, align 8
  %281 = load i32, i32* %7, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i64*, i64** %280, i64 %282
  %284 = load i64*, i64** %283, align 8
  %285 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i64, i64* %284, i64 %286
  store i64 0, i64* %287, align 8
  %288 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %289 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %288, i32 0, i32 1
  %290 = load i64*, i64** %289, align 8
  %291 = load i32, i32* %7, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i64, i64* %290, i64 %292
  store i64 0, i64* %293, align 8
  %294 = load i32, i32* %7, align 4
  %295 = add nsw i32 %294, -1
  store i32 %295, i32* %7, align 4
  %296 = load i32, i32* %8, align 4
  %297 = add nsw i32 %296, -1
  store i32 %297, i32* %8, align 4
  br label %298

298:                                              ; preds = %184
  %299 = load i32, i32* %6, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %6, align 4
  br label %180

301:                                              ; preds = %180
  br label %302

302:                                              ; preds = %301, %172
  %303 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %304 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %303, i32 0, i32 0
  store i32 1, i32* %304, align 8
  br label %305

305:                                              ; preds = %302, %27, %18
  ret void
}

declare dso_local %struct.eia608_screen* @get_current_visible_buffer(%struct.s_write*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @memset(i64*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
