; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/pshinter/extr_pshglob.c_psh_blues_set_zones.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/pshinter/extr_pshglob.c_psh_blues_set_zones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64, i32*, i64, i32*, i64, i64)* @psh_blues_set_zones to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psh_blues_set_zones(%struct.TYPE_8__* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %28 = load i64, i64* %14, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %7
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %15, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %16, align 8
  br label %40

35:                                               ; preds = %7
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %15, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %16, align 8
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %50 = call i32 @psh_blues_set_zones_0(%struct.TYPE_8__* %45, i32 0, i64 %46, i32* %47, %struct.TYPE_10__* %48, %struct.TYPE_10__* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %56 = call i32 @psh_blues_set_zones_0(%struct.TYPE_8__* %51, i32 1, i64 %52, i32* %53, %struct.TYPE_10__* %54, %struct.TYPE_10__* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %17, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %18, align 8
  %63 = load i64, i64* %17, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %117

65:                                               ; preds = %40
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %19, align 8
  %69 = load i64, i64* %17, align 8
  store i64 %69, i64* %9, align 8
  br label %70

70:                                               ; preds = %111, %65
  %71 = load i64, i64* %9, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %116

73:                                               ; preds = %70
  %74 = load i64, i64* %9, align 8
  %75 = icmp sgt i64 %74, 1
  br i1 %75, label %76, label %96

76:                                               ; preds = %73
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %80, %84
  store i64 %85, i64* %20, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %20, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %76
  %92 = load i64, i64* %20, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %76
  br label %96

96:                                               ; preds = %95, %73
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %96
  %112 = load i64, i64* %9, align 8
  %113 = add nsw i64 %112, -1
  store i64 %113, i64* %9, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 1
  store %struct.TYPE_9__* %115, %struct.TYPE_9__** %19, align 8
  br label %70

116:                                              ; preds = %70
  br label %117

117:                                              ; preds = %116, %40
  %118 = load i64, i64* %18, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %172

120:                                              ; preds = %117
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  store %struct.TYPE_9__* %123, %struct.TYPE_9__** %21, align 8
  %124 = load i64, i64* %18, align 8
  store i64 %124, i64* %9, align 8
  br label %125

125:                                              ; preds = %166, %120
  %126 = load i64, i64* %9, align 8
  %127 = icmp sgt i64 %126, 0
  br i1 %127, label %128, label %171

128:                                              ; preds = %125
  %129 = load i64, i64* %9, align 8
  %130 = icmp sgt i64 %129, 1
  br i1 %130, label %131, label %151

131:                                              ; preds = %128
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %135, %139
  store i64 %140, i64* %22, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %22, align 8
  %145 = icmp slt i64 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %131
  %147 = load i64, i64* %22, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %146, %131
  br label %151

151:                                              ; preds = %150, %128
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 3
  store i64 %154, i64* %156, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %159, %162
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  store i64 %163, i64* %165, align 8
  br label %166

166:                                              ; preds = %151
  %167 = load i64, i64* %9, align 8
  %168 = add nsw i64 %167, -1
  store i64 %168, i64* %9, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 1
  store %struct.TYPE_9__* %170, %struct.TYPE_9__** %21, align 8
  br label %125

171:                                              ; preds = %125
  br label %172

172:                                              ; preds = %171, %117
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  store %struct.TYPE_9__* %175, %struct.TYPE_9__** %27, align 8
  %176 = load i64, i64* %17, align 8
  store i64 %176, i64* %9, align 8
  store i64 1, i64* %23, align 8
  br label %177

177:                                              ; preds = %253, %172
  %178 = load i64, i64* %23, align 8
  %179 = icmp sge i64 %178, 0
  br i1 %179, label %180, label %256

180:                                              ; preds = %177
  %181 = load i64, i64* %9, align 8
  %182 = icmp sgt i64 %181, 0
  br i1 %182, label %183, label %248

183:                                              ; preds = %180
  %184 = load i64, i64* %13, align 8
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = sub nsw i64 %187, %184
  store i64 %188, i64* %186, align 8
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %24, align 8
  %192 = load i64, i64* %9, align 8
  %193 = add nsw i64 %192, -1
  store i64 %193, i64* %9, align 8
  br label %194

194:                                              ; preds = %239, %183
  %195 = load i64, i64* %9, align 8
  %196 = icmp sgt i64 %195, 0
  br i1 %196, label %197, label %242

197:                                              ; preds = %194
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i64 1
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %25, align 8
  %202 = load i64, i64* %25, align 8
  %203 = load i64, i64* %24, align 8
  %204 = sub nsw i64 %202, %203
  store i64 %204, i64* %26, align 8
  %205 = load i64, i64* %26, align 8
  %206 = sdiv i64 %205, 2
  %207 = load i64, i64* %13, align 8
  %208 = icmp slt i64 %206, %207
  br i1 %208, label %209, label %220

209:                                              ; preds = %197
  %210 = load i64, i64* %24, align 8
  %211 = load i64, i64* %26, align 8
  %212 = sdiv i64 %211, 2
  %213 = add nsw i64 %210, %212
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i64 1
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 2
  store i64 %213, i64* %216, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i64 0
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 3
  store i64 %213, i64* %219, align 8
  br label %233

220:                                              ; preds = %197
  %221 = load i64, i64* %24, align 8
  %222 = load i64, i64* %13, align 8
  %223 = add nsw i64 %221, %222
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i64 0
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 3
  store i64 %223, i64* %226, align 8
  %227 = load i64, i64* %25, align 8
  %228 = load i64, i64* %13, align 8
  %229 = sub nsw i64 %227, %228
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i64 1
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 2
  store i64 %229, i64* %232, align 8
  br label %233

233:                                              ; preds = %220, %209
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 1
  store %struct.TYPE_9__* %235, %struct.TYPE_9__** %27, align 8
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %24, align 8
  br label %239

239:                                              ; preds = %233
  %240 = load i64, i64* %9, align 8
  %241 = add nsw i64 %240, -1
  store i64 %241, i64* %9, align 8
  br label %194

242:                                              ; preds = %194
  %243 = load i64, i64* %24, align 8
  %244 = load i64, i64* %13, align 8
  %245 = add nsw i64 %243, %244
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 3
  store i64 %245, i64* %247, align 8
  br label %248

248:                                              ; preds = %242, %180
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %250, align 8
  store %struct.TYPE_9__* %251, %struct.TYPE_9__** %27, align 8
  %252 = load i64, i64* %18, align 8
  store i64 %252, i64* %9, align 8
  br label %253

253:                                              ; preds = %248
  %254 = load i64, i64* %23, align 8
  %255 = add nsw i64 %254, -1
  store i64 %255, i64* %23, align 8
  br label %177

256:                                              ; preds = %177
  ret void
}

declare dso_local i32 @psh_blues_set_zones_0(%struct.TYPE_8__*, i32, i64, i32*, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
