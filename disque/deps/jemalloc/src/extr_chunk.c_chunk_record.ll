; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk.c_chunk_record.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk.c_chunk_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 (i8*, i64, i8*, i64, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_14__*, i32*, i32*, i32, i8*, i64, i32, i32)* @chunk_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chunk_record(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32* %2, i32* %3, i32 %4, i8* %5, i64 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %9
  %26 = load i32, i32* %17, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %25, %9
  %30 = phi i1 [ true, %9 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %17, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %35, %29
  %40 = phi i1 [ true, %29 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %19, align 4
  %42 = load i8*, i8** %15, align 8
  %43 = load i64, i64* %16, align 8
  %44 = call i32 @JEMALLOC_VALGRIND_MAKE_MEM_NOACCESS(i8* %42, i64 %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = call i32 @malloc_mutex_lock(i32* %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %50 = call i32 @chunk_hooks_assure_initialized_locked(%struct.TYPE_15__* %48, %struct.TYPE_14__* %49)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = load i64, i64* %16, align 8
  %55 = add i64 %53, %54
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @extent_node_init(i32* %22, %struct.TYPE_15__* %51, i8* %56, i64 0, i32 0, i32 0)
  %58 = load i32*, i32** %13, align 8
  %59 = call i32* @extent_tree_ad_nsearch(i32* %58, i32* %22)
  store i32* %59, i32** %20, align 8
  %60 = load i32*, i32** %20, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %123

62:                                               ; preds = %39
  %63 = load i32*, i32** %20, align 8
  %64 = call i8* @extent_node_addr_get(i32* %63)
  %65 = call i8* @extent_node_addr_get(i32* %22)
  %66 = icmp eq i8* %64, %65
  br i1 %66, label %67, label %123

67:                                               ; preds = %62
  %68 = load i32*, i32** %20, align 8
  %69 = call i32 @extent_node_committed_get(i32* %68)
  %70 = load i32, i32* %18, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %123

72:                                               ; preds = %67
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32 (i8*, i64, i8*, i64, i32, i32)*, i32 (i8*, i64, i8*, i64, i32, i32)** %74, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = load i64, i64* %16, align 8
  %78 = load i32*, i32** %20, align 8
  %79 = call i8* @extent_node_addr_get(i32* %78)
  %80 = load i32*, i32** %20, align 8
  %81 = call i64 @extent_node_size_get(i32* %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 %75(i8* %76, i64 %77, i8* %79, i64 %81, i32 0, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %123, label %87

87:                                               ; preds = %72
  %88 = load i32*, i32** %12, align 8
  %89 = load i32*, i32** %20, align 8
  %90 = call i32 @extent_tree_szad_remove(i32* %88, i32* %89)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %92 = load i32*, i32** %20, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @arena_chunk_cache_maybe_remove(%struct.TYPE_15__* %91, i32* %92, i32 %93)
  %95 = load i32*, i32** %20, align 8
  %96 = load i8*, i8** %15, align 8
  %97 = call i32 @extent_node_addr_set(i32* %95, i8* %96)
  %98 = load i32*, i32** %20, align 8
  %99 = load i64, i64* %16, align 8
  %100 = load i32*, i32** %20, align 8
  %101 = call i64 @extent_node_size_get(i32* %100)
  %102 = add i64 %99, %101
  %103 = call i32 @extent_node_size_set(i32* %98, i64 %102)
  %104 = load i32*, i32** %20, align 8
  %105 = load i32*, i32** %20, align 8
  %106 = call i64 @extent_node_zeroed_get(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %87
  %109 = load i32, i32* %19, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  br label %112

112:                                              ; preds = %108, %87
  %113 = phi i1 [ false, %87 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @extent_node_zeroed_set(i32* %104, i32 %114)
  %116 = load i32*, i32** %12, align 8
  %117 = load i32*, i32** %20, align 8
  %118 = call i32 @extent_tree_szad_insert(i32* %116, i32* %117)
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %120 = load i32*, i32** %20, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @arena_chunk_cache_maybe_insert(%struct.TYPE_15__* %119, i32* %120, i32 %121)
  br label %160

123:                                              ; preds = %72, %67, %62, %39
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %125 = call i32* @arena_node_alloc(%struct.TYPE_15__* %124)
  store i32* %125, i32** %20, align 8
  %126 = load i32*, i32** %20, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %139

128:                                              ; preds = %123
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %134 = load i8*, i8** %15, align 8
  %135 = load i64, i64* %16, align 8
  %136 = load i64, i64* %16, align 8
  %137 = call i32 @chunk_purge_wrapper(%struct.TYPE_15__* %132, %struct.TYPE_14__* %133, i8* %134, i64 %135, i32 0, i64 %136)
  br label %138

138:                                              ; preds = %131, %128
  br label %248

139:                                              ; preds = %123
  %140 = load i32*, i32** %20, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %142 = load i8*, i8** %15, align 8
  %143 = load i64, i64* %16, align 8
  %144 = load i32, i32* %19, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = load i32, i32* %18, align 4
  %149 = call i32 @extent_node_init(i32* %140, %struct.TYPE_15__* %141, i8* %142, i64 %143, i32 %147, i32 %148)
  %150 = load i32*, i32** %13, align 8
  %151 = load i32*, i32** %20, align 8
  %152 = call i32 @extent_tree_ad_insert(i32* %150, i32* %151)
  %153 = load i32*, i32** %12, align 8
  %154 = load i32*, i32** %20, align 8
  %155 = call i32 @extent_tree_szad_insert(i32* %153, i32* %154)
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %157 = load i32*, i32** %20, align 8
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @arena_chunk_cache_maybe_insert(%struct.TYPE_15__* %156, i32* %157, i32 %158)
  br label %160

160:                                              ; preds = %139, %112
  %161 = load i32*, i32** %13, align 8
  %162 = load i32*, i32** %20, align 8
  %163 = call i32* @extent_tree_ad_prev(i32* %161, i32* %162)
  store i32* %163, i32** %21, align 8
  %164 = load i32*, i32** %21, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %247

166:                                              ; preds = %160
  %167 = load i32*, i32** %21, align 8
  %168 = call i8* @extent_node_addr_get(i32* %167)
  %169 = ptrtoint i8* %168 to i64
  %170 = load i32*, i32** %21, align 8
  %171 = call i64 @extent_node_size_get(i32* %170)
  %172 = add i64 %169, %171
  %173 = inttoptr i64 %172 to i8*
  %174 = load i8*, i8** %15, align 8
  %175 = icmp eq i8* %173, %174
  br i1 %175, label %176, label %247

176:                                              ; preds = %166
  %177 = load i32*, i32** %21, align 8
  %178 = call i32 @extent_node_committed_get(i32* %177)
  %179 = load i32, i32* %18, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %247

181:                                              ; preds = %176
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = load i32 (i8*, i64, i8*, i64, i32, i32)*, i32 (i8*, i64, i8*, i64, i32, i32)** %183, align 8
  %185 = load i32*, i32** %21, align 8
  %186 = call i8* @extent_node_addr_get(i32* %185)
  %187 = load i32*, i32** %21, align 8
  %188 = call i64 @extent_node_size_get(i32* %187)
  %189 = load i8*, i8** %15, align 8
  %190 = load i64, i64* %16, align 8
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 %184(i8* %186, i64 %188, i8* %189, i64 %190, i32 0, i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %247, label %196

196:                                              ; preds = %181
  %197 = load i32*, i32** %12, align 8
  %198 = load i32*, i32** %21, align 8
  %199 = call i32 @extent_tree_szad_remove(i32* %197, i32* %198)
  %200 = load i32*, i32** %13, align 8
  %201 = load i32*, i32** %21, align 8
  %202 = call i32 @extent_tree_ad_remove(i32* %200, i32* %201)
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %204 = load i32*, i32** %21, align 8
  %205 = load i32, i32* %14, align 4
  %206 = call i32 @arena_chunk_cache_maybe_remove(%struct.TYPE_15__* %203, i32* %204, i32 %205)
  %207 = load i32*, i32** %12, align 8
  %208 = load i32*, i32** %20, align 8
  %209 = call i32 @extent_tree_szad_remove(i32* %207, i32* %208)
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %211 = load i32*, i32** %20, align 8
  %212 = load i32, i32* %14, align 4
  %213 = call i32 @arena_chunk_cache_maybe_remove(%struct.TYPE_15__* %210, i32* %211, i32 %212)
  %214 = load i32*, i32** %20, align 8
  %215 = load i32*, i32** %21, align 8
  %216 = call i8* @extent_node_addr_get(i32* %215)
  %217 = call i32 @extent_node_addr_set(i32* %214, i8* %216)
  %218 = load i32*, i32** %20, align 8
  %219 = load i32*, i32** %21, align 8
  %220 = call i64 @extent_node_size_get(i32* %219)
  %221 = load i32*, i32** %20, align 8
  %222 = call i64 @extent_node_size_get(i32* %221)
  %223 = add i64 %220, %222
  %224 = call i32 @extent_node_size_set(i32* %218, i64 %223)
  %225 = load i32*, i32** %20, align 8
  %226 = load i32*, i32** %21, align 8
  %227 = call i64 @extent_node_zeroed_get(i32* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %196
  %230 = load i32*, i32** %20, align 8
  %231 = call i64 @extent_node_zeroed_get(i32* %230)
  %232 = icmp ne i64 %231, 0
  br label %233

233:                                              ; preds = %229, %196
  %234 = phi i1 [ false, %196 ], [ %232, %229 ]
  %235 = zext i1 %234 to i32
  %236 = call i32 @extent_node_zeroed_set(i32* %225, i32 %235)
  %237 = load i32*, i32** %12, align 8
  %238 = load i32*, i32** %20, align 8
  %239 = call i32 @extent_tree_szad_insert(i32* %237, i32* %238)
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %241 = load i32*, i32** %20, align 8
  %242 = load i32, i32* %14, align 4
  %243 = call i32 @arena_chunk_cache_maybe_insert(%struct.TYPE_15__* %240, i32* %241, i32 %242)
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %245 = load i32*, i32** %21, align 8
  %246 = call i32 @arena_node_dalloc(%struct.TYPE_15__* %244, i32* %245)
  br label %247

247:                                              ; preds = %233, %181, %176, %166, %160
  br label %248

248:                                              ; preds = %247, %138
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 0
  %251 = call i32 @malloc_mutex_unlock(i32* %250)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @JEMALLOC_VALGRIND_MAKE_MEM_NOACCESS(i8*, i64) #1

declare dso_local i32 @malloc_mutex_lock(i32*) #1

declare dso_local i32 @chunk_hooks_assure_initialized_locked(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @extent_node_init(i32*, %struct.TYPE_15__*, i8*, i64, i32, i32) #1

declare dso_local i32* @extent_tree_ad_nsearch(i32*, i32*) #1

declare dso_local i8* @extent_node_addr_get(i32*) #1

declare dso_local i32 @extent_node_committed_get(i32*) #1

declare dso_local i64 @extent_node_size_get(i32*) #1

declare dso_local i32 @extent_tree_szad_remove(i32*, i32*) #1

declare dso_local i32 @arena_chunk_cache_maybe_remove(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @extent_node_addr_set(i32*, i8*) #1

declare dso_local i32 @extent_node_size_set(i32*, i64) #1

declare dso_local i32 @extent_node_zeroed_set(i32*, i32) #1

declare dso_local i64 @extent_node_zeroed_get(i32*) #1

declare dso_local i32 @extent_tree_szad_insert(i32*, i32*) #1

declare dso_local i32 @arena_chunk_cache_maybe_insert(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32* @arena_node_alloc(%struct.TYPE_15__*) #1

declare dso_local i32 @chunk_purge_wrapper(%struct.TYPE_15__*, %struct.TYPE_14__*, i8*, i64, i32, i64) #1

declare dso_local i32 @extent_tree_ad_insert(i32*, i32*) #1

declare dso_local i32* @extent_tree_ad_prev(i32*, i32*) #1

declare dso_local i32 @extent_tree_ad_remove(i32*, i32*) #1

declare dso_local i32 @arena_node_dalloc(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
