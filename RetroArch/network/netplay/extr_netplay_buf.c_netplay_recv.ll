; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_buf.c_netplay_recv.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_buf.c_netplay_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_buffer = type { i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netplay_recv(%struct.socket_buffer* %0, i32 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.socket_buffer* %0, %struct.socket_buffer** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %19 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %22 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %96

25:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %31 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %35 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %38 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %42 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %40, %47
  %49 = call i32 @socket_receive_all_nonblocking(i32 %26, i32* %12, i64 %33, i64 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %25
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %25
  store i32 -1, i32* %6, align 4
  br label %294

56:                                               ; preds = %52
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %60 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %64 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %67 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %65, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %56
  %71 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %72 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  store i32 0, i32* %12, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %75 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %78 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %79, 1
  %81 = call i32 @socket_receive_all_nonblocking(i32 %73, i32* %12, i64 %76, i64 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %70
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84, %70
  store i32 -1, i32* %6, align 4
  br label %294

88:                                               ; preds = %84
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %92 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  br label %95

95:                                               ; preds = %88, %56
  br label %127

96:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %99 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %102 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %106 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %109 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %107, %110
  %112 = sub nsw i64 %111, 1
  %113 = call i32 @socket_receive_all_nonblocking(i32 %97, i32* %12, i64 %104, i64 %112)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %96
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116, %96
  store i32 -1, i32* %6, align 4
  br label %294

120:                                              ; preds = %116
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %124 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, %122
  store i64 %126, i64* %124, align 8
  br label %127

127:                                              ; preds = %120, %95
  %128 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %129 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %132 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = icmp sge i64 %130, %133
  br i1 %134, label %145, label %135

135:                                              ; preds = %127
  %136 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %137 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %140 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %138, %141
  %143 = load i64, i64* %10, align 8
  %144 = icmp uge i64 %142, %143
  br i1 %144, label %145, label %210

145:                                              ; preds = %135, %127
  %146 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %147 = call i64 @buf_unread(%struct.socket_buffer* %146)
  store i64 %147, i64* %14, align 8
  %148 = load i64, i64* %10, align 8
  %149 = load i64, i64* %14, align 8
  %150 = icmp ule i64 %148, %149
  br i1 %150, label %151, label %180

151:                                              ; preds = %145
  %152 = load i8*, i8** %9, align 8
  %153 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %154 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %157 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %155, %158
  %160 = load i64, i64* %10, align 8
  %161 = call i32 @memcpy(i8* %152, i64 %159, i64 %160)
  %162 = load i64, i64* %10, align 8
  %163 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %164 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, %162
  store i64 %166, i64* %164, align 8
  %167 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %168 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %171 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp sge i64 %169, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %151
  %175 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %176 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %175, i32 0, i32 4
  store i64 0, i64* %176, align 8
  br label %177

177:                                              ; preds = %174, %151
  %178 = load i64, i64* %10, align 8
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %13, align 4
  br label %209

180:                                              ; preds = %145
  %181 = load i8*, i8** %9, align 8
  %182 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %183 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %186 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %184, %187
  %189 = load i64, i64* %14, align 8
  %190 = call i32 @memcpy(i8* %181, i64 %188, i64 %189)
  %191 = load i64, i64* %14, align 8
  %192 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %193 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = add i64 %194, %191
  store i64 %195, i64* %193, align 8
  %196 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %197 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %200 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = icmp sge i64 %198, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %180
  %204 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %205 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %204, i32 0, i32 4
  store i64 0, i64* %205, align 8
  br label %206

206:                                              ; preds = %203, %180
  %207 = load i64, i64* %14, align 8
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %13, align 4
  br label %209

209:                                              ; preds = %206, %177
  br label %259

210:                                              ; preds = %135
  %211 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %212 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %215 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = sub nsw i64 %213, %216
  store i64 %217, i64* %15, align 8
  %218 = load i64, i64* %10, align 8
  %219 = load i64, i64* %15, align 8
  %220 = sub i64 %218, %219
  store i64 %220, i64* %16, align 8
  %221 = load i64, i64* %16, align 8
  %222 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %223 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp uge i64 %221, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %210
  %227 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %228 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  br label %232

230:                                              ; preds = %210
  %231 = load i64, i64* %16, align 8
  br label %232

232:                                              ; preds = %230, %226
  %233 = phi i64 [ %229, %226 ], [ %231, %230 ]
  store i64 %233, i64* %17, align 8
  %234 = load i8*, i8** %9, align 8
  %235 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %236 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %239 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = add nsw i64 %237, %240
  %242 = load i64, i64* %15, align 8
  %243 = call i32 @memcpy(i8* %234, i64 %241, i64 %242)
  %244 = load i8*, i8** %9, align 8
  %245 = load i64, i64* %15, align 8
  %246 = getelementptr inbounds i8, i8* %244, i64 %245
  %247 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %248 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* %17, align 8
  %251 = call i32 @memcpy(i8* %246, i64 %249, i64 %250)
  %252 = load i64, i64* %17, align 8
  %253 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %254 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %253, i32 0, i32 4
  store i64 %252, i64* %254, align 8
  %255 = load i64, i64* %15, align 8
  %256 = load i64, i64* %17, align 8
  %257 = add i64 %255, %256
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %13, align 4
  br label %259

259:                                              ; preds = %232, %209
  %260 = load i32, i32* %11, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %292

262:                                              ; preds = %259
  %263 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %264 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.socket_buffer*, %struct.socket_buffer** %7, align 8
  %267 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %266, i32 0, i32 1
  store i64 %265, i64* %267, align 8
  %268 = load i32, i32* %13, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %275, label %270

270:                                              ; preds = %262
  %271 = load i32, i32* %13, align 4
  %272 = load i64, i64* %10, align 8
  %273 = trunc i64 %272 to i32
  %274 = icmp slt i32 %271, %273
  br i1 %274, label %275, label %291

275:                                              ; preds = %270, %262
  %276 = load i32, i32* %8, align 4
  %277 = load i8*, i8** %9, align 8
  %278 = load i32, i32* %13, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, i8* %277, i64 %279
  %281 = load i64, i64* %10, align 8
  %282 = load i32, i32* %13, align 4
  %283 = sext i32 %282 to i64
  %284 = sub i64 %281, %283
  %285 = call i32 @socket_receive_all_blocking(i32 %276, i8* %280, i64 %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %275
  store i32 -1, i32* %6, align 4
  br label %294

288:                                              ; preds = %275
  %289 = load i64, i64* %10, align 8
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %13, align 4
  br label %291

291:                                              ; preds = %288, %270
  br label %292

292:                                              ; preds = %291, %259
  %293 = load i32, i32* %13, align 4
  store i32 %293, i32* %6, align 4
  br label %294

294:                                              ; preds = %292, %287, %119, %87, %55
  %295 = load i32, i32* %6, align 4
  ret i32 %295
}

declare dso_local i32 @socket_receive_all_nonblocking(i32, i32*, i64, i64) #1

declare dso_local i64 @buf_unread(%struct.socket_buffer*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @socket_receive_all_blocking(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
