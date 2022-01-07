; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_jp1.h_iso2022_jp1_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_jp1.h_iso2022_jp1_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@ESC = common dso_local global i8 0, align 1
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i8*, i32)* @iso2022_jp1_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso2022_jp1_mbtowc(%struct.TYPE_7__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %132, %103, %73, %56, %4
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %12, align 1
  %23 = load i8, i8* %12, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @ESC, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %136

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 3
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %269

34:                                               ; preds = %28
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 40
  br i1 %39, label %40, label %75

40:                                               ; preds = %34
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 66
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  store i32 131, i32* %10, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  store i8* %48, i8** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 3
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %269

56:                                               ; preds = %46
  br label %20

57:                                               ; preds = %40
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 74
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  store i32 130, i32* %10, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 3
  store i8* %65, i8** %8, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 3
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %269

73:                                               ; preds = %63
  br label %20

74:                                               ; preds = %57
  br label %275

75:                                               ; preds = %34
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 36
  br i1 %80, label %81, label %135

81:                                               ; preds = %75
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 64
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %91, 66
  br i1 %92, label %93, label %104

93:                                               ; preds = %87, %81
  store i32 129, i32* %10, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 3
  store i8* %95, i8** %8, align 8
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 3
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %269

103:                                              ; preds = %93
  br label %20

104:                                              ; preds = %87
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 40
  br i1 %109, label %110, label %134

110:                                              ; preds = %104
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 4
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %269

116:                                              ; preds = %110
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 3
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 68
  br i1 %121, label %122, label %133

122:                                              ; preds = %116
  store i32 128, i32* %10, align 4
  %123 = load i8*, i8** %8, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 4
  store i8* %124, i8** %8, align 8
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 4
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %269

132:                                              ; preds = %122
  br label %20

133:                                              ; preds = %116
  br label %134

134:                                              ; preds = %133, %104
  br label %275

135:                                              ; preds = %75
  br label %275

136:                                              ; preds = %20
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %10, align 4
  switch i32 %138, label %267 [
    i32 131, label %139
    i32 130, label %164
    i32 129, label %189
    i32 128, label %228
  ]

139:                                              ; preds = %137
  %140 = load i8, i8* %12, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp slt i32 %141, 128
  br i1 %142, label %143, label %163

143:                                              ; preds = %139
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = call i32 @ascii_mbtowc(%struct.TYPE_7__* %144, i32* %145, i8* %146, i32 1)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* @RET_ILSEQ, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  br label %275

152:                                              ; preds = %143
  %153 = load i32, i32* %13, align 4
  %154 = icmp ne i32 %153, 1
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = call i32 (...) @abort() #3
  unreachable

157:                                              ; preds = %152
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  br label %281

163:                                              ; preds = %139
  br label %275

164:                                              ; preds = %137
  %165 = load i8, i8* %12, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp slt i32 %166, 128
  br i1 %167, label %168, label %188

168:                                              ; preds = %164
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %170 = load i32*, i32** %7, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = call i32 @jisx0201_mbtowc(%struct.TYPE_7__* %169, i32* %170, i8* %171, i32 1)
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* @RET_ILSEQ, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  br label %275

177:                                              ; preds = %168
  %178 = load i32, i32* %14, align 4
  %179 = icmp ne i32 %178, 1
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = call i32 (...) @abort() #3
  unreachable

182:                                              ; preds = %177
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %5, align 4
  br label %281

188:                                              ; preds = %164
  br label %275

189:                                              ; preds = %137
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* %11, align 4
  %192 = add nsw i32 %191, 2
  %193 = icmp slt i32 %190, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  br label %269

195:                                              ; preds = %189
  %196 = load i8*, i8** %8, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 0
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = icmp slt i32 %199, 128
  br i1 %200, label %201, label %227

201:                                              ; preds = %195
  %202 = load i8*, i8** %8, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp slt i32 %205, 128
  br i1 %206, label %207, label %227

207:                                              ; preds = %201
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %209 = load i32*, i32** %7, align 8
  %210 = load i8*, i8** %8, align 8
  %211 = call i32 @jisx0208_mbtowc(%struct.TYPE_7__* %208, i32* %209, i8* %210, i32 2)
  store i32 %211, i32* %15, align 4
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* @RET_ILSEQ, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %207
  br label %275

216:                                              ; preds = %207
  %217 = load i32, i32* %15, align 4
  %218 = icmp ne i32 %217, 2
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = call i32 (...) @abort() #3
  unreachable

221:                                              ; preds = %216
  %222 = load i32, i32* %10, align 4
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %225, 2
  store i32 %226, i32* %5, align 4
  br label %281

227:                                              ; preds = %201, %195
  br label %275

228:                                              ; preds = %137
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %11, align 4
  %231 = add nsw i32 %230, 2
  %232 = icmp slt i32 %229, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  br label %269

234:                                              ; preds = %228
  %235 = load i8*, i8** %8, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 0
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  %239 = icmp slt i32 %238, 128
  br i1 %239, label %240, label %266

240:                                              ; preds = %234
  %241 = load i8*, i8** %8, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 1
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i32
  %245 = icmp slt i32 %244, 128
  br i1 %245, label %246, label %266

246:                                              ; preds = %240
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %248 = load i32*, i32** %7, align 8
  %249 = load i8*, i8** %8, align 8
  %250 = call i32 @jisx0212_mbtowc(%struct.TYPE_7__* %247, i32* %248, i8* %249, i32 2)
  store i32 %250, i32* %16, align 4
  %251 = load i32, i32* %16, align 4
  %252 = load i32, i32* @RET_ILSEQ, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %246
  br label %275

255:                                              ; preds = %246
  %256 = load i32, i32* %16, align 4
  %257 = icmp ne i32 %256, 2
  br i1 %257, label %258, label %260

258:                                              ; preds = %255
  %259 = call i32 (...) @abort() #3
  unreachable

260:                                              ; preds = %255
  %261 = load i32, i32* %10, align 4
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* %11, align 4
  %265 = add nsw i32 %264, 2
  store i32 %265, i32* %5, align 4
  br label %281

266:                                              ; preds = %240, %234
  br label %275

267:                                              ; preds = %137
  %268 = call i32 (...) @abort() #3
  unreachable

269:                                              ; preds = %233, %194, %131, %115, %102, %72, %55, %33
  %270 = load i32, i32* %10, align 4
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  store i32 %270, i32* %272, align 4
  %273 = load i32, i32* %11, align 4
  %274 = call i32 @RET_TOOFEW(i32 %273)
  store i32 %274, i32* %5, align 4
  br label %281

275:                                              ; preds = %266, %254, %227, %215, %188, %176, %163, %151, %135, %134, %74
  %276 = load i32, i32* %10, align 4
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 0
  store i32 %276, i32* %278, align 4
  %279 = load i32, i32* %11, align 4
  %280 = call i32 @RET_SHIFT_ILSEQ(i32 %279)
  store i32 %280, i32* %5, align 4
  br label %281

281:                                              ; preds = %275, %269, %260, %221, %182, %157
  %282 = load i32, i32* %5, align 4
  ret i32 %282
}

declare dso_local i32 @ascii_mbtowc(%struct.TYPE_7__*, i32*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @jisx0201_mbtowc(%struct.TYPE_7__*, i32*, i8*, i32) #1

declare dso_local i32 @jisx0208_mbtowc(%struct.TYPE_7__*, i32*, i8*, i32) #1

declare dso_local i32 @jisx0212_mbtowc(%struct.TYPE_7__*, i32*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @RET_SHIFT_ILSEQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
