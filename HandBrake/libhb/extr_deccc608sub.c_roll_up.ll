; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_roll_up.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_roll_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_write = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.eia608_screen = type { i32, i64*, i64**, i64**, i64** }

@debug_608 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"\0DIn roll-up: %d lines used, first: %d, last: %d\0A\00", align 1
@CC608_SCREEN_WIDTH = common dso_local global i32 0, align 4
@COL_WHITE = common dso_local global i8 0, align 1
@FONT_REGULAR = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Bug in roll_up, should have %d lines but I have %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_write*)* @roll_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @roll_up(%struct.s_write* %0) #0 {
  %2 = alloca %struct.s_write*, align 8
  %3 = alloca %struct.eia608_screen*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.s_write* %0, %struct.s_write** %2, align 8
  %10 = load %struct.s_write*, %struct.s_write** %2, align 8
  %11 = call %struct.eia608_screen* @get_current_visible_buffer(%struct.s_write* %10)
  store %struct.eia608_screen* %11, %struct.eia608_screen** %3, align 8
  %12 = load %struct.s_write*, %struct.s_write** %2, align 8
  %13 = getelementptr inbounds %struct.s_write, %struct.s_write* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %20 [
    i32 130, label %17
    i32 129, label %18
    i32 128, label %19
  ]

17:                                               ; preds = %1
  store i32 2, i32* %6, align 4
  br label %21

18:                                               ; preds = %1
  store i32 3, i32* %6, align 4
  br label %21

19:                                               ; preds = %1
  store i32 4, i32* %6, align 4
  br label %21

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %19, %18, %17
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %44, %21
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 15
  br i1 %24, label %25, label %47

25:                                               ; preds = %22
  %26 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %27 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %41, %25
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %22

47:                                               ; preds = %22
  %48 = load i64, i64* @debug_608, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (i8*, i32, i32, ...) @hb_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %281

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %60, %61
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %141, %59
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %144

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %140

71:                                               ; preds = %68
  %72 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %73 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %72, i32 0, i32 2
  %74 = load i64**, i64*** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64*, i64** %74, i64 %76
  %78 = load i64*, i64** %77, align 8
  %79 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %80 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %79, i32 0, i32 2
  %81 = load i64**, i64*** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64*, i64** %81, i64 %84
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %88 = add nsw i32 %87, 1
  %89 = call i32 @memcpy(i64* %78, i64* %86, i32 %88)
  %90 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %91 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %90, i32 0, i32 4
  %92 = load i64**, i64*** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64*, i64** %92, i64 %94
  %96 = load i64*, i64** %95, align 8
  %97 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %98 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %97, i32 0, i32 4
  %99 = load i64**, i64*** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64*, i64** %99, i64 %102
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %106 = add nsw i32 %105, 1
  %107 = call i32 @memcpy(i64* %96, i64* %104, i32 %106)
  %108 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %109 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %108, i32 0, i32 3
  %110 = load i64**, i64*** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64*, i64** %110, i64 %112
  %114 = load i64*, i64** %113, align 8
  %115 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %116 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %115, i32 0, i32 3
  %117 = load i64**, i64*** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64*, i64** %117, i64 %120
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %124 = add nsw i32 %123, 1
  %125 = call i32 @memcpy(i64* %114, i64* %122, i32 %124)
  %126 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %127 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %128, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %135 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  store i64 %133, i64* %139, align 8
  br label %140

140:                                              ; preds = %71, %68
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %5, align 4
  br label %64

144:                                              ; preds = %64
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %202, %144
  %146 = load i32, i32* %5, align 4
  %147 = load %struct.s_write*, %struct.s_write** %2, align 8
  %148 = getelementptr inbounds %struct.s_write, %struct.s_write* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 1, %151
  %153 = load i32, i32* %6, align 4
  %154 = sub nsw i32 %152, %153
  %155 = icmp slt i32 %146, %154
  br i1 %155, label %156, label %205

156:                                              ; preds = %145
  %157 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %158 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %157, i32 0, i32 2
  %159 = load i64**, i64*** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64*, i64** %159, i64 %161
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %165 = call i32 @memset(i64* %163, i8 signext 32, i32 %164)
  %166 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %167 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %166, i32 0, i32 4
  %168 = load i64**, i64*** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64*, i64** %168, i64 %170
  %172 = load i64*, i64** %171, align 8
  %173 = load i8, i8* @COL_WHITE, align 1
  %174 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %175 = call i32 @memset(i64* %172, i8 signext %173, i32 %174)
  %176 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %177 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %176, i32 0, i32 3
  %178 = load i64**, i64*** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64*, i64** %178, i64 %180
  %182 = load i64*, i64** %181, align 8
  %183 = load i8, i8* @FONT_REGULAR, align 1
  %184 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %185 = call i32 @memset(i64* %182, i8 signext %183, i32 %184)
  %186 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %187 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %186, i32 0, i32 2
  %188 = load i64**, i64*** %187, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64*, i64** %188, i64 %190
  %192 = load i64*, i64** %191, align 8
  %193 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  store i64 0, i64* %195, align 8
  %196 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %197 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %196, i32 0, i32 1
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  store i64 0, i64* %201, align 8
  br label %202

202:                                              ; preds = %156
  %203 = load i32, i32* %5, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %5, align 4
  br label %145

205:                                              ; preds = %145
  %206 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %207 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %206, i32 0, i32 2
  %208 = load i64**, i64*** %207, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64*, i64** %208, i64 %210
  %212 = load i64*, i64** %211, align 8
  %213 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %214 = call i32 @memset(i64* %212, i8 signext 32, i32 %213)
  %215 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %216 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %215, i32 0, i32 4
  %217 = load i64**, i64*** %216, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64*, i64** %217, i64 %219
  %221 = load i64*, i64** %220, align 8
  %222 = load i8, i8* @COL_WHITE, align 1
  %223 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %224 = call i32 @memset(i64* %221, i8 signext %222, i32 %223)
  %225 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %226 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %225, i32 0, i32 3
  %227 = load i64**, i64*** %226, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i64*, i64** %227, i64 %229
  %231 = load i64*, i64** %230, align 8
  %232 = load i8, i8* @FONT_REGULAR, align 1
  %233 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %234 = call i32 @memset(i64* %231, i8 signext %232, i32 %233)
  %235 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %236 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %235, i32 0, i32 2
  %237 = load i64**, i64*** %236, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64*, i64** %237, i64 %239
  %241 = load i64*, i64** %240, align 8
  %242 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i64, i64* %241, i64 %243
  store i64 0, i64* %244, align 8
  %245 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %246 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %245, i32 0, i32 1
  %247 = load i64*, i64** %246, align 8
  %248 = load i32, i32* %8, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %247, i64 %249
  store i64 0, i64* %250, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %4, align 4
  br label %251

251:                                              ; preds = %267, %205
  %252 = load i32, i32* %4, align 4
  %253 = icmp slt i32 %252, 15
  br i1 %253, label %254, label %270

254:                                              ; preds = %251
  %255 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %256 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %255, i32 0, i32 1
  %257 = load i64*, i64** %256, align 8
  %258 = load i32, i32* %4, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i64, i64* %257, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %254
  %264 = load i32, i32* %9, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %9, align 4
  br label %266

266:                                              ; preds = %263, %254
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %4, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %4, align 4
  br label %251

270:                                              ; preds = %251
  %271 = load i32, i32* %9, align 4
  %272 = load i32, i32* %6, align 4
  %273 = icmp sgt i32 %271, %272
  br i1 %273, label %274, label %278

274:                                              ; preds = %270
  %275 = load i32, i32* %6, align 4
  %276 = load i32, i32* %9, align 4
  %277 = call i32 (i8*, i32, i32, ...) @hb_log(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %275, i32 %276)
  br label %278

278:                                              ; preds = %274, %270
  %279 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  %280 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %279, i32 0, i32 0
  store i32 1, i32* %280, align 8
  br label %281

281:                                              ; preds = %278, %58
  ret void
}

declare dso_local %struct.eia608_screen* @get_current_visible_buffer(%struct.s_write*) #1

declare dso_local i32 @hb_log(i8*, i32, i32, ...) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @memset(i64*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
