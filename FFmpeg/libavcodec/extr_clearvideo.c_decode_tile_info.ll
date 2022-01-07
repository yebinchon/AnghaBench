; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_clearvideo.c_decode_tile_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_clearvideo.c_decode_tile_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_13__**, i8*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, i8*, i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, %struct.TYPE_15__*, i32)* @decode_tile_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @decode_tile_info(i32* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_14__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %16 = bitcast %struct.TYPE_14__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 24, i1 false)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @get_vlc2(i32* %26, i64 %33, i32 %40, i32 2)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %25, %3
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %95

51:                                               ; preds = %42
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @get_vlc2(i32* %52, i64 %59, i32 %66, i32 3)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %68, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %51
  %77 = load i32, i32* %13, align 4
  %78 = and i32 %77, 255
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  store i8* %80, i8** %81, align 8
  %82 = load i32, i32* %13, align 4
  %83 = ashr i32 %82, 8
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  store i8* %85, i8** %86, align 8
  br label %94

87:                                               ; preds = %51
  %88 = load i32*, i32** %5, align 8
  %89 = call i8* @get_sbits(i32* %88, i32 8)
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  store i8* %89, i8** %90, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = call i8* @get_sbits(i32* %91, i32 8)
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  store i8* %92, i8** %93, align 8
  br label %94

94:                                               ; preds = %87, %76
  br label %95

95:                                               ; preds = %94, %42
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %137

104:                                              ; preds = %95
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @get_vlc2(i32* %105, i64 %112, i32 %119, i32 2)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %121, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %104
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  store i8* %132, i8** %11, align 8
  br label %136

133:                                              ; preds = %104
  %134 = load i32*, i32** %5, align 8
  %135 = call i8* @get_sbits(i32* %134, i32 16)
  store i8* %135, i8** %11, align 8
  br label %136

136:                                              ; preds = %133, %129
  br label %137

137:                                              ; preds = %136, %95
  %138 = call %struct.TYPE_13__* @av_calloc(i32 1, i32 48)
  store %struct.TYPE_13__* %138, %struct.TYPE_13__** %8, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %140 = icmp ne %struct.TYPE_13__* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %189

142:                                              ; preds = %137
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 3
  %148 = bitcast %struct.TYPE_14__* %147 to i8*
  %149 = bitcast %struct.TYPE_14__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %148, i8* align 8 %149, i64 24, i1 false)
  %150 = load i8*, i8** %11, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %187

157:                                              ; preds = %142
  store i32 0, i32* %9, align 4
  br label %158

158:                                              ; preds = %183, %157
  %159 = load i32, i32* %9, align 4
  %160 = icmp slt i32 %159, 4
  br i1 %160, label %161, label %186

161:                                              ; preds = %158
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = shl i32 1, %165
  %167 = and i32 %164, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %161
  %170 = load i32*, i32** %5, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  %174 = call %struct.TYPE_13__* @decode_tile_info(i32* %170, %struct.TYPE_15__* %171, i32 %173)
  store %struct.TYPE_13__* %174, %struct.TYPE_13__** %15, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %178, i64 %180
  store %struct.TYPE_13__* %175, %struct.TYPE_13__** %181, align 8
  br label %182

182:                                              ; preds = %169, %161
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %9, align 4
  br label %158

186:                                              ; preds = %158
  br label %187

187:                                              ; preds = %186, %142
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %188, %struct.TYPE_13__** %4, align 8
  br label %189

189:                                              ; preds = %187, %141
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %190
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_vlc2(i32*, i64, i32, i32) #2

declare dso_local i8* @get_sbits(i32*, i32) #2

declare dso_local %struct.TYPE_13__* @av_calloc(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
