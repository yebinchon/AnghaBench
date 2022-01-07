; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_inflateHuffmanBlock.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_inflateHuffmanBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8* }

@FIRST_LENGTH_CODE_INDEX = common dso_local global i32 0, align 4
@LAST_LENGTH_CODE_INDEX = common dso_local global i32 0, align 4
@LENGTHBASE = common dso_local global i64* null, align 8
@LENGTHEXTRA = common dso_local global i32* null, align 8
@DISTANCEBASE = common dso_local global i32* null, align 8
@DISTANCEEXTRA = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i64*, i64*, i64, i32)* @inflateHuffmanBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inflateHuffmanBlock(%struct.TYPE_4__* %0, i8* %1, i64* %2, i64* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %26 = load i64, i64* %11, align 8
  %27 = mul i64 %26, 8
  store i64 %27, i64* %16, align 8
  %28 = call i32 @HuffmanTree_init(i32* %14)
  %29 = call i32 @HuffmanTree_init(i32* %15)
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = call i32 @getTreeInflateFixed(i32* %14, i32* %15)
  br label %43

34:                                               ; preds = %6
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i8*, i8** %8, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @getTreeInflateDynamic(i32* %14, i32* %15, i8* %38, i64* %39, i64 %40)
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %37, %34
  br label %43

43:                                               ; preds = %42, %32
  br label %44

44:                                               ; preds = %248, %43
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %249

48:                                               ; preds = %44
  %49 = load i8*, i8** %8, align 8
  %50 = load i64*, i64** %9, align 8
  %51 = load i64, i64* %16, align 8
  %52 = call i32 @huffmanDecodeSymbol(i8* %49, i64* %50, i32* %14, i64 %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp ule i32 %53, 255
  br i1 %54, label %55, label %85

55:                                               ; preds = %48
  %56 = load i64*, i64** %10, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp uge i64 %57, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %64 = load i64*, i64** %10, align 8
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  %67 = mul i64 %66, 2
  %68 = call i32 @ucvector_resize(%struct.TYPE_4__* %63, i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %62
  %71 = call i32 @ERROR_BREAK(i32 83)
  br label %72

72:                                               ; preds = %70, %62
  br label %73

73:                                               ; preds = %72, %55
  %74 = load i32, i32* %17, align 4
  %75 = trunc i32 %74 to i8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i64*, i64** %10, align 8
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 %75, i8* %81, align 1
  %82 = load i64*, i64** %10, align 8
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %82, align 8
  br label %248

85:                                               ; preds = %48
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* @FIRST_LENGTH_CODE_INDEX, align 4
  %88 = icmp uge i32 %86, %87
  br i1 %88, label %89, label %235

89:                                               ; preds = %85
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* @LAST_LENGTH_CODE_INDEX, align 4
  %92 = icmp ule i32 %90, %91
  br i1 %92, label %93, label %235

93:                                               ; preds = %89
  %94 = load i64*, i64** @LENGTHBASE, align 8
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* @FIRST_LENGTH_CODE_INDEX, align 4
  %97 = sub i32 %95, %96
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %94, i64 %98
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %25, align 8
  %101 = load i32*, i32** @LENGTHEXTRA, align 8
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* @FIRST_LENGTH_CODE_INDEX, align 4
  %104 = sub i32 %102, %103
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %20, align 4
  %108 = load i64*, i64** %9, align 8
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %16, align 8
  %111 = icmp uge i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %93
  %113 = call i32 @ERROR_BREAK(i32 51)
  br label %114

114:                                              ; preds = %112, %93
  %115 = load i64*, i64** %9, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = load i32, i32* %20, align 4
  %118 = call i64 @readBitsFromStream(i64* %115, i8* %116, i32 %117)
  %119 = load i64, i64* %25, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %25, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = load i64*, i64** %9, align 8
  %123 = load i64, i64* %16, align 8
  %124 = call i32 @huffmanDecodeSymbol(i8* %121, i64* %122, i32* %15, i64 %123)
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %18, align 4
  %126 = icmp ugt i32 %125, 29
  br i1 %126, label %127, label %140

127:                                              ; preds = %114
  %128 = load i32, i32* %17, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load i64*, i64** %9, align 8
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %11, align 8
  %134 = mul i64 %133, 8
  %135 = icmp ugt i64 %132, %134
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 10, i32 11
  store i32 %137, i32* %13, align 4
  br label %139

138:                                              ; preds = %127
  store i32 18, i32* %13, align 4
  br label %139

139:                                              ; preds = %138, %130
  br label %249

140:                                              ; preds = %114
  %141 = load i32*, i32** @DISTANCEBASE, align 8
  %142 = load i32, i32* %18, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %19, align 4
  %146 = load i32*, i32** @DISTANCEEXTRA, align 8
  %147 = load i32, i32* %18, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %21, align 4
  %151 = load i64*, i64** %9, align 8
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %16, align 8
  %154 = icmp uge i64 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %140
  %156 = call i32 @ERROR_BREAK(i32 51)
  br label %157

157:                                              ; preds = %155, %140
  %158 = load i64*, i64** %9, align 8
  %159 = load i8*, i8** %8, align 8
  %160 = load i32, i32* %21, align 4
  %161 = call i64 @readBitsFromStream(i64* %158, i8* %159, i32 %160)
  %162 = load i32, i32* %19, align 4
  %163 = zext i32 %162 to i64
  %164 = add nsw i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %19, align 4
  %166 = load i64*, i64** %10, align 8
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %22, align 8
  %168 = load i32, i32* %19, align 4
  %169 = zext i32 %168 to i64
  %170 = load i64, i64* %22, align 8
  %171 = icmp ugt i64 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %157
  %173 = call i32 @ERROR_BREAK(i32 52)
  br label %174

174:                                              ; preds = %172, %157
  %175 = load i64, i64* %22, align 8
  %176 = load i32, i32* %19, align 4
  %177 = zext i32 %176 to i64
  %178 = sub i64 %175, %177
  store i64 %178, i64* %24, align 8
  %179 = load i64*, i64** %10, align 8
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %25, align 8
  %182 = add i64 %180, %181
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp uge i64 %182, %185
  br i1 %186, label %187, label %199

187:                                              ; preds = %174
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %189 = load i64*, i64** %10, align 8
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %25, align 8
  %192 = add i64 %190, %191
  %193 = mul i64 %192, 2
  %194 = call i32 @ucvector_resize(%struct.TYPE_4__* %188, i64 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %187
  %197 = call i32 @ERROR_BREAK(i32 83)
  br label %198

198:                                              ; preds = %196, %187
  br label %199

199:                                              ; preds = %198, %174
  store i64 0, i64* %23, align 8
  br label %200

200:                                              ; preds = %231, %199
  %201 = load i64, i64* %23, align 8
  %202 = load i64, i64* %25, align 8
  %203 = icmp ult i64 %201, %202
  br i1 %203, label %204, label %234

204:                                              ; preds = %200
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = load i64, i64* %24, align 8
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  %214 = load i64*, i64** %10, align 8
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  store i8 %210, i8* %216, align 1
  %217 = load i64*, i64** %10, align 8
  %218 = load i64, i64* %217, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %217, align 8
  %220 = load i64, i64* %24, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %24, align 8
  %222 = load i64, i64* %24, align 8
  %223 = load i64, i64* %22, align 8
  %224 = icmp uge i64 %222, %223
  br i1 %224, label %225, label %230

225:                                              ; preds = %204
  %226 = load i64, i64* %22, align 8
  %227 = load i32, i32* %19, align 4
  %228 = zext i32 %227 to i64
  %229 = sub i64 %226, %228
  store i64 %229, i64* %24, align 8
  br label %230

230:                                              ; preds = %225, %204
  br label %231

231:                                              ; preds = %230
  %232 = load i64, i64* %23, align 8
  %233 = add i64 %232, 1
  store i64 %233, i64* %23, align 8
  br label %200

234:                                              ; preds = %200
  br label %247

235:                                              ; preds = %89, %85
  %236 = load i32, i32* %17, align 4
  %237 = icmp eq i32 %236, 256
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  br label %249

239:                                              ; preds = %235
  %240 = load i64*, i64** %9, align 8
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* %11, align 8
  %243 = mul i64 %242, 8
  %244 = icmp ugt i64 %241, %243
  %245 = zext i1 %244 to i64
  %246 = select i1 %244, i32 10, i32 11
  store i32 %246, i32* %13, align 4
  br label %249

247:                                              ; preds = %234
  br label %248

248:                                              ; preds = %247, %73
  br label %44

249:                                              ; preds = %239, %238, %139, %44
  %250 = call i32 @HuffmanTree_cleanup(i32* %14)
  %251 = call i32 @HuffmanTree_cleanup(i32* %15)
  %252 = load i32, i32* %13, align 4
  ret i32 %252
}

declare dso_local i32 @HuffmanTree_init(i32*) #1

declare dso_local i32 @getTreeInflateFixed(i32*, i32*) #1

declare dso_local i32 @getTreeInflateDynamic(i32*, i32*, i8*, i64*, i64) #1

declare dso_local i32 @huffmanDecodeSymbol(i8*, i64*, i32*, i64) #1

declare dso_local i32 @ucvector_resize(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @ERROR_BREAK(i32) #1

declare dso_local i64 @readBitsFromStream(i64*, i8*, i32) #1

declare dso_local i32 @HuffmanTree_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
