; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_hibernate_i386.c_hibernate_page_list_allocate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_hibernate_i386.c_hibernate_page_list_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32* }
%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { i64, i64, i32 }

@MAX_BANKS = common dso_local global i32 0, align 4
@PE_state = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@max_ppnum = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Invalid memory map descriptor size\00", align 1
@I386_PGSHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"hib bank[%d]: 0x%x000 end 0x%xfff\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"efi pagecount %d\0A\00", align 1
@shadow_pages_total = common dso_local global i64 0, align 8
@shadow_ptop = common dso_local global i32 0, align 4
@shadow_stolen_idx = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @hibernate_page_list_allocate(i64 %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %23 = load i32, i32* @MAX_BANKS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %17, align 8
  %26 = alloca %struct.TYPE_10__, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @PE_state, i32 0, i32 0), align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %19, align 8
  %29 = load i32, i32* @max_ppnum, align 4
  store i32 %29, i32* %21, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @ml_static_ptovirt(i32 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %13, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %15, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %15, align 8
  %49 = udiv i64 %47, %48
  store i64 %49, i64* %14, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %16, align 8
  br label %50

50:                                               ; preds = %179, %41
  %51 = load i64, i64* %16, align 8
  %52 = load i64, i64* %14, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %187

54:                                               ; preds = %50
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @I386_PGSHIFT, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %4, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %21, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %179

68:                                               ; preds = %54
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %69, %70
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* %21, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load i32, i32* %21, align 4
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 %76, %77
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %75, %68
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  br label %179

84:                                               ; preds = %80
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %177 [
    i32 141, label %88
    i32 132, label %88
    i32 136, label %93
    i32 135, label %93
    i32 139, label %93
    i32 138, label %93
    i32 137, label %93
    i32 130, label %176
    i32 129, label %176
    i32 140, label %176
    i32 131, label %176
    i32 128, label %176
    i32 134, label %176
    i32 133, label %176
  ]

88:                                               ; preds = %84, %84
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %20, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %20, align 8
  br label %93

93:                                               ; preds = %84, %84, %84, %84, %84, %88
  store i64 0, i64* %7, align 8
  br label %94

94:                                               ; preds = %121, %93
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %8, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %124

98:                                               ; preds = %94
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %121

106:                                              ; preds = %98
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i64, i64* %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %109, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %106
  %116 = load i32, i32* %4, align 4
  %117 = load i64, i64* %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %115, %106
  br label %124

121:                                              ; preds = %105
  %122 = load i64, i64* %7, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %7, align 8
  br label %94

124:                                              ; preds = %120, %94
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  br label %178

128:                                              ; preds = %124
  %129 = load i64, i64* %7, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %128
  %132 = load i32, i32* %4, align 4
  %133 = load i64, i64* %7, align 8
  %134 = sub i64 %133, 1
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 1, %137
  %139 = icmp eq i32 %132, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %131
  %141 = load i64, i64* %7, align 8
  %142 = add i64 %141, -1
  store i64 %142, i64* %7, align 8
  br label %168

143:                                              ; preds = %131, %128
  %144 = load i64, i64* %8, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %8, align 8
  %146 = load i64, i64* %8, align 8
  %147 = load i32, i32* @MAX_BANKS, align 4
  %148 = sext i32 %147 to i64
  %149 = icmp uge i64 %146, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %178

151:                                              ; preds = %143
  %152 = load i64, i64* %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %152
  %154 = load i64, i64* %7, align 8
  %155 = add i64 %154, 1
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %155
  %157 = load i64, i64* %8, align 8
  %158 = load i64, i64* %7, align 8
  %159 = sub i64 %157, %158
  %160 = sub i64 %159, 1
  %161 = mul i64 %160, 24
  %162 = trunc i64 %161 to i32
  %163 = call i32 @bcopy(%struct.TYPE_10__* %153, %struct.TYPE_10__* %156, i32 %162)
  %164 = load i32, i32* %4, align 4
  %165 = load i64, i64* %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 8
  br label %168

168:                                              ; preds = %151, %140
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 %169, %170
  %172 = sub nsw i32 %171, 1
  %173 = load i64, i64* %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  store i32 %172, i32* %175, align 4
  br label %178

176:                                              ; preds = %84, %84, %84, %84, %84, %84, %84
  br label %177

177:                                              ; preds = %84, %176
  br label %178

178:                                              ; preds = %177, %168, %150, %127
  br label %179

179:                                              ; preds = %178, %83, %67
  %180 = load i64, i64* %16, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %16, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %183 = ptrtoint %struct.TYPE_12__* %182 to i64
  %184 = load i64, i64* %15, align 8
  %185 = add i64 %183, %184
  %186 = inttoptr i64 %185 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %186, %struct.TYPE_12__** %13, align 8
  br label %50

187:                                              ; preds = %50
  %188 = load i64, i64* %8, align 8
  %189 = load i32, i32* @MAX_BANKS, align 4
  %190 = sext i32 %189 to i64
  %191 = icmp uge i64 %188, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  store i32 1, i32* %22, align 4
  br label %309

193:                                              ; preds = %187
  store i32 32, i32* %6, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %7, align 8
  br label %194

194:                                              ; preds = %222, %193
  %195 = load i64, i64* %7, align 8
  %196 = load i64, i64* %8, align 8
  %197 = icmp ult i64 %195, %196
  br i1 %197, label %198, label %225

198:                                              ; preds = %194
  %199 = load i64, i64* %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1
  %204 = load i64, i64* %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sub nsw i32 %203, %207
  %209 = sext i32 %208 to i64
  store i64 %209, i64* %9, align 8
  %210 = load i64, i64* %9, align 8
  %211 = load i64, i64* %10, align 8
  %212 = add i64 %211, %210
  store i64 %212, i64* %10, align 8
  %213 = load i64, i64* %9, align 8
  %214 = add i64 %213, 31
  %215 = lshr i64 %214, 5
  %216 = mul i64 %215, 8
  %217 = add i64 24, %216
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = add i64 %219, %217
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %6, align 4
  br label %222

222:                                              ; preds = %198
  %223 = load i64, i64* %7, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %7, align 8
  br label %194

225:                                              ; preds = %194
  %226 = load i32, i32* %6, align 4
  %227 = call i64 @kalloc(i32 %226)
  %228 = inttoptr i64 %227 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %228, %struct.TYPE_9__** %11, align 8
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %230 = icmp ne %struct.TYPE_9__* %229, null
  br i1 %230, label %233, label %231

231:                                              ; preds = %225
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %232, %struct.TYPE_9__** %2, align 8
  store i32 1, i32* %22, align 4
  br label %309

233:                                              ; preds = %225
  %234 = load i32, i32* %6, align 4
  %235 = sext i32 %234 to i64
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  store i64 %235, i64* %237, align 8
  %238 = load i64, i64* %10, align 8
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 1
  store i64 %238, i64* %240, align 8
  %241 = load i64, i64* %8, align 8
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 2
  store i64 %241, i64* %243, align 8
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 3
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i64 0
  store %struct.TYPE_10__* %247, %struct.TYPE_10__** %12, align 8
  store i64 0, i64* %7, align 8
  br label %248

248:                                              ; preds = %298, %233
  %249 = load i64, i64* %7, align 8
  %250 = load i64, i64* %8, align 8
  %251 = icmp ult i64 %249, %250
  br i1 %251, label %252, label %301

252:                                              ; preds = %248
  %253 = load i64, i64* %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  store i32 %256, i32* %258, align 8
  %259 = load i64, i64* %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, 1
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = sub nsw i32 %268, %271
  %273 = add nsw i32 %272, 31
  %274 = ashr i32 %273, 5
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 2
  store i32 %274, i32* %276, align 8
  %277 = load i64, i64* %3, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %288

279:                                              ; preds = %252
  %280 = load i64, i64* %7, align 8
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @kprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %280, i32 %283, i32 %286)
  br label %288

288:                                              ; preds = %279, %252
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 3
  %291 = load i32*, i32** %290, align 8
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %291, i64 %295
  %297 = bitcast i32* %296 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %297, %struct.TYPE_10__** %12, align 8
  br label %298

298:                                              ; preds = %288
  %299 = load i64, i64* %7, align 8
  %300 = add i64 %299, 1
  store i64 %300, i64* %7, align 8
  br label %248

301:                                              ; preds = %248
  %302 = load i64, i64* %3, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load i64, i64* %20, align 8
  %306 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %305)
  br label %307

307:                                              ; preds = %304, %301
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %308, %struct.TYPE_9__** %2, align 8
  store i32 1, i32* %22, align 4
  br label %309

309:                                              ; preds = %307, %231, %192
  %310 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %310)
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %311
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ml_static_ptovirt(i32) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local i32 @bcopy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #2

declare dso_local i64 @kalloc(i32) #2

declare dso_local i32 @kprintf(i8*, i64, i32, i32) #2

declare dso_local i32 @printf(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
