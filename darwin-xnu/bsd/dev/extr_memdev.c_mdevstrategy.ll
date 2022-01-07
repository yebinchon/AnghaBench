; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/extr_memdev.c_mdevstrategy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/extr_memdev.c_mdevstrategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.buf = type { i32 }

@mdev = common dso_local global %struct.TYPE_2__* null, align 8
@mdInited = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ramstrategy: buf_map failed\0A\00", align 1
@B_READ = common dso_local global i32 0, align 4
@mdPhys = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"mdevstrategy: sink address %016llX not mapped\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"mdevstrategy: source address %016llX not mapped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*)* @mdevstrategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdevstrategy(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %2, align 8
  %12 = load %struct.buf*, %struct.buf** %2, align 8
  %13 = call i32 @buf_device(%struct.buf* %12)
  %14 = call i32 @minor(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @mdInited, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.buf*, %struct.buf** %2, align 8
  %26 = load i32, i32* @ENXIO, align 4
  %27 = call i32 @buf_seterror(%struct.buf* %25, i32 %26)
  %28 = load %struct.buf*, %struct.buf** %2, align 8
  %29 = call i32 @buf_biodone(%struct.buf* %28)
  br label %270

30:                                               ; preds = %1
  %31 = load %struct.buf*, %struct.buf** %2, align 8
  %32 = load %struct.buf*, %struct.buf** %2, align 8
  %33 = call i32 @buf_count(%struct.buf* %32)
  %34 = call i32 @buf_setresid(%struct.buf* %31, i32 %33)
  %35 = load %struct.buf*, %struct.buf** %2, align 8
  %36 = call i32 @buf_blkno(%struct.buf* %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %36, %42
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 12
  %52 = icmp sge i32 %44, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %30
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 12
  %62 = icmp ne i32 %54, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load %struct.buf*, %struct.buf** %2, align 8
  %65 = load i32, i32* @EINVAL, align 4
  %66 = call i32 @buf_seterror(%struct.buf* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %53
  %68 = load %struct.buf*, %struct.buf** %2, align 8
  %69 = call i32 @buf_biodone(%struct.buf* %68)
  br label %270

70:                                               ; preds = %30
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.buf*, %struct.buf** %2, align 8
  %73 = call i32 @buf_count(%struct.buf* %72)
  %74 = add nsw i32 %71, %73
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 12
  %82 = icmp sgt i32 %74, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %70
  %84 = load %struct.buf*, %struct.buf** %2, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 12
  %92 = load i32, i32* %7, align 4
  %93 = sub nsw i32 %91, %92
  %94 = call i32 @buf_setcount(%struct.buf* %84, i32 %93)
  br label %95

95:                                               ; preds = %83, %70
  %96 = load %struct.buf*, %struct.buf** %2, align 8
  %97 = call i64 @buf_map(%struct.buf* %96, i32* %6)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %95
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %107, 12
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %10, align 4
  %111 = load %struct.buf*, %struct.buf** %2, align 8
  %112 = call i32 @buf_flags(%struct.buf* %111)
  %113 = load i32, i32* @B_READ, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %191

116:                                              ; preds = %101
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @mdPhys, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %116
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i8*
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = load %struct.buf*, %struct.buf** %2, align 8
  %134 = call i32 @buf_count(%struct.buf* %133)
  %135 = sext i32 %134 to i64
  %136 = call i32 @bcopy(i8* %129, i8* %132, i64 %135)
  br label %190

137:                                              ; preds = %116
  %138 = load %struct.buf*, %struct.buf** %2, align 8
  %139 = call i32 @buf_count(%struct.buf* %138)
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %166, %137
  %141 = load i32, i32* %3, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %189

143:                                              ; preds = %140
  %144 = load i32, i32* %6, align 4
  %145 = and i32 %144, 4095
  %146 = sub nsw i32 4096, %145
  %147 = load i32, i32* %10, align 4
  %148 = and i32 %147, 4095
  %149 = sub nsw i32 4096, %148
  %150 = call i32 @min(i32 %146, i32 %149)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @min(i32 %151, i32 %152)
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* @kernel_pmap, align 4
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = trunc i64 %156 to i32
  %158 = call i64 @pmap_find_phys(i32 %154, i32 %157)
  store i64 %158, i64* %11, align 8
  %159 = load i64, i64* %11, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %143
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = trunc i64 %163 to i32
  %165 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %161, %143
  %167 = load i64, i64* %11, align 8
  %168 = trunc i64 %167 to i32
  %169 = shl i32 %168, 12
  %170 = load i32, i32* %6, align 4
  %171 = and i32 %170, 4095
  %172 = or i32 %169, %171
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @bcopy_phys(i32 %173, i32 %174, i32 %175)
  %177 = load i32, i32* %9, align 4
  %178 = ashr i32 %177, 12
  %179 = call i32 @mapping_set_mod(i32 %178)
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* %5, align 4
  %182 = sub i32 %180, %181
  store i32 %182, i32* %3, align 4
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* %5, align 4
  %185 = add i32 %183, %184
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %5, align 4
  %188 = add i32 %186, %187
  store i32 %188, i32* %10, align 4
  br label %140

189:                                              ; preds = %140
  br label %190

190:                                              ; preds = %189, %126
  br label %263

191:                                              ; preds = %101
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdev, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @mdPhys, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %212, label %201

201:                                              ; preds = %191
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = inttoptr i64 %203 to i8*
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = inttoptr i64 %206 to i8*
  %208 = load %struct.buf*, %struct.buf** %2, align 8
  %209 = call i32 @buf_count(%struct.buf* %208)
  %210 = sext i32 %209 to i64
  %211 = call i32 @bcopy(i8* %204, i8* %207, i64 %210)
  br label %262

212:                                              ; preds = %191
  %213 = load %struct.buf*, %struct.buf** %2, align 8
  %214 = call i32 @buf_count(%struct.buf* %213)
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %241, %212
  %216 = load i32, i32* %3, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %261

218:                                              ; preds = %215
  %219 = load i32, i32* %6, align 4
  %220 = and i32 %219, 4095
  %221 = sub nsw i32 4096, %220
  %222 = load i32, i32* %10, align 4
  %223 = and i32 %222, 4095
  %224 = sub nsw i32 4096, %223
  %225 = call i32 @min(i32 %221, i32 %224)
  store i32 %225, i32* %4, align 4
  %226 = load i32, i32* %4, align 4
  %227 = load i32, i32* %3, align 4
  %228 = call i32 @min(i32 %226, i32 %227)
  store i32 %228, i32* %5, align 4
  %229 = load i32, i32* @kernel_pmap, align 4
  %230 = load i32, i32* %6, align 4
  %231 = sext i32 %230 to i64
  %232 = trunc i64 %231 to i32
  %233 = call i64 @pmap_find_phys(i32 %229, i32 %232)
  store i64 %233, i64* %11, align 8
  %234 = load i64, i64* %11, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %218
  %237 = load i32, i32* %6, align 4
  %238 = sext i32 %237 to i64
  %239 = trunc i64 %238 to i32
  %240 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %239)
  br label %241

241:                                              ; preds = %236, %218
  %242 = load i64, i64* %11, align 8
  %243 = trunc i64 %242 to i32
  %244 = shl i32 %243, 12
  %245 = load i32, i32* %6, align 4
  %246 = and i32 %245, 4095
  %247 = or i32 %244, %246
  store i32 %247, i32* %9, align 4
  %248 = load i32, i32* %9, align 4
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* %5, align 4
  %251 = call i32 @bcopy_phys(i32 %248, i32 %249, i32 %250)
  %252 = load i32, i32* %3, align 4
  %253 = load i32, i32* %5, align 4
  %254 = sub i32 %252, %253
  store i32 %254, i32* %3, align 4
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* %5, align 4
  %257 = add i32 %255, %256
  store i32 %257, i32* %6, align 4
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* %5, align 4
  %260 = add i32 %258, %259
  store i32 %260, i32* %10, align 4
  br label %215

261:                                              ; preds = %215
  br label %262

262:                                              ; preds = %261, %201
  br label %263

263:                                              ; preds = %262, %190
  %264 = load %struct.buf*, %struct.buf** %2, align 8
  %265 = call i32 @buf_unmap(%struct.buf* %264)
  %266 = load %struct.buf*, %struct.buf** %2, align 8
  %267 = call i32 @buf_setresid(%struct.buf* %266, i32 0)
  %268 = load %struct.buf*, %struct.buf** %2, align 8
  %269 = call i32 @buf_biodone(%struct.buf* %268)
  br label %270

270:                                              ; preds = %263, %67, %24
  ret void
}

declare dso_local i32 @minor(i32) #1

declare dso_local i32 @buf_device(%struct.buf*) #1

declare dso_local i32 @buf_seterror(%struct.buf*, i32) #1

declare dso_local i32 @buf_biodone(%struct.buf*) #1

declare dso_local i32 @buf_setresid(%struct.buf*, i32) #1

declare dso_local i32 @buf_count(%struct.buf*) #1

declare dso_local i32 @buf_blkno(%struct.buf*) #1

declare dso_local i32 @buf_setcount(%struct.buf*, i32) #1

declare dso_local i64 @buf_map(%struct.buf*, i32*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @buf_flags(%struct.buf*) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @pmap_find_phys(i32, i32) #1

declare dso_local i32 @bcopy_phys(i32, i32, i32) #1

declare dso_local i32 @mapping_set_mod(i32) #1

declare dso_local i32 @buf_unmap(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
