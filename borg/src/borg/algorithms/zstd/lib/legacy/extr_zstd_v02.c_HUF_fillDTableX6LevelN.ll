; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v02.c_HUF_fillDTableX6LevelN.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v02.c_HUF_fillDTableX6LevelN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32 }

@HUF_ABSOLUTEMAX_TABLELOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32*, i32, i32, i32, %struct.TYPE_9__*, i32, i32*, i32, i64, i64)* @HUF_fillDTableX6LevelN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HUF_fillDTableX6LevelN(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_9__* %7, i32 %8, i32* %9, i32 %10, i64 %11, i64 %12) #0 {
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca %struct.TYPE_11__, align 4
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_9__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %46 = inttoptr i64 %11 to i32*
  store i32* %46, i32** %45, align 8
  %47 = bitcast %struct.TYPE_11__* %15 to i64*
  store i64 %12, i64* %47, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %17, align 8
  store i32 %2, i32* %18, align 4
  store i32* %3, i32** %19, align 8
  store i32 %4, i32* %20, align 4
  store i32 %5, i32* %21, align 4
  store i32 %6, i32* %22, align 4
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %23, align 8
  store i32 %8, i32* %24, align 4
  store i32* %9, i32** %25, align 8
  store i32 %10, i32* %26, align 4
  %48 = load i32, i32* %26, align 4
  %49 = load i32, i32* %18, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %27, align 4
  %51 = load i32, i32* %26, align 4
  %52 = load i32, i32* %22, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %28, align 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %29, align 4
  %56 = load i32, i32* @HUF_ABSOLUTEMAX_TABLELOG, align 4
  %57 = add nsw i32 %56, 1
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %30, align 8
  %60 = alloca i32, i64 %58, align 16
  store i64 %58, i64* %31, align 8
  %61 = load i32*, i32** %19, align 8
  %62 = load i32, i32* %20, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = mul nuw i64 4, %58
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memcpy(i32* %60, i32 %65, i32 %67)
  %69 = load i32, i32* %21, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %97

71:                                               ; preds = %13
  %72 = load i32, i32* %21, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %60, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %35, align 4
  store i32 0, i32* %34, align 4
  br label %76

76:                                               ; preds = %93, %71
  %77 = load i32, i32* %34, align 4
  %78 = load i32, i32* %35, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %82 = load i32, i32* %34, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 %83
  %85 = bitcast %struct.TYPE_10__* %84 to i8*
  %86 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 8, i1 false)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %88 = load i32, i32* %34, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 %89
  %91 = bitcast %struct.TYPE_11__* %90 to i8*
  %92 = bitcast %struct.TYPE_11__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 8, i1 false)
  br label %93

93:                                               ; preds = %80
  %94 = load i32, i32* %34, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %34, align 4
  br label %76

96:                                               ; preds = %76
  br label %97

97:                                               ; preds = %96, %13
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load i32*, i32** %25, align 8
  %102 = load i32, i32* %21, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %32, align 4
  %106 = load i32, i32* %32, align 4
  store i32 %106, i32* %33, align 4
  br label %107

107:                                              ; preds = %219, %97
  %108 = load i32, i32* %33, align 4
  %109 = load i32, i32* %24, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %222

111:                                              ; preds = %107
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %113 = load i32, i32* %33, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %36, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %119 = load i32, i32* %33, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %37, align 4
  %124 = load i32, i32* %26, align 4
  %125 = load i32, i32* %37, align 4
  %126 = sub nsw i32 %124, %125
  store i32 %126, i32* %38, align 4
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* %38, align 4
  %129 = add nsw i32 %127, %128
  store i32 %129, i32* %39, align 4
  %130 = load i32, i32* %37, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %60, i64 %131
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %40, align 4
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %38, align 4
  %136 = sub nsw i32 %134, %135
  %137 = shl i32 1, %136
  store i32 %137, i32* %41, align 4
  %138 = load i32, i32* %36, align 4
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %29, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %138, i32* %143, align 4
  %144 = load i32, i32* %39, align 4
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* %29, align 4
  %147 = icmp slt i32 %146, 3
  br i1 %147, label %148, label %186

148:                                              ; preds = %111
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %39, align 4
  %151 = sub nsw i32 %149, %150
  %152 = load i32, i32* %28, align 4
  %153 = icmp sge i32 %151, %152
  br i1 %153, label %154, label %186

154:                                              ; preds = %148
  %155 = load i32, i32* %39, align 4
  %156 = load i32, i32* %27, align 4
  %157 = add nsw i32 %155, %156
  store i32 %157, i32* %42, align 4
  %158 = load i32, i32* %42, align 4
  %159 = icmp slt i32 %158, 1
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  store i32 1, i32* %42, align 4
  br label %161

161:                                              ; preds = %160, %154
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %163 = load i32, i32* %40, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i64 %164
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %167 = load i32, i32* %40, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i64 %168
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %38, align 4
  %172 = sub nsw i32 %170, %171
  %173 = load i32*, i32** %19, align 8
  %174 = load i32, i32* %39, align 4
  %175 = load i32, i32* %42, align 4
  %176 = load i32, i32* %22, align 4
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %178 = load i32, i32* %24, align 4
  %179 = load i32*, i32** %25, align 8
  %180 = load i32, i32* %26, align 4
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = ptrtoint i32* %182 to i64
  %184 = bitcast %struct.TYPE_11__* %15 to i64*
  %185 = load i64, i64* %184, align 4
  call void @HUF_fillDTableX6LevelN(%struct.TYPE_11__* %165, %struct.TYPE_10__* %169, i32 %172, i32* %173, i32 %174, i32 %175, i32 %176, %struct.TYPE_9__* %177, i32 %178, i32* %179, i32 %180, i64 %183, i64 %185)
  br label %212

186:                                              ; preds = %148, %111
  %187 = load i32, i32* %40, align 4
  %188 = load i32, i32* %41, align 4
  %189 = add nsw i32 %187, %188
  store i32 %189, i32* %44, align 4
  %190 = load i32, i32* %40, align 4
  store i32 %190, i32* %43, align 4
  br label %191

191:                                              ; preds = %208, %186
  %192 = load i32, i32* %43, align 4
  %193 = load i32, i32* %44, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %211

195:                                              ; preds = %191
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %197 = load i32, i32* %43, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i64 %198
  %200 = bitcast %struct.TYPE_11__* %199 to i8*
  %201 = bitcast %struct.TYPE_11__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %200, i8* align 4 %201, i64 8, i1 false)
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %203 = load i32, i32* %43, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i64 %204
  %206 = bitcast %struct.TYPE_10__* %205 to i8*
  %207 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %206, i8* align 8 %207, i64 8, i1 false)
  br label %208

208:                                              ; preds = %195
  %209 = load i32, i32* %43, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %43, align 4
  br label %191

211:                                              ; preds = %191
  br label %212

212:                                              ; preds = %211, %161
  %213 = load i32, i32* %41, align 4
  %214 = load i32, i32* %37, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %60, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, %213
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %212
  %220 = load i32, i32* %33, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %33, align 4
  br label %107

222:                                              ; preds = %107
  %223 = load i8*, i8** %30, align 8
  call void @llvm.stackrestore(i8* %223)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
