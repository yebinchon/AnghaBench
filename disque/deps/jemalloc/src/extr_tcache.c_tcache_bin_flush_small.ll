; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_tcache.c_tcache_bin_flush_small.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_tcache.c_tcache_bin_flush_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, i8**, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }

@NBINS = common dso_local global i64 0, align 8
@config_prof = common dso_local global i64 0, align 8
@config_stats = common dso_local global i64 0, align 8
@LG_PAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcache_bin_flush_small(i32* %0, %struct.TYPE_18__* %1, %struct.TYPE_19__* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_22__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %16, align 4
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @NBINS, align 8
  %25 = icmp ult i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ule i32 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call %struct.TYPE_20__* @arena_choose(i32* %35, i32* null)
  store %struct.TYPE_20__* %36, %struct.TYPE_20__** %11, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %38 = icmp ne %struct.TYPE_20__* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sub i32 %43, %44
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %177, %5
  %47 = load i32, i32* %14, align 4
  %48 = icmp ugt i32 %47, 0
  br i1 %48, label %49, label %179

49:                                               ; preds = %46
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @CHUNK_ADDR2BASE(i8* %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %56, %struct.TYPE_21__** %17, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = call %struct.TYPE_20__* @extent_node_arena_get(i32* %58)
  store %struct.TYPE_20__* %59, %struct.TYPE_20__** %18, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i64 %63
  store %struct.TYPE_22__* %64, %struct.TYPE_22__** %19, align 8
  %65 = load i64, i64* @config_prof, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %49
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %70 = icmp eq %struct.TYPE_20__* %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @arena_prof_accum(%struct.TYPE_20__* %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = call i32 (...) @prof_idump()
  br label %80

80:                                               ; preds = %78, %71
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %67, %49
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = call i32 @malloc_mutex_lock(i32* %85)
  %87 = load i64, i64* @config_stats, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %118

89:                                               ; preds = %83
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %92 = icmp eq %struct.TYPE_20__* %90, %91
  br i1 %92, label %93, label %118

93:                                               ; preds = %89
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  store i32 1, i32* %16, align 4
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %107
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %110, align 4
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %93, %89, %83
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %170, %118
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %173

123:                                              ; preds = %119
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 1
  %126 = load i8**, i8*** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** %12, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = icmp ne i8* %131, null
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load i8*, i8** %12, align 8
  %136 = call i64 @CHUNK_ADDR2BASE(i8* %135)
  %137 = inttoptr i64 %136 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %137, %struct.TYPE_21__** %17, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 0
  %140 = call %struct.TYPE_20__* @extent_node_arena_get(i32* %139)
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %142 = icmp eq %struct.TYPE_20__* %140, %141
  br i1 %142, label %143, label %159

143:                                              ; preds = %123
  %144 = load i8*, i8** %12, align 8
  %145 = ptrtoint i8* %144 to i64
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %147 = ptrtoint %struct.TYPE_21__* %146 to i64
  %148 = sub i64 %145, %147
  %149 = load i64, i64* @LG_PAGE, align 8
  %150 = lshr i64 %148, %149
  store i64 %150, i64* %20, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %152 = load i64, i64* %20, align 8
  %153 = call i32* @arena_bitselm_get(%struct.TYPE_21__* %151, i64 %152)
  store i32* %153, i32** %21, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %156 = load i8*, i8** %12, align 8
  %157 = load i32*, i32** %21, align 8
  %158 = call i32 @arena_dalloc_bin_junked_locked(%struct.TYPE_20__* %154, %struct.TYPE_21__* %155, i8* %156, i32* %157)
  br label %169

159:                                              ; preds = %123
  %160 = load i8*, i8** %12, align 8
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 1
  %163 = load i8**, i8*** %162, align 8
  %164 = load i32, i32* %15, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  store i8* %160, i8** %166, align 8
  %167 = load i32, i32* %15, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %15, align 4
  br label %169

169:                                              ; preds = %159, %143
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %13, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %119

173:                                              ; preds = %119
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 0
  %176 = call i32 @malloc_mutex_unlock(i32* %175)
  br label %177

177:                                              ; preds = %173
  %178 = load i32, i32* %15, align 4
  store i32 %178, i32* %14, align 4
  br label %46

179:                                              ; preds = %46
  %180 = load i64, i64* @config_stats, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %216

182:                                              ; preds = %179
  %183 = load i32, i32* %16, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %216, label %185

185:                                              ; preds = %182
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %187, align 8
  %189 = load i64, i64* %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i64 %189
  store %struct.TYPE_22__* %190, %struct.TYPE_22__** %22, align 8
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 0
  %193 = call i32 @malloc_mutex_lock(i32* %192)
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 4
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %207, %202
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %205, align 4
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  store i64 0, i64* %212, align 8
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 0
  %215 = call i32 @malloc_mutex_unlock(i32* %214)
  br label %216

216:                                              ; preds = %185, %182, %179
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 1
  %219 = load i8**, i8*** %218, align 8
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 1
  %222 = load i8**, i8*** %221, align 8
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %10, align 4
  %227 = sub i32 %225, %226
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %222, i64 %228
  %230 = load i32, i32* %10, align 4
  %231 = zext i32 %230 to i64
  %232 = mul i64 %231, 8
  %233 = trunc i64 %232 to i32
  %234 = call i32 @memmove(i8** %219, i8** %229, i32 %233)
  %235 = load i32, i32* %10, align 4
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = icmp slt i32 %240, %243
  br i1 %244, label %245, label %251

245:                                              ; preds = %216
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 8
  br label %251

251:                                              ; preds = %245, %216
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_20__* @arena_choose(i32*, i32*) #1

declare dso_local i64 @CHUNK_ADDR2BASE(i8*) #1

declare dso_local %struct.TYPE_20__* @extent_node_arena_get(i32*) #1

declare dso_local i64 @arena_prof_accum(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @prof_idump(...) #1

declare dso_local i32 @malloc_mutex_lock(i32*) #1

declare dso_local i32* @arena_bitselm_get(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @arena_dalloc_bin_junked_locked(%struct.TYPE_20__*, %struct.TYPE_21__*, i8*, i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*) #1

declare dso_local i32 @memmove(i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
