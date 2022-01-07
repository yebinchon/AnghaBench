; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_huge.c_huge_ralloc_no_move_similar.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_huge.c_huge_ralloc_no_move_similar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@CHUNK_HOOKS_INITIALIZER = common dso_local global i32 0, align 4
@config_fill = common dso_local global i64 0, align 8
@opt_junk_free = common dso_local global i32 0, align 4
@opt_zero = common dso_local global i32 0, align 4
@opt_junk_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i64, i32)* @huge_ralloc_no_move_similar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @huge_ralloc_no_move_similar(i8* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* @CHUNK_HOOKS_INITIALIZER, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %11, align 8
  br label %21

21:                                               ; preds = %34, %5
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i64, i64* %11, align 8
  %27 = add i64 %26, 1
  %28 = call i64 @s2u(i64 %27)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ule i64 %28, %29
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi i1 [ false, %21 ], [ %30, %25 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %12, align 8
  store i64 %35, i64* %11, align 8
  br label %21

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %153

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = call i32* @huge_node_get(i8* %42)
  store i32* %43, i32** %13, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call %struct.TYPE_5__* @extent_node_arena_get(i32* %44)
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %14, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @extent_node_zeroed_get(i32* %46)
  store i32 %47, i32* %16, align 4
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %41
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %11, align 8
  %54 = sub i64 %52, %53
  store i64 %54, i64* %18, align 8
  %55 = load i64, i64* @config_fill, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load i32, i32* @opt_junk_free, align 4
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i8*, i8** %6, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %63, %64
  %66 = inttoptr i64 %65 to i8*
  %67 = load i64, i64* %18, align 8
  %68 = call i32 @memset(i8* %66, i32 90, i64 %67)
  store i32 0, i32* %17, align 4
  br label %80

69:                                               ; preds = %57, %51
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @CHUNK_CEILING(i64 %72)
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %18, align 8
  %76 = call i32 @chunk_purge_wrapper(%struct.TYPE_5__* %70, i32* %15, i8* %71, i32 %73, i64 %74, i64 %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %69, %61
  br label %83

81:                                               ; preds = %41
  %82 = load i32, i32* %16, align 4
  store i32 %82, i32* %17, align 4
  br label %83

83:                                               ; preds = %81, %80
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = call i32 @malloc_mutex_lock(i32* %85)
  %87 = load i32*, i32** %13, align 8
  %88 = call i64 @extent_node_size_get(i32* %87)
  %89 = load i64, i64* %11, align 8
  %90 = icmp ne i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32*, i32** %13, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @extent_node_size_set(i32* %93, i64 %94)
  %96 = load i32*, i32** %13, align 8
  %97 = load i32, i32* %17, align 4
  %98 = call i32 @extent_node_zeroed_set(i32* %96, i32 %97)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = call i32 @malloc_mutex_unlock(i32* %100)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* %11, align 8
  %106 = call i32 @arena_chunk_ralloc_huge_similar(%struct.TYPE_5__* %102, i8* %103, i64 %104, i64 %105)
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %11, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %153

110:                                              ; preds = %83
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %110
  %114 = load i64, i64* @config_fill, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %113
  %117 = load i32, i32* @opt_zero, align 4
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %116, %110
  %121 = load i32, i32* %16, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %120
  %124 = load i8*, i8** %6, align 8
  %125 = ptrtoint i8* %124 to i64
  %126 = load i64, i64* %7, align 8
  %127 = add i64 %125, %126
  %128 = inttoptr i64 %127 to i8*
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* %7, align 8
  %131 = sub i64 %129, %130
  %132 = call i32 @memset(i8* %128, i32 0, i64 %131)
  br label %133

133:                                              ; preds = %123, %120
  br label %152

134:                                              ; preds = %116, %113
  %135 = load i64, i64* @config_fill, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %134
  %138 = load i32, i32* @opt_junk_alloc, align 4
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = load i8*, i8** %6, align 8
  %143 = ptrtoint i8* %142 to i64
  %144 = load i64, i64* %7, align 8
  %145 = add i64 %143, %144
  %146 = inttoptr i64 %145 to i8*
  %147 = load i64, i64* %11, align 8
  %148 = load i64, i64* %7, align 8
  %149 = sub i64 %147, %148
  %150 = call i32 @memset(i8* %146, i32 165, i64 %149)
  br label %151

151:                                              ; preds = %141, %137, %134
  br label %152

152:                                              ; preds = %151, %133
  br label %153

153:                                              ; preds = %40, %152, %83
  ret void
}

declare dso_local i64 @s2u(i64) #1

declare dso_local i32* @huge_node_get(i8*) #1

declare dso_local %struct.TYPE_5__* @extent_node_arena_get(i32*) #1

declare dso_local i32 @extent_node_zeroed_get(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @chunk_purge_wrapper(%struct.TYPE_5__*, i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @CHUNK_CEILING(i64) #1

declare dso_local i32 @malloc_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @extent_node_size_get(i32*) #1

declare dso_local i32 @extent_node_size_set(i32*, i64) #1

declare dso_local i32 @extent_node_zeroed_set(i32*, i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32*) #1

declare dso_local i32 @arena_chunk_ralloc_huge_similar(%struct.TYPE_5__*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
