; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_res0.c_res2_inverse.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_res0.c_res2_inverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i32**, i32***, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @res2_inverse(%struct.TYPE_9__* %0, i32* %1, float** %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32**, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store float** %2, float*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = bitcast i32* %28 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %16, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %17, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %18, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %19, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %11, align 4
  %45 = mul nsw i32 %43, %44
  %46 = ashr i32 %45, 1
  store i32 %46, i32* %20, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %20, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %5
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  br label %58

56:                                               ; preds = %5
  %57 = load i32, i32* %20, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi i32 [ %55, %52 ], [ %57, %56 ]
  store i32 %59, i32* %21, align 4
  %60 = load i32, i32* %21, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %22, align 4
  %65 = load i32, i32* %22, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %243

67:                                               ; preds = %58
  %68 = load i32, i32* %22, align 4
  %69 = load i32, i32* %18, align 4
  %70 = sdiv i32 %68, %69
  store i32 %70, i32* %23, align 4
  %71 = load i32, i32* %23, align 4
  %72 = load i32, i32* %19, align 4
  %73 = add nsw i32 %71, %72
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* %19, align 4
  %76 = sdiv i32 %74, %75
  store i32 %76, i32* %24, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = load i32, i32* %24, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 8
  %81 = trunc i64 %80 to i32
  %82 = call i32** @_vorbis_block_alloc(%struct.TYPE_9__* %77, i32 %81)
  store i32** %82, i32*** %25, align 8
  store i64 0, i64* %12, align 8
  br label %83

83:                                               ; preds = %96, %67
  %84 = load i64, i64* %12, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp slt i64 %84, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load i32*, i32** %10, align 8
  %90 = load i64, i64* %12, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %99

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %12, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %12, align 8
  br label %83

99:                                               ; preds = %94, %83
  %100 = load i64, i64* %12, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp eq i64 %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  br label %246

105:                                              ; preds = %99
  store i64 0, i64* %15, align 8
  br label %106

106:                                              ; preds = %239, %105
  %107 = load i64, i64* %15, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %107, %110
  br i1 %111, label %112, label %242

112:                                              ; preds = %106
  store i64 0, i64* %12, align 8
  store i64 0, i64* %14, align 8
  br label %113

113:                                              ; preds = %235, %112
  %114 = load i64, i64* %12, align 8
  %115 = load i32, i32* %23, align 4
  %116 = sext i32 %115 to i64
  %117 = icmp slt i64 %114, %116
  br i1 %117, label %118, label %238

118:                                              ; preds = %113
  %119 = load i64, i64* %15, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %155

121:                                              ; preds = %118
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = call i32 @vorbis_book_decode(%struct.TYPE_10__* %124, i32* %126)
  store i32 %127, i32* %26, align 4
  %128 = load i32, i32* %26, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %136, label %130

130:                                              ; preds = %121
  %131 = load i32, i32* %26, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = icmp sge i32 %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130, %121
  br label %245

137:                                              ; preds = %130
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32**, i32*** %139, align 8
  %141 = load i32, i32* %26, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = load i32**, i32*** %25, align 8
  %146 = load i64, i64* %14, align 8
  %147 = getelementptr inbounds i32*, i32** %145, i64 %146
  store i32* %144, i32** %147, align 8
  %148 = load i32**, i32*** %25, align 8
  %149 = load i64, i64* %14, align 8
  %150 = getelementptr inbounds i32*, i32** %148, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %137
  br label %244

154:                                              ; preds = %137
  br label %155

155:                                              ; preds = %154, %118
  store i64 0, i64* %13, align 8
  br label %156

156:                                              ; preds = %229, %155
  %157 = load i64, i64* %13, align 8
  %158 = load i32, i32* %19, align 4
  %159 = sext i32 %158 to i64
  %160 = icmp slt i64 %157, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load i64, i64* %12, align 8
  %163 = load i32, i32* %23, align 4
  %164 = sext i32 %163 to i64
  %165 = icmp slt i64 %162, %164
  br label %166

166:                                              ; preds = %161, %156
  %167 = phi i1 [ false, %156 ], [ %165, %161 ]
  br i1 %167, label %168, label %234

168:                                              ; preds = %166
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = load i32**, i32*** %25, align 8
  %173 = load i64, i64* %14, align 8
  %174 = getelementptr inbounds i32*, i32** %172, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* %13, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %171, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i64, i64* %15, align 8
  %183 = trunc i64 %182 to i32
  %184 = shl i32 1, %183
  %185 = and i32 %181, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %228

187:                                              ; preds = %168
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 2
  %190 = load i32***, i32**** %189, align 8
  %191 = load i32**, i32*** %25, align 8
  %192 = load i64, i64* %14, align 8
  %193 = getelementptr inbounds i32*, i32** %191, i64 %192
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* %13, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32**, i32*** %190, i64 %198
  %200 = load i32**, i32*** %199, align 8
  %201 = load i64, i64* %15, align 8
  %202 = getelementptr inbounds i32*, i32** %200, i64 %201
  %203 = load i32*, i32** %202, align 8
  store i32* %203, i32** %27, align 8
  %204 = load i32*, i32** %27, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %227

206:                                              ; preds = %187
  %207 = load i32*, i32** %27, align 8
  %208 = load float**, float*** %9, align 8
  %209 = load i64, i64* %12, align 8
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = mul nsw i64 %209, %211
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %212, %216
  %218 = trunc i64 %217 to i32
  %219 = load i32, i32* %11, align 4
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  %222 = load i32, i32* %18, align 4
  %223 = call i32 @vorbis_book_decodevv_add(i32* %207, float** %208, i32 %218, i32 %219, i32* %221, i32 %222)
  %224 = icmp eq i32 %223, -1
  br i1 %224, label %225, label %226

225:                                              ; preds = %206
  br label %245

226:                                              ; preds = %206
  br label %227

227:                                              ; preds = %226, %187
  br label %228

228:                                              ; preds = %227, %168
  br label %229

229:                                              ; preds = %228
  %230 = load i64, i64* %13, align 8
  %231 = add nsw i64 %230, 1
  store i64 %231, i64* %13, align 8
  %232 = load i64, i64* %12, align 8
  %233 = add nsw i64 %232, 1
  store i64 %233, i64* %12, align 8
  br label %156

234:                                              ; preds = %166
  br label %235

235:                                              ; preds = %234
  %236 = load i64, i64* %14, align 8
  %237 = add nsw i64 %236, 1
  store i64 %237, i64* %14, align 8
  br label %113

238:                                              ; preds = %113
  br label %239

239:                                              ; preds = %238
  %240 = load i64, i64* %15, align 8
  %241 = add nsw i64 %240, 1
  store i64 %241, i64* %15, align 8
  br label %106

242:                                              ; preds = %106
  br label %243

243:                                              ; preds = %242, %58
  br label %244

244:                                              ; preds = %243, %153
  br label %245

245:                                              ; preds = %244, %225, %136
  store i32 0, i32* %6, align 4
  br label %246

246:                                              ; preds = %245, %104
  %247 = load i32, i32* %6, align 4
  ret i32 %247
}

declare dso_local i32** @_vorbis_block_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @vorbis_book_decode(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @vorbis_book_decodevv_add(i32*, float**, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
