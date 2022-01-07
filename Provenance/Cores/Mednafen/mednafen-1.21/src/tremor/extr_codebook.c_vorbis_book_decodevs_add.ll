; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_codebook.c_vorbis_book_decodevs_add.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_codebook.c_vorbis_book_decodevs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vorbis_book_decodevs_add(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %236

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sdiv i32 %24, %27
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 8, %30
  %32 = trunc i64 %31 to i32
  %33 = call i64 @alloca(i32 %32)
  %34 = inttoptr i64 %33 to i64*
  store i64* %34, i64** %13, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 8, %36
  %38 = trunc i64 %37 to i32
  %39 = call i64 @alloca(i32 %38)
  %40 = inttoptr i64 %39 to i32**
  store i32** %40, i32*** %14, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %18, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %141

48:                                               ; preds = %23
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %87, %48
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %90

53:                                               ; preds = %49
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i64 @decode_packed_entry_number(%struct.TYPE_4__* %54, i32* %55)
  %57 = load i64*, i64** %13, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  store i64 %56, i64* %60, align 8
  %61 = load i64*, i64** %13, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  store i64 -1, i64* %6, align 8
  br label %237

68:                                               ; preds = %53
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load i64*, i64** %13, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = mul nsw i64 %76, %80
  %82 = getelementptr inbounds i32, i32* %71, i64 %81
  %83 = load i32**, i32*** %14, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  store i32* %82, i32** %86, align 8
  br label %87

87:                                               ; preds = %68
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %49

90:                                               ; preds = %49
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %91

91:                                               ; preds = %134, %90
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %140

97:                                               ; preds = %91
  store i32 0, i32* %16, align 4
  br label %98

98:                                               ; preds = %130, %97
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp slt i32 %105, %106
  br label %108

108:                                              ; preds = %104, %98
  %109 = phi i1 [ false, %98 ], [ %107, %104 ]
  br i1 %109, label %110, label %133

110:                                              ; preds = %108
  %111 = load i32**, i32*** %14, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %18, align 4
  %121 = ashr i32 %119, %120
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, %121
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %110
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %16, align 4
  br label %98

133:                                              ; preds = %108
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %17, align 4
  br label %91

140:                                              ; preds = %91
  br label %235

141:                                              ; preds = %23
  store i32 0, i32* %15, align 4
  br label %142

142:                                              ; preds = %180, %141
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %183

146:                                              ; preds = %142
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = call i64 @decode_packed_entry_number(%struct.TYPE_4__* %147, i32* %148)
  %150 = load i64*, i64** %13, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  store i64 %149, i64* %153, align 8
  %154 = load i64*, i64** %13, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, -1
  br i1 %159, label %160, label %161

160:                                              ; preds = %146
  store i64 -1, i64* %6, align 8
  br label %237

161:                                              ; preds = %146
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = load i64*, i64** %13, align 8
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = mul nsw i64 %169, %173
  %175 = getelementptr inbounds i32, i32* %164, i64 %174
  %176 = load i32**, i32*** %14, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32*, i32** %176, i64 %178
  store i32* %175, i32** %179, align 8
  br label %180

180:                                              ; preds = %161
  %181 = load i32, i32* %15, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %15, align 4
  br label %142

183:                                              ; preds = %142
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %184

184:                                              ; preds = %228, %183
  %185 = load i32, i32* %15, align 4
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %234

190:                                              ; preds = %184
  store i32 0, i32* %16, align 4
  br label %191

191:                                              ; preds = %224, %190
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %16, align 4
  %194 = add nsw i32 %192, %193
  %195 = load i32, i32* %10, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* %12, align 4
  %200 = icmp slt i32 %198, %199
  br label %201

201:                                              ; preds = %197, %191
  %202 = phi i1 [ false, %191 ], [ %200, %197 ]
  br i1 %202, label %203, label %227

203:                                              ; preds = %201
  %204 = load i32**, i32*** %14, align 8
  %205 = load i32, i32* %16, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32*, i32** %204, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %15, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %18, align 4
  %214 = sub nsw i32 0, %213
  %215 = shl i32 %212, %214
  %216 = load i32*, i32** %8, align 8
  %217 = load i32, i32* %17, align 4
  %218 = load i32, i32* %16, align 4
  %219 = add nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %216, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, %215
  store i32 %223, i32* %221, align 4
  br label %224

224:                                              ; preds = %203
  %225 = load i32, i32* %16, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %16, align 4
  br label %191

227:                                              ; preds = %201
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %15, align 4
  %231 = load i32, i32* %12, align 4
  %232 = load i32, i32* %17, align 4
  %233 = add nsw i32 %232, %231
  store i32 %233, i32* %17, align 4
  br label %184

234:                                              ; preds = %184
  br label %235

235:                                              ; preds = %234, %140
  br label %236

236:                                              ; preds = %235, %5
  store i64 0, i64* %6, align 8
  br label %237

237:                                              ; preds = %236, %160, %67
  %238 = load i64, i64* %6, align 8
  ret i64 %238
}

declare dso_local i64 @alloca(i32) #1

declare dso_local i64 @decode_packed_entry_number(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
