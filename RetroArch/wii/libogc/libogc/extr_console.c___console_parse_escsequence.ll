; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_console.c___console_parse_escsequence.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_console.c___console_parse_escsequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i8*, i8* }

@curr_con = common dso_local global %struct.TYPE_3__* null, align 8
@color_table = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @__console_parse_escsequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__console_parse_escsequence(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %353

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 0, i32* %16, align 4
  store i32 0, i32* %6, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %4, align 1
  br label %19

19:                                               ; preds = %75, %12
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i8, i8* %4, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sge i32 %24, 48
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i8, i8* %4, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sle i32 %28, 57
  br label %30

30:                                               ; preds = %26, %22, %19
  %31 = phi i1 [ false, %22 ], [ false, %19 ], [ %29, %26 ]
  br i1 %31, label %32, label %78

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %43, %32
  %34 = load i8, i8* %4, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sge i32 %35, 48
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8, i8* %4, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sle i32 %39, 57
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i1 [ false, %33 ], [ %40, %37 ]
  br i1 %42, label %43, label %63

43:                                               ; preds = %41
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 10
  store i32 %48, i32* %46, align 4
  %49 = load i8, i8* %4, align 1
  %50 = sext i8 %49 to i32
  %51 = sub nsw i32 %50, 48
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %51
  store i32 %56, i32* %54, align 4
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = load i8, i8* %61, align 1
  store i8 %62, i8* %4, align 1
  br label %33

63:                                               ; preds = %41
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  %66 = load i8*, i8** %3, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 59
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %3, align 8
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %70, %63
  %76 = load i8*, i8** %3, align 8
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* %4, align 1
  br label %19

78:                                               ; preds = %30
  %79 = load i8*, i8** %3, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %3, align 8
  %81 = load i8, i8* %79, align 1
  store i8 %81, i8* %4, align 1
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  %84 = load i8, i8* %4, align 1
  %85 = sext i8 %84 to i32
  switch i32 %85, label %351 [
    i32 65, label %86
    i32 66, label %101
    i32 67, label %123
    i32 68, label %145
    i32 72, label %160
    i32 102, label %160
    i32 74, label %199
    i32 75, label %218
    i32 115, label %258
    i32 117, label %269
    i32 109, label %280
  ]

86:                                               ; preds = %78
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %86
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %86
  br label %351

101:                                              ; preds = %78
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp sge i32 %110, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %101
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %118, 1
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %115, %101
  br label %351

123:                                              ; preds = %78
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = icmp sge i32 %132, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %123
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %140, 1
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %137, %123
  br label %351

145:                                              ; preds = %78
  %146 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %145
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 2
  store i32 0, i32* %158, align 8
  br label %159

159:                                              ; preds = %156, %145
  br label %351

160:                                              ; preds = %78, %78
  %161 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp sge i32 %171, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %160
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %179, 1
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %176, %160
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = icmp sge i32 %186, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %183
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %194, 1
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 8
  br label %198

198:                                              ; preds = %191, %183
  br label %351

199:                                              ; preds = %78
  %200 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = call i32 (...) @__console_clear_from_cursor()
  br label %205

205:                                              ; preds = %203, %199
  %206 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = call i32 (...) @__console_clear_to_cursor()
  br label %211

211:                                              ; preds = %209, %205
  %212 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %213, 2
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = call i32 (...) @__console_clear()
  br label %217

217:                                              ; preds = %215, %211
  br label %351

218:                                              ; preds = %78
  %219 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %218
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @__console_clear_line(i32 %225, i32 %228, i32 %231)
  br label %233

233:                                              ; preds = %222, %218
  %234 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %245

237:                                              ; preds = %233
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @__console_clear_line(i32 %240, i32 0, i32 %243)
  br label %245

245:                                              ; preds = %237, %233
  %246 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, 2
  br i1 %248, label %249, label %257

249:                                              ; preds = %245
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curr_con, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @__console_clear_line(i32 %252, i32 0, i32 %255)
  br label %257

257:                                              ; preds = %249, %245
  br label %351

258:                                              ; preds = %78
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 4
  store i32 %261, i32* %263, align 8
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 5
  store i32 %266, i32* %268, align 4
  br label %351

269:                                              ; preds = %78
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 8
  %275 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 0
  store i32 %277, i32* %279, align 8
  br label %351

280:                                              ; preds = %78
  %281 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %282 = load i32, i32* %281, align 4
  %283 = icmp sge i32 %282, 30
  br i1 %283, label %284, label %321

284:                                              ; preds = %280
  %285 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %286 = load i32, i32* %285, align 4
  %287 = icmp sle i32 %286, 39
  br i1 %287, label %288, label %321

288:                                              ; preds = %284
  %289 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = sub nsw i32 %290, 30
  store i32 %291, i32* %289, align 4
  %292 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = icmp eq i32 %293, 9
  br i1 %294, label %295, label %297

295:                                              ; preds = %288
  %296 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 15, i32* %296, align 4
  br label %304

297:                                              ; preds = %288
  %298 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %299 = load i32, i32* %298, align 4
  %300 = icmp sgt i32 %299, 7
  br i1 %300, label %301, label %303

301:                                              ; preds = %297
  %302 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 7, i32* %302, align 4
  br label %303

303:                                              ; preds = %301, %297
  br label %304

304:                                              ; preds = %303, %295
  %305 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %306 = load i32, i32* %305, align 4
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %308, label %312

308:                                              ; preds = %304
  %309 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %310, 8
  store i32 %311, i32* %309, align 4
  br label %312

312:                                              ; preds = %308, %304
  %313 = load i8**, i8*** @color_table, align 8
  %314 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %315 = load i32, i32* %314, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8*, i8** %313, i64 %316
  %318 = load i8*, i8** %317, align 8
  %319 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 7
  store i8* %318, i8** %320, align 8
  br label %350

321:                                              ; preds = %284, %280
  %322 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %323 = load i32, i32* %322, align 4
  %324 = icmp sge i32 %323, 40
  br i1 %324, label %325, label %349

325:                                              ; preds = %321
  %326 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %327 = load i32, i32* %326, align 4
  %328 = icmp sle i32 %327, 47
  br i1 %328, label %329, label %349

329:                                              ; preds = %325
  %330 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %331 = load i32, i32* %330, align 4
  %332 = sub nsw i32 %331, 40
  store i32 %332, i32* %330, align 4
  %333 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %334 = load i32, i32* %333, align 4
  %335 = icmp eq i32 %334, 1
  br i1 %335, label %336, label %340

336:                                              ; preds = %329
  %337 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %338 = load i32, i32* %337, align 4
  %339 = add nsw i32 %338, 8
  store i32 %339, i32* %337, align 4
  br label %340

340:                                              ; preds = %336, %329
  %341 = load i8**, i8*** @color_table, align 8
  %342 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %343 = load i32, i32* %342, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8*, i8** %341, i64 %344
  %346 = load i8*, i8** %345, align 8
  %347 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %347, i32 0, i32 6
  store i8* %346, i8** %348, align 8
  br label %349

349:                                              ; preds = %340, %325, %321
  br label %350

350:                                              ; preds = %349, %312
  br label %351

351:                                              ; preds = %78, %350, %269, %258, %257, %217, %198, %159, %144, %122, %100
  %352 = load i32, i32* %6, align 4
  store i32 %352, i32* %2, align 4
  br label %353

353:                                              ; preds = %351, %11
  %354 = load i32, i32* %2, align 4
  ret i32 %354
}

declare dso_local i32 @__console_clear_from_cursor(...) #1

declare dso_local i32 @__console_clear_to_cursor(...) #1

declare dso_local i32 @__console_clear(...) #1

declare dso_local i32 @__console_clear_line(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
