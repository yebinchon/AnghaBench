; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_codebook.c_vorbis_book_decodevs_add.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_codebook.c_vorbis_book_decodevs_add.c"
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
  br i1 %22, label %23, label %220

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
  br i1 %47, label %48, label %133

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
  br label %221

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

91:                                               ; preds = %126, %90
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %132

97:                                               ; preds = %91
  store i32 0, i32* %16, align 4
  br label %98

98:                                               ; preds = %122, %97
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %125

102:                                              ; preds = %98
  %103 = load i32**, i32*** %14, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %18, align 4
  %113 = ashr i32 %111, %112
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %113
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %102
  %123 = load i32, i32* %16, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %16, align 4
  br label %98

125:                                              ; preds = %98
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %17, align 4
  br label %91

132:                                              ; preds = %91
  br label %219

133:                                              ; preds = %23
  store i32 0, i32* %15, align 4
  br label %134

134:                                              ; preds = %172, %133
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %175

138:                                              ; preds = %134
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = call i64 @decode_packed_entry_number(%struct.TYPE_4__* %139, i32* %140)
  %142 = load i64*, i64** %13, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  store i64 %141, i64* %145, align 8
  %146 = load i64*, i64** %13, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, -1
  br i1 %151, label %152, label %153

152:                                              ; preds = %138
  store i64 -1, i64* %6, align 8
  br label %221

153:                                              ; preds = %138
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = load i64*, i64** %13, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = mul nsw i64 %161, %165
  %167 = getelementptr inbounds i32, i32* %156, i64 %166
  %168 = load i32**, i32*** %14, align 8
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32*, i32** %168, i64 %170
  store i32* %167, i32** %171, align 8
  br label %172

172:                                              ; preds = %153
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %15, align 4
  br label %134

175:                                              ; preds = %134
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %176

176:                                              ; preds = %212, %175
  %177 = load i32, i32* %15, align 4
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %218

182:                                              ; preds = %176
  store i32 0, i32* %16, align 4
  br label %183

183:                                              ; preds = %208, %182
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %12, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %211

187:                                              ; preds = %183
  %188 = load i32**, i32*** %14, align 8
  %189 = load i32, i32* %16, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32*, i32** %188, i64 %190
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %15, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %18, align 4
  %198 = sub nsw i32 0, %197
  %199 = shl i32 %196, %198
  %200 = load i32*, i32** %8, align 8
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* %16, align 4
  %203 = add nsw i32 %201, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %200, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, %199
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %187
  %209 = load i32, i32* %16, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %16, align 4
  br label %183

211:                                              ; preds = %183
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %15, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %15, align 4
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %17, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %17, align 4
  br label %176

218:                                              ; preds = %176
  br label %219

219:                                              ; preds = %218, %132
  br label %220

220:                                              ; preds = %219, %5
  store i64 0, i64* %6, align 8
  br label %221

221:                                              ; preds = %220, %152, %67
  %222 = load i64, i64* %6, align 8
  ret i64 %222
}

declare dso_local i64 @alloca(i32) #1

declare dso_local i64 @decode_packed_entry_number(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
