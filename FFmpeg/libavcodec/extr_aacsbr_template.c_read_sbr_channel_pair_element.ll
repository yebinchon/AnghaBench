; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_read_sbr_channel_pair_element.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_read_sbr_channel_pair_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, %struct.TYPE_16__*, i8* }
%struct.TYPE_16__ = type { i32, i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_15__*, i32*)* @read_sbr_channel_pair_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_sbr_channel_pair_element(i32* %0, %struct.TYPE_15__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = call i8* @get_bits1(i32* %9)
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @skip_bits(i32* %13, i32 8)
  br label %15

15:                                               ; preds = %12, %3
  %16 = load i32*, i32** %7, align 8
  %17 = call i8* @get_bits1(i32* %16)
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = icmp ne i8* %17, null
  br i1 %20, label %21, label %145

21:                                               ; preds = %15
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i64 0
  %29 = call i64 @read_sbr_grid(i32* %22, %struct.TYPE_15__* %23, i32* %24, %struct.TYPE_16__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %290

32:                                               ; preds = %21
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i64 1
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i64 0
  %41 = call i32 @copy_sbr_grid(%struct.TYPE_16__* %36, %struct.TYPE_16__* %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i64 0
  %48 = call i32 @read_sbr_dtdf(%struct.TYPE_15__* %42, i32* %43, %struct.TYPE_16__* %47)
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i64 1
  %55 = call i32 @read_sbr_dtdf(%struct.TYPE_15__* %49, i32* %50, %struct.TYPE_16__* %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i64 0
  %62 = call i32 @read_sbr_invf(%struct.TYPE_15__* %56, i32* %57, %struct.TYPE_16__* %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i64 1
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @memcpy(i32 %70, i32 %78, i32 4)
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @memcpy(i32 %87, i32 %95, i32 4)
  %97 = load i32*, i32** %5, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i64 0
  %104 = call i32 @read_sbr_envelope(i32* %97, %struct.TYPE_15__* %98, i32* %99, %struct.TYPE_16__* %103, i32 0)
  store i32 %104, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %32
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %4, align 4
  br label %290

108:                                              ; preds = %32
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i64 0
  %116 = call i32 @read_sbr_noise(i32* %109, %struct.TYPE_15__* %110, i32* %111, %struct.TYPE_16__* %115, i32 0)
  store i32 %116, i32* %8, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %4, align 4
  br label %290

120:                                              ; preds = %108
  %121 = load i32*, i32** %5, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i64 1
  %128 = call i32 @read_sbr_envelope(i32* %121, %struct.TYPE_15__* %122, i32* %123, %struct.TYPE_16__* %127, i32 1)
  store i32 %128, i32* %8, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %120
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %4, align 4
  br label %290

132:                                              ; preds = %120
  %133 = load i32*, i32** %5, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i64 1
  %140 = call i32 @read_sbr_noise(i32* %133, %struct.TYPE_15__* %134, i32* %135, %struct.TYPE_16__* %139, i32 1)
  store i32 %140, i32* %8, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %132
  %143 = load i32, i32* %8, align 4
  store i32 %143, i32* %4, align 4
  br label %290

144:                                              ; preds = %132
  br label %243

145:                                              ; preds = %15
  %146 = load i32*, i32** %5, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i64 0
  %153 = call i64 @read_sbr_grid(i32* %146, %struct.TYPE_15__* %147, i32* %148, %struct.TYPE_16__* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %165, label %155

155:                                              ; preds = %145
  %156 = load i32*, i32** %5, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i64 1
  %163 = call i64 @read_sbr_grid(i32* %156, %struct.TYPE_15__* %157, i32* %158, %struct.TYPE_16__* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %155, %145
  store i32 -1, i32* %4, align 4
  br label %290

166:                                              ; preds = %155
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %168 = load i32*, i32** %7, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i64 0
  %173 = call i32 @read_sbr_dtdf(%struct.TYPE_15__* %167, i32* %168, %struct.TYPE_16__* %172)
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %175 = load i32*, i32** %7, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i64 1
  %180 = call i32 @read_sbr_dtdf(%struct.TYPE_15__* %174, i32* %175, %struct.TYPE_16__* %179)
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %182 = load i32*, i32** %7, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i64 0
  %187 = call i32 @read_sbr_invf(%struct.TYPE_15__* %181, i32* %182, %struct.TYPE_16__* %186)
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %189 = load i32*, i32** %7, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i64 1
  %194 = call i32 @read_sbr_invf(%struct.TYPE_15__* %188, i32* %189, %struct.TYPE_16__* %193)
  %195 = load i32*, i32** %5, align 8
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %197 = load i32*, i32** %7, align 8
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i64 0
  %202 = call i32 @read_sbr_envelope(i32* %195, %struct.TYPE_15__* %196, i32* %197, %struct.TYPE_16__* %201, i32 0)
  store i32 %202, i32* %8, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %166
  %205 = load i32, i32* %8, align 4
  store i32 %205, i32* %4, align 4
  br label %290

206:                                              ; preds = %166
  %207 = load i32*, i32** %5, align 8
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %209 = load i32*, i32** %7, align 8
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i64 1
  %214 = call i32 @read_sbr_envelope(i32* %207, %struct.TYPE_15__* %208, i32* %209, %struct.TYPE_16__* %213, i32 1)
  store i32 %214, i32* %8, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %206
  %217 = load i32, i32* %8, align 4
  store i32 %217, i32* %4, align 4
  br label %290

218:                                              ; preds = %206
  %219 = load i32*, i32** %5, align 8
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %221 = load i32*, i32** %7, align 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i64 0
  %226 = call i32 @read_sbr_noise(i32* %219, %struct.TYPE_15__* %220, i32* %221, %struct.TYPE_16__* %225, i32 0)
  store i32 %226, i32* %8, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %218
  %229 = load i32, i32* %8, align 4
  store i32 %229, i32* %4, align 4
  br label %290

230:                                              ; preds = %218
  %231 = load i32*, i32** %5, align 8
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %233 = load i32*, i32** %7, align 8
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i64 1
  %238 = call i32 @read_sbr_noise(i32* %231, %struct.TYPE_15__* %232, i32* %233, %struct.TYPE_16__* %237, i32 1)
  store i32 %238, i32* %8, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %230
  %241 = load i32, i32* %8, align 4
  store i32 %241, i32* %4, align 4
  br label %290

242:                                              ; preds = %230
  br label %243

243:                                              ; preds = %242, %144
  %244 = load i32*, i32** %7, align 8
  %245 = call i8* @get_bits1(i32* %244)
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i64 0
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 1
  store i8* %245, i8** %250, align 8
  %251 = icmp ne i8* %245, null
  br i1 %251, label %252, label %266

252:                                              ; preds = %243
  %253 = load i32*, i32** %7, align 8
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @get_bits1_vector(i32* %253, i32 %259, i32 %264)
  br label %266

266:                                              ; preds = %252, %243
  %267 = load i32*, i32** %7, align 8
  %268 = call i8* @get_bits1(i32* %267)
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i64 1
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 1
  store i8* %268, i8** %273, align 8
  %274 = icmp ne i8* %268, null
  br i1 %274, label %275, label %289

275:                                              ; preds = %266
  %276 = load i32*, i32** %7, align 8
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i64 1
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @get_bits1_vector(i32* %276, i32 %282, i32 %287)
  br label %289

289:                                              ; preds = %275, %266
  store i32 0, i32* %4, align 4
  br label %290

290:                                              ; preds = %289, %240, %228, %216, %204, %165, %142, %130, %118, %106, %31
  %291 = load i32, i32* %4, align 4
  ret i32 %291
}

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i64 @read_sbr_grid(i32*, %struct.TYPE_15__*, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @copy_sbr_grid(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @read_sbr_dtdf(%struct.TYPE_15__*, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @read_sbr_invf(%struct.TYPE_15__*, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @read_sbr_envelope(i32*, %struct.TYPE_15__*, i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @read_sbr_noise(i32*, %struct.TYPE_15__*, i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @get_bits1_vector(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
