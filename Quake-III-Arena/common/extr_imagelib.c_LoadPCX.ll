; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_imagelib.c_LoadPCX.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_imagelib.c_LoadPCX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Bad pcx file %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Skin_Cache: couldn't allocate\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"PCX file %s was malformed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LoadPCX(i8* %0, i32** %1, i32** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i32** %11 to i8**
  %22 = call i32 @LoadFile(i8* %20, i8** %21)
  store i32 %22, i32* %15, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = bitcast i32* %23 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %12, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32* %26, i32** %11, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @LittleShort(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @LittleShort(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @LittleShort(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @LittleShort(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @LittleShort(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @LittleShort(i32 %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @LittleShort(i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @LittleShort(i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 10
  br i1 %86, label %112, label %87

87:                                               ; preds = %5
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 5
  br i1 %91, label %112, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 11
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %112, label %97

97:                                               ; preds = %92
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 12
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 8
  br i1 %101, label %112, label %102

102:                                              ; preds = %97
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = icmp sge i32 %105, 640
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = icmp sge i32 %110, 480
  br i1 %111, label %112, label %115

112:                                              ; preds = %107, %102, %97, %92, %87, %5
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32**, i32*** %8, align 8
  %117 = icmp ne i32** %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %115
  %119 = call i32* @malloc(i32 768)
  %120 = load i32**, i32*** %8, align 8
  store i32* %119, i32** %120, align 8
  %121 = load i32**, i32*** %8, align 8
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %124 = bitcast %struct.TYPE_3__* %123 to i32*
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = getelementptr inbounds i32, i32* %127, i64 -768
  %129 = call i32 @memcpy(i32* %122, i32* %128, i32 768)
  br label %130

130:                                              ; preds = %118, %115
  %131 = load i32*, i32** %9, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  %138 = load i32*, i32** %9, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %133, %130
  %140 = load i32*, i32** %10, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  %147 = load i32*, i32** %10, align 8
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %142, %139
  %149 = load i32**, i32*** %7, align 8
  %150 = icmp ne i32** %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  br label %261

152:                                              ; preds = %148
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  %161 = mul nsw i32 %156, %160
  %162 = call i32* @malloc(i32 %161)
  store i32* %162, i32** %18, align 8
  %163 = load i32*, i32** %18, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %152
  %166 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %152
  %168 = load i32*, i32** %18, align 8
  %169 = load i32**, i32*** %7, align 8
  store i32* %168, i32** %169, align 8
  %170 = load i32*, i32** %18, align 8
  store i32* %170, i32** %19, align 8
  store i32 0, i32* %14, align 4
  br label %171

171:                                              ; preds = %234, %167
  %172 = load i32, i32* %14, align 4
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = icmp sle i32 %172, %175
  br i1 %176, label %177, label %244

177:                                              ; preds = %171
  store i32 0, i32* %13, align 4
  br label %178

178:                                              ; preds = %232, %177
  %179 = load i32, i32* %13, align 4
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = icmp sle i32 %179, %182
  br i1 %183, label %184, label %233

184:                                              ; preds = %178
  %185 = load i32*, i32** %11, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 1
  store i32* %186, i32** %11, align 8
  %187 = load i32, i32* %185, align 4
  store i32 %187, i32* %16, align 4
  %188 = load i32, i32* %16, align 4
  %189 = and i32 %188, 192
  %190 = icmp eq i32 %189, 192
  br i1 %190, label %191, label %197

191:                                              ; preds = %184
  %192 = load i32, i32* %16, align 4
  %193 = and i32 %192, 63
  store i32 %193, i32* %17, align 4
  %194 = load i32*, i32** %11, align 8
  %195 = getelementptr inbounds i32, i32* %194, i32 1
  store i32* %195, i32** %11, align 8
  %196 = load i32, i32* %194, align 4
  store i32 %196, i32* %16, align 4
  br label %198

197:                                              ; preds = %184
  store i32 1, i32* %17, align 4
  br label %198

198:                                              ; preds = %197, %191
  %199 = load i32, i32* %14, align 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %199, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %198
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* %17, align 4
  %207 = add nsw i32 %205, %206
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  %212 = icmp sgt i32 %207, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %204
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %13, align 4
  %218 = sub nsw i32 %216, %217
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %17, align 4
  br label %220

220:                                              ; preds = %213, %204, %198
  br label %221

221:                                              ; preds = %225, %220
  %222 = load i32, i32* %17, align 4
  %223 = add nsw i32 %222, -1
  store i32 %223, i32* %17, align 4
  %224 = icmp sgt i32 %222, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %221
  %226 = load i32, i32* %16, align 4
  %227 = load i32*, i32** %19, align 8
  %228 = load i32, i32* %13, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %13, align 4
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i32, i32* %227, i64 %230
  store i32 %226, i32* %231, align 4
  br label %221

232:                                              ; preds = %221
  br label %178

233:                                              ; preds = %178
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %14, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %14, align 4
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 1
  %241 = load i32*, i32** %19, align 8
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  store i32* %243, i32** %19, align 8
  br label %171

244:                                              ; preds = %171
  %245 = load i32*, i32** %11, align 8
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %247 = bitcast %struct.TYPE_3__* %246 to i32*
  %248 = ptrtoint i32* %245 to i64
  %249 = ptrtoint i32* %247 to i64
  %250 = sub i64 %248, %249
  %251 = sdiv exact i64 %250, 4
  %252 = load i32, i32* %15, align 4
  %253 = sext i32 %252 to i64
  %254 = icmp sgt i64 %251, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %244
  %256 = load i8*, i8** %6, align 8
  %257 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %256)
  br label %258

258:                                              ; preds = %255, %244
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %260 = call i32 @free(%struct.TYPE_3__* %259)
  br label %261

261:                                              ; preds = %258, %151
  ret void
}

declare dso_local i32 @LoadFile(i8*, i8**) #1

declare dso_local i8* @LittleShort(i32) #1

declare dso_local i32 @Error(i8*, ...) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
