; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_7zIn.c_SzArEx_Extract.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_7zIn.c_SzArEx_Extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64*, i64*, %struct.TYPE_9__, i64* }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, i64, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }

@SZ_OK = common dso_local global i64 0, align 8
@SZ_ERROR_MEM = common dso_local global i64 0, align 8
@SZ_ERROR_CRC = common dso_local global i64 0, align 8
@SZ_ERROR_FAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SzArEx_Extract(%struct.TYPE_12__* %0, i32* %1, i64 %2, i64* %3, i32** %4, i64* %5, i64* %6, i64* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_10__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %12, align 8
  store i32* %1, i32** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64* %3, i64** %15, align 8
  store i32** %4, i32*** %16, align 8
  store i64* %5, i64** %17, align 8
  store i64* %6, i64** %18, align 8
  store i64* %7, i64** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %14, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %22, align 8
  %36 = load i64, i64* @SZ_OK, align 8
  store i64 %36, i64* %23, align 8
  %37 = load i64*, i64** %18, align 8
  store i64 0, i64* %37, align 8
  %38 = load i64*, i64** %19, align 8
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %22, align 8
  %40 = icmp eq i64 %39, -1
  br i1 %40, label %41, label %51

41:                                               ; preds = %10
  %42 = load i32*, i32** %20, align 8
  %43 = load i32**, i32*** %16, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @IAlloc_Free(i32* %42, i32* %44)
  %46 = load i64, i64* %22, align 8
  %47 = load i64*, i64** %15, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i32**, i32*** %16, align 8
  store i32* null, i32** %48, align 8
  %49 = load i64*, i64** %17, align 8
  store i64 0, i64* %49, align 8
  %50 = load i64, i64* @SZ_OK, align 8
  store i64 %50, i64* %11, align 8
  br label %233

51:                                               ; preds = %10
  %52 = load i32**, i32*** %16, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = load i64*, i64** %15, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %22, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %158

60:                                               ; preds = %55, %51
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = load i64, i64* %22, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %65
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %24, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %68 = call i64 @SzFolder_GetUnpackSize(%struct.TYPE_10__* %67)
  store i64 %68, i64* %25, align 8
  %69 = load i64, i64* %25, align 8
  store i64 %69, i64* %26, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %71 = load i64, i64* %22, align 8
  %72 = call i64 @SzArEx_GetFolderStreamPos(%struct.TYPE_12__* %70, i64 %71, i32 0)
  store i64 %72, i64* %27, align 8
  %73 = load i64, i64* %26, align 8
  %74 = load i64, i64* %25, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %60
  %77 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %77, i64* %11, align 8
  br label %233

78:                                               ; preds = %60
  %79 = load i64, i64* %22, align 8
  %80 = load i64*, i64** %15, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i32*, i32** %20, align 8
  %82 = load i32**, i32*** %16, align 8
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @IAlloc_Free(i32* %81, i32* %83)
  %85 = load i32**, i32*** %16, align 8
  store i32* null, i32** %85, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = load i64, i64* %27, align 8
  %88 = call i32 @LookInStream_SeekTo(i32* %86, i64 %87)
  %89 = call i32 @RINOK(i32 %88)
  %90 = load i64, i64* %23, align 8
  %91 = load i64, i64* @SZ_OK, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %157

93:                                               ; preds = %78
  %94 = load i64, i64* %26, align 8
  %95 = load i64*, i64** %17, align 8
  store i64 %94, i64* %95, align 8
  %96 = load i64, i64* %26, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %93
  %99 = load i32*, i32** %20, align 8
  %100 = load i64, i64* %26, align 8
  %101 = call i64 @IAlloc_Alloc(i32* %99, i64 %100)
  %102 = inttoptr i64 %101 to i32*
  %103 = load i32**, i32*** %16, align 8
  store i32* %102, i32** %103, align 8
  %104 = load i32**, i32*** %16, align 8
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %108, i64* %23, align 8
  br label %109

109:                                              ; preds = %107, %98
  br label %110

110:                                              ; preds = %109, %93
  %111 = load i64, i64* %23, align 8
  %112 = load i64, i64* @SZ_OK, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %156

114:                                              ; preds = %110
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* %22, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %119, %125
  %127 = load i32*, i32** %13, align 8
  %128 = load i64, i64* %27, align 8
  %129 = load i32**, i32*** %16, align 8
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %26, align 8
  %132 = load i32*, i32** %21, align 8
  %133 = call i64 @SzFolder_Decode(%struct.TYPE_10__* %115, i64 %126, i32* %127, i64 %128, i32* %130, i64 %131, i32* %132)
  store i64 %133, i64* %23, align 8
  %134 = load i64, i64* %23, align 8
  %135 = load i64, i64* @SZ_OK, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %155

137:                                              ; preds = %114
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %137
  %143 = load i32**, i32*** %16, align 8
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* %26, align 8
  %146 = call i64 @CrcCalc(i32* %144, i64 %145)
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %146, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %142
  %152 = load i64, i64* @SZ_ERROR_CRC, align 8
  store i64 %152, i64* %23, align 8
  br label %153

153:                                              ; preds = %151, %142
  br label %154

154:                                              ; preds = %153, %137
  br label %155

155:                                              ; preds = %154, %114
  br label %156

156:                                              ; preds = %155, %110
  br label %157

157:                                              ; preds = %156, %78
  br label %158

158:                                              ; preds = %157, %55
  %159 = load i64, i64* %23, align 8
  %160 = load i64, i64* @SZ_OK, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %231

162:                                              ; preds = %158
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = load i64, i64* %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i64 %167
  store %struct.TYPE_11__* %168, %struct.TYPE_11__** %29, align 8
  %169 = load i64*, i64** %18, align 8
  store i64 0, i64* %169, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  %172 = load i64*, i64** %171, align 8
  %173 = load i64, i64* %22, align 8
  %174 = getelementptr inbounds i64, i64* %172, i64 %173
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %28, align 8
  br label %176

176:                                              ; preds = %192, %162
  %177 = load i64, i64* %28, align 8
  %178 = load i64, i64* %14, align 8
  %179 = icmp ult i64 %177, %178
  br i1 %179, label %180, label %195

180:                                              ; preds = %176
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = load i64, i64* %28, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load i64*, i64** %18, align 8
  %190 = load i64, i64* %189, align 8
  %191 = add i64 %190, %188
  store i64 %191, i64* %189, align 8
  br label %192

192:                                              ; preds = %180
  %193 = load i64, i64* %28, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %28, align 8
  br label %176

195:                                              ; preds = %176
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load i64*, i64** %19, align 8
  store i64 %198, i64* %199, align 8
  %200 = load i64*, i64** %18, align 8
  %201 = load i64, i64* %200, align 8
  %202 = load i64*, i64** %19, align 8
  %203 = load i64, i64* %202, align 8
  %204 = add i64 %201, %203
  %205 = load i64*, i64** %17, align 8
  %206 = load i64, i64* %205, align 8
  %207 = icmp ugt i64 %204, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %195
  %209 = load i64, i64* @SZ_ERROR_FAIL, align 8
  store i64 %209, i64* %11, align 8
  br label %233

210:                                              ; preds = %195
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %230

215:                                              ; preds = %210
  %216 = load i32**, i32*** %16, align 8
  %217 = load i32*, i32** %216, align 8
  %218 = load i64*, i64** %18, align 8
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i64*, i64** %19, align 8
  %222 = load i64, i64* %221, align 8
  %223 = call i64 @CrcCalc(i32* %220, i64 %222)
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %223, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %215
  %229 = load i64, i64* @SZ_ERROR_CRC, align 8
  store i64 %229, i64* %23, align 8
  br label %230

230:                                              ; preds = %228, %215, %210
  br label %231

231:                                              ; preds = %230, %158
  %232 = load i64, i64* %23, align 8
  store i64 %232, i64* %11, align 8
  br label %233

233:                                              ; preds = %231, %208, %76, %41
  %234 = load i64, i64* %11, align 8
  ret i64 %234
}

declare dso_local i32 @IAlloc_Free(i32*, i32*) #1

declare dso_local i64 @SzFolder_GetUnpackSize(%struct.TYPE_10__*) #1

declare dso_local i64 @SzArEx_GetFolderStreamPos(%struct.TYPE_12__*, i64, i32) #1

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @LookInStream_SeekTo(i32*, i64) #1

declare dso_local i64 @IAlloc_Alloc(i32*, i64) #1

declare dso_local i64 @SzFolder_Decode(%struct.TYPE_10__*, i64, i32*, i64, i32*, i64, i32*) #1

declare dso_local i64 @CrcCalc(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
