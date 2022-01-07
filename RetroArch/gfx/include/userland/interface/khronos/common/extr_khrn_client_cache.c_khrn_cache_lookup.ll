; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/extr_khrn_client_cache.c_khrn_cache_lookup.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/extr_khrn_client_cache.c_khrn_cache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, %struct.TYPE_16__, i32, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, i32, i32*, i32 }

@CACHE_LOG2_BLOCK_SIZE = common dso_local global i32 0, align 4
@xxx_first = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @khrn_cache_lookup(i32* %0, %struct.TYPE_15__* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @hash(i8* %17, i32 %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  %23 = load i32, i32* %12, align 4
  %24 = call i64 @khrn_pointer_map_lookup(i32* %22, i32 %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %13, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %27 = icmp ne %struct.TYPE_17__* %26, null
  br i1 %27, label %28, label %55

28:                                               ; preds = %5
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %28
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @memcmp(i32* %37, i8* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %34
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 3
  %45 = call i32 @link_remove(i32* %44)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = call i32 @link_insert(i32* %47, i32 %51, %struct.TYPE_16__* %53)
  br label %194

55:                                               ; preds = %34, %28, %5
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %57, 24
  %59 = sub i64 %58, 1
  %60 = trunc i64 %59 to i32
  %61 = call i64 @_msb(i32 %60)
  %62 = add nsw i64 %61, 2
  %63 = load i32, i32* @CACHE_LOG2_BLOCK_SIZE, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %62, %64
  %66 = call i32 @_max(i64 %65, i32 1)
  store i32 %66, i32* %14, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %68 = icmp ne %struct.TYPE_17__* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %55
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %73 = call i32 @discard(i32* %70, %struct.TYPE_15__* %71, %struct.TYPE_17__* %72)
  br label %74

74:                                               ; preds = %69, %55
  br label %75

75:                                               ; preds = %87, %74
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @heap_avail(%struct.TYPE_15__* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i32*, i32** %7, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %83 = call i64 @grow(i32* %81, %struct.TYPE_15__* %82)
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i1 [ false, %75 ], [ %84, %80 ]
  br i1 %86, label %87, label %88

87:                                               ; preds = %85
  br label %75

88:                                               ; preds = %85
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  store %struct.TYPE_16__* %92, %struct.TYPE_16__** %16, align 8
  br label %93

93:                                               ; preds = %112, %88
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = icmp ne %struct.TYPE_16__* %94, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @heap_avail(%struct.TYPE_15__* %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  br label %104

104:                                              ; preds = %98, %93
  %105 = phi i1 [ false, %93 ], [ %103, %98 ]
  br i1 %105, label %106, label %116

106:                                              ; preds = %104
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %110 = bitcast %struct.TYPE_16__* %109 to %struct.TYPE_17__*
  %111 = call i32 @discard(i32* %107, %struct.TYPE_15__* %108, %struct.TYPE_17__* %110)
  br label %112

112:                                              ; preds = %106
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  store %struct.TYPE_16__* %115, %struct.TYPE_16__** %16, align 8
  br label %93

116:                                              ; preds = %104
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @heap_avail(%struct.TYPE_15__* %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %116
  store i32 -1, i32* %6, align 4
  br label %205

122:                                              ; preds = %116
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @heap_alloc(%struct.TYPE_15__* %123, i32 %124)
  store i32 %125, i32* %15, align 4
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @CACHE_LOG2_BLOCK_SIZE, align 4
  %131 = shl i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %128, i64 %132
  %134 = bitcast i32* %133 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %134, %struct.TYPE_17__** %13, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @platform_memcpy(i32* %143, i8* %144, i32 %145)
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 2
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %151 = call i32 @khrn_pointer_map_insert(i32* %148, i32 %149, %struct.TYPE_17__* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %122
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %155 = load i32, i32* %15, align 4
  %156 = call i32 @heap_free(%struct.TYPE_15__* %154, i32 %155)
  store i32 -1, i32* %6, align 4
  br label %205

157:                                              ; preds = %122
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  %166 = call i32 @link_insert(i32* %159, i32 %163, %struct.TYPE_16__* %165)
  %167 = load i32*, i32** %7, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %169 = bitcast %struct.TYPE_17__* %168 to i32*
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = ptrtoint i32* %169 to i64
  %174 = ptrtoint i32* %172 to i64
  %175 = sub i64 %173, %174
  %176 = sdiv exact i64 %175, 4
  %177 = trunc i64 %176 to i32
  %178 = call i32 @send_create(i32* %167, i32 %177)
  %179 = load i32*, i32** %7, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = ptrtoint i32* %182 to i64
  %187 = ptrtoint i32* %185 to i64
  %188 = sub i64 %186, %187
  %189 = sdiv exact i64 %188, 4
  %190 = trunc i64 %189 to i32
  %191 = load i8*, i8** %9, align 8
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @send_data(i32* %179, i32 %190, i8* %191, i32 %192)
  br label %194

194:                                              ; preds = %157, %42
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %196 = bitcast %struct.TYPE_17__* %195 to i32*
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = ptrtoint i32* %196 to i64
  %201 = ptrtoint i32* %199 to i64
  %202 = sub i64 %200, %201
  %203 = sdiv exact i64 %202, 4
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %6, align 4
  br label %205

205:                                              ; preds = %194, %153, %121
  %206 = load i32, i32* %6, align 4
  ret i32 %206
}

declare dso_local i32 @hash(i8*, i32, i32) #1

declare dso_local i64 @khrn_pointer_map_lookup(i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @link_remove(i32*) #1

declare dso_local i32 @link_insert(i32*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @_max(i64, i32) #1

declare dso_local i64 @_msb(i32) #1

declare dso_local i32 @discard(i32*, %struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i32 @heap_avail(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @grow(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @heap_alloc(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @platform_memcpy(i32*, i8*, i32) #1

declare dso_local i32 @khrn_pointer_map_insert(i32*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @heap_free(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @send_create(i32*, i32) #1

declare dso_local i32 @send_data(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
