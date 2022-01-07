; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbi_write_tga_core.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbi_write_tga_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 (i32, i8*, i32)* }

@stbi_write_tga_with_rle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"111 221 2222 11\00", align 1
@stbi__flip_vertically_on_write = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32, i8*)* @stbi_write_tga_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi_write_tga_core(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 4
  br label %32

32:                                               ; preds = %29, %5
  %33 = phi i1 [ true, %5 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %38, 1
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %10, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i32 [ %39, %37 ], [ %41, %40 ]
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 2
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 3, i32 2
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %42
  store i32 0, i32* %6, align 4
  br label %271

54:                                               ; preds = %50
  %55 = load i32, i32* @stbi_write_tga_with_rle, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %54
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %67, %68
  %70 = mul nsw i32 %69, 8
  %71 = load i32, i32* %12, align 4
  %72 = mul nsw i32 %71, 8
  %73 = call i32 @stbiw__outfile(%struct.TYPE_6__* %58, i32 -1, i32 -1, i32 %59, i32 %60, i32 %61, i32 0, i8* %62, i32 %63, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 %64, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %65, i32 %66, i32 %70, i32 %72)
  store i32 %73, i32* %6, align 4
  br label %271

74:                                               ; preds = %54
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %80, %81
  %83 = mul nsw i32 %82, 8
  %84 = load i32, i32* %12, align 4
  %85 = mul nsw i32 %84, 8
  %86 = call i32 @stbiw__writef(%struct.TYPE_6__* %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 %77, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %78, i32 %79, i32 %83, i32 %85)
  %87 = load i64, i64* @stbi__flip_vertically_on_write, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %74
  store i32 0, i32* %16, align 4
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %94

91:                                               ; preds = %74
  %92 = load i32, i32* %9, align 4
  %93 = sub nsw i32 %92, 1
  store i32 %93, i32* %16, align 4
  store i32 -1, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  br label %94

94:                                               ; preds = %91, %89
  br label %95

95:                                               ; preds = %265, %94
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %18, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %269

99:                                               ; preds = %95
  %100 = load i8*, i8** %11, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %8, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, i32* %10, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %100, i64 %106
  store i8* %107, i8** %20, align 8
  store i32 0, i32* %15, align 4
  br label %108

108:                                              ; preds = %260, %99
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %264

112:                                              ; preds = %108
  %113 = load i8*, i8** %20, align 8
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %10, align 4
  %116 = mul nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %113, i64 %117
  store i8* %118, i8** %22, align 8
  store i32 1, i32* %23, align 4
  store i32 1, i32* %21, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %8, align 4
  %121 = sub nsw i32 %120, 1
  %122 = icmp slt i32 %119, %121
  br i1 %122, label %123, label %210

123:                                              ; preds = %112
  %124 = load i32, i32* %21, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %21, align 4
  %126 = load i8*, i8** %22, align 8
  %127 = load i8*, i8** %20, align 8
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  %130 = load i32, i32* %10, align 4
  %131 = mul nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %127, i64 %132
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @memcmp(i8* %126, i8* %133, i32 %134)
  store i32 %135, i32* %23, align 4
  %136 = load i32, i32* %23, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %177

138:                                              ; preds = %123
  %139 = load i8*, i8** %22, align 8
  store i8* %139, i8** %24, align 8
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, 2
  store i32 %141, i32* %17, align 4
  br label %142

142:                                              ; preds = %173, %138
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32, i32* %21, align 4
  %148 = icmp slt i32 %147, 128
  br label %149

149:                                              ; preds = %146, %142
  %150 = phi i1 [ false, %142 ], [ %148, %146 ]
  br i1 %150, label %151, label %176

151:                                              ; preds = %149
  %152 = load i8*, i8** %24, align 8
  %153 = load i8*, i8** %20, align 8
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* %10, align 4
  %156 = mul nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %153, i64 %157
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @memcmp(i8* %152, i8* %158, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %151
  %163 = load i32, i32* %10, align 4
  %164 = load i8*, i8** %24, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %166, i8** %24, align 8
  %167 = load i32, i32* %21, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %21, align 4
  br label %172

169:                                              ; preds = %151
  %170 = load i32, i32* %21, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %21, align 4
  br label %176

172:                                              ; preds = %162
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %17, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %17, align 4
  br label %142

176:                                              ; preds = %169, %149
  br label %209

177:                                              ; preds = %123
  %178 = load i32, i32* %15, align 4
  %179 = add nsw i32 %178, 2
  store i32 %179, i32* %17, align 4
  br label %180

180:                                              ; preds = %205, %177
  %181 = load i32, i32* %17, align 4
  %182 = load i32, i32* %8, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load i32, i32* %21, align 4
  %186 = icmp slt i32 %185, 128
  br label %187

187:                                              ; preds = %184, %180
  %188 = phi i1 [ false, %180 ], [ %186, %184 ]
  br i1 %188, label %189, label %208

189:                                              ; preds = %187
  %190 = load i8*, i8** %22, align 8
  %191 = load i8*, i8** %20, align 8
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %10, align 4
  %194 = mul nsw i32 %192, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %191, i64 %195
  %197 = load i32, i32* %10, align 4
  %198 = call i32 @memcmp(i8* %190, i8* %196, i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %189
  %201 = load i32, i32* %21, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %21, align 4
  br label %204

203:                                              ; preds = %189
  br label %208

204:                                              ; preds = %200
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %17, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %17, align 4
  br label %180

208:                                              ; preds = %203, %187
  br label %209

209:                                              ; preds = %208, %176
  br label %210

210:                                              ; preds = %209, %112
  %211 = load i32, i32* %23, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %243

213:                                              ; preds = %210
  %214 = load i32, i32* %21, align 4
  %215 = sub nsw i32 %214, 1
  %216 = call zeroext i8 @STBIW_UCHAR(i32 %215)
  store i8 %216, i8* %25, align 1
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %218, align 8
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 %219(i32 %222, i8* %25, i32 1)
  store i32 0, i32* %17, align 4
  br label %224

224:                                              ; preds = %239, %213
  %225 = load i32, i32* %17, align 4
  %226 = load i32, i32* %21, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %242

228:                                              ; preds = %224
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* %12, align 4
  %232 = load i8*, i8** %22, align 8
  %233 = load i32, i32* %17, align 4
  %234 = load i32, i32* %10, align 4
  %235 = mul nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %232, i64 %236
  %238 = call i32 @stbiw__write_pixel(%struct.TYPE_6__* %229, i32 -1, i32 %230, i32 %231, i32 0, i8* %237)
  br label %239

239:                                              ; preds = %228
  %240 = load i32, i32* %17, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %17, align 4
  br label %224

242:                                              ; preds = %224
  br label %259

243:                                              ; preds = %210
  %244 = load i32, i32* %21, align 4
  %245 = sub nsw i32 %244, 129
  %246 = call zeroext i8 @STBIW_UCHAR(i32 %245)
  store i8 %246, i8* %26, align 1
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 1
  %249 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %248, align 8
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = call i32 %249(i32 %252, i8* %26, i32 1)
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* %12, align 4
  %257 = load i8*, i8** %22, align 8
  %258 = call i32 @stbiw__write_pixel(%struct.TYPE_6__* %254, i32 -1, i32 %255, i32 %256, i32 0, i8* %257)
  br label %259

259:                                              ; preds = %243, %242
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %21, align 4
  %262 = load i32, i32* %15, align 4
  %263 = add nsw i32 %262, %261
  store i32 %263, i32* %15, align 4
  br label %108

264:                                              ; preds = %108
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %19, align 4
  %267 = load i32, i32* %16, align 4
  %268 = add nsw i32 %267, %266
  store i32 %268, i32* %16, align 4
  br label %95

269:                                              ; preds = %95
  br label %270

270:                                              ; preds = %269
  store i32 1, i32* %6, align 4
  br label %271

271:                                              ; preds = %270, %57, %53
  %272 = load i32, i32* %6, align 4
  ret i32 %272
}

declare dso_local i32 @stbiw__outfile(%struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @stbiw__writef(%struct.TYPE_6__*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local zeroext i8 @STBIW_UCHAR(i32) #1

declare dso_local i32 @stbiw__write_pixel(%struct.TYPE_6__*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
