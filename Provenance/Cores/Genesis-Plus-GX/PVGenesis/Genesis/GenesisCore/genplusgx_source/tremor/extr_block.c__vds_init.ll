; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_block.c__vds_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_block.c__vds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* (%struct.TYPE_13__*, %struct.TYPE_16__*, i32)* }
%struct.TYPE_13__ = type { i32, i64, i64, i32**, i32**, %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32*, i32, i32*, i32*, %struct.TYPE_16__**, i32**, i32* }
%struct.TYPE_14__ = type { i32**, i8**, i32 }

@_mapping_P = common dso_local global %struct.TYPE_11__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @_vds_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_vds_init(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = call i32 @memset(%struct.TYPE_13__* %14, i32 0, i32 56)
  %16 = call i64 @_ogg_calloc(i32 1, i32 24)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 6
  store i64 %16, i64* %18, align 8
  %19 = inttoptr i64 %16 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %7, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 5
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %22, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ilog(i32 %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 2
  %35 = call i8* @_vorbis_window(i32 0, i32 %34)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  store i8* %35, i8** %39, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 2
  %46 = call i8* @_vorbis_window(i32 0, i32 %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  store i8* %46, i8** %50, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 7
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %102, label %55

55:                                               ; preds = %2
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @_ogg_calloc(i32 %58, i32 4)
  %60 = inttoptr i64 %59 to i32*
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 7
  store i32* %60, i32** %62, align 8
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %98, %55
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %101

69:                                               ; preds = %63
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 7
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 6
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @vorbis_book_init_decode(i32* %75, i32* %82)
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 6
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @vorbis_staticbook_destroy(i32* %90)
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 6
  %94 = load i32**, i32*** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  store i32* null, i32** %97, align 8
  br label %98

98:                                               ; preds = %69
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %63

101:                                              ; preds = %63
  br label %102

102:                                              ; preds = %101, %2
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 8
  %115 = trunc i64 %114 to i32
  %116 = call i64 @_ogg_malloc(i32 %115)
  %117 = inttoptr i64 %116 to i32**
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 3
  store i32** %117, i32*** %119, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 8
  %125 = trunc i64 %124 to i32
  %126 = call i64 @_ogg_malloc(i32 %125)
  %127 = inttoptr i64 %126 to i32**
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 4
  store i32** %127, i32*** %129, align 8
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %148, %102
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %151

136:                                              ; preds = %130
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @_ogg_calloc(i32 %139, i32 4)
  %141 = inttoptr i64 %140 to i32*
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 3
  %144 = load i32**, i32*** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  store i32* %141, i32** %147, align 8
  br label %148

148:                                              ; preds = %136
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %130

151:                                              ; preds = %130
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 2
  store i64 0, i64* %153, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  store i64 0, i64* %155, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @_ogg_calloc(i32 %158, i32 8)
  %160 = inttoptr i64 %159 to i32**
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  store i32** %160, i32*** %162, align 8
  store i32 0, i32* %5, align 4
  br label %163

163:                                              ; preds = %215, %151
  %164 = load i32, i32* %5, align 4
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %218

169:                                              ; preds = %163
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 5
  %172 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %172, i64 %174
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %8, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %9, align 4
  %186 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @_mapping_P, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %186, i64 %188
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load i32* (%struct.TYPE_13__*, %struct.TYPE_16__*, i32)*, i32* (%struct.TYPE_13__*, %struct.TYPE_16__*, i32)** %191, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 5
  %196 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %196, i64 %198
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %199, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 4
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i32* %192(%struct.TYPE_13__* %193, %struct.TYPE_16__* %200, i32 %207)
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load i32**, i32*** %210, align 8
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32*, i32** %211, i64 %213
  store i32* %208, i32** %214, align 8
  br label %215

215:                                              ; preds = %169
  %216 = load i32, i32* %5, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %5, align 4
  br label %163

218:                                              ; preds = %163
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @_ogg_calloc(i32, i32) #1

declare dso_local i32 @ilog(i32) #1

declare dso_local i8* @_vorbis_window(i32, i32) #1

declare dso_local i32 @vorbis_book_init_decode(i32*, i32*) #1

declare dso_local i32 @vorbis_staticbook_destroy(i32*) #1

declare dso_local i64 @_ogg_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
