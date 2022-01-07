; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk_dss.c_chunk_alloc_dss.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk_dss.c_chunk_alloc_dss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@have_dss = common dso_local global i32 0, align 4
@chunksize_mask = common dso_local global i64 0, align 8
@dss_mtx = common dso_local global i32 0, align 4
@dss_prev = common dso_local global i8* null, align 8
@dss_max = common dso_local global i8* null, align 8
@chunksize = common dso_local global i64 0, align 8
@CHUNK_HOOKS_INITIALIZER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @chunk_alloc_dss(i32* %0, i8* %1, i64 %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load i32, i32* @have_dss, align 4
  %22 = call i32 @cassert(i32 %21)
  %23 = load i64, i64* %10, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %6
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @chunksize_mask, align 8
  %28 = and i64 %26, %27
  %29 = icmp eq i64 %28, 0
  br label %30

30:                                               ; preds = %25, %6
  %31 = phi i1 [ false, %6 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i64, i64* %11, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @chunksize_mask, align 8
  %39 = and i64 %37, %38
  %40 = icmp eq i64 %39, 0
  br label %41

41:                                               ; preds = %36, %30
  %42 = phi i1 [ false, %30 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i64, i64* %10, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i8* null, i8** %7, align 8
  br label %161

48:                                               ; preds = %41
  %49 = call i32 @malloc_mutex_lock(i32* @dss_mtx)
  %50 = load i8*, i8** @dss_prev, align 8
  %51 = icmp ne i8* %50, inttoptr (i64 -1 to i8*)
  br i1 %51, label %52, label %159

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %155, %52
  %54 = load i8*, i8** %9, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i8*, i8** @dss_max, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = icmp ne i8* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %158

61:                                               ; preds = %56, %53
  %62 = call i8* @chunk_dss_sbrk(i64 0)
  store i8* %62, i8** @dss_max, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i8*, i8** @dss_max, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = icmp ne i8* %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %158

70:                                               ; preds = %65, %61
  %71 = load i64, i64* @chunksize, align 8
  %72 = load i8*, i8** @dss_max, align 8
  %73 = call i64 @CHUNK_ADDR2OFFSET(i8* %72)
  %74 = sub i64 %71, %73
  %75 = load i64, i64* @chunksize_mask, align 8
  %76 = and i64 %74, %75
  store i64 %76, i64* %17, align 8
  %77 = load i8*, i8** @dss_max, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = load i64, i64* %17, align 8
  %80 = add i64 %78, %79
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** %15, align 8
  %82 = load i8*, i8** @dss_max, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load i64, i64* %11, align 8
  %85 = call i64 @ALIGNMENT_CEILING(i64 %83, i64 %84)
  %86 = inttoptr i64 %85 to i8*
  store i8* %86, i8** %14, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = load i8*, i8** %15, align 8
  %90 = ptrtoint i8* %89 to i64
  %91 = sub i64 %88, %90
  store i64 %91, i64* %18, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = ptrtoint i8* %92 to i64
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %93, %94
  %96 = inttoptr i64 %95 to i8*
  store i8* %96, i8** %16, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = ptrtoint i8* %97 to i64
  %99 = load i8*, i8** @dss_max, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = icmp ult i64 %98, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %70
  %103 = load i8*, i8** %16, align 8
  %104 = ptrtoint i8* %103 to i64
  %105 = load i8*, i8** @dss_max, align 8
  %106 = ptrtoint i8* %105 to i64
  %107 = icmp ult i64 %104, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %102, %70
  %109 = call i32 @malloc_mutex_unlock(i32* @dss_mtx)
  store i8* null, i8** %7, align 8
  br label %161

110:                                              ; preds = %102
  %111 = load i64, i64* %17, align 8
  %112 = load i64, i64* %18, align 8
  %113 = add i64 %111, %112
  %114 = load i64, i64* %10, align 8
  %115 = add i64 %113, %114
  store i64 %115, i64* %19, align 8
  %116 = load i64, i64* %19, align 8
  %117 = call i8* @chunk_dss_sbrk(i64 %116)
  store i8* %117, i8** @dss_prev, align 8
  %118 = load i8*, i8** @dss_prev, align 8
  %119 = load i8*, i8** @dss_max, align 8
  %120 = icmp eq i8* %118, %119
  br i1 %120, label %121, label %154

121:                                              ; preds = %110
  %122 = load i8*, i8** %16, align 8
  store i8* %122, i8** @dss_max, align 8
  %123 = call i32 @malloc_mutex_unlock(i32* @dss_mtx)
  %124 = load i64, i64* %18, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i32, i32* @CHUNK_HOOKS_INITIALIZER, align 4
  store i32 %127, i32* %20, align 4
  %128 = load i32*, i32** %8, align 8
  %129 = load i8*, i8** %15, align 8
  %130 = load i64, i64* %18, align 8
  %131 = call i32 @chunk_dalloc_wrapper(i32* %128, i32* %20, i8* %129, i64 %130, i32 1)
  br label %132

132:                                              ; preds = %126, %121
  %133 = load i32*, i32** %12, align 8
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = load i8*, i8** %14, align 8
  %138 = load i64, i64* %10, align 8
  %139 = call i32 @JEMALLOC_VALGRIND_MAKE_MEM_UNDEFINED(i8* %137, i64 %138)
  %140 = load i8*, i8** %14, align 8
  %141 = load i64, i64* %10, align 8
  %142 = call i32 @memset(i8* %140, i32 0, i64 %141)
  br label %143

143:                                              ; preds = %136, %132
  %144 = load i32*, i32** %13, align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %143
  %148 = load i8*, i8** %14, align 8
  %149 = load i64, i64* %10, align 8
  %150 = call i32 @pages_decommit(i8* %148, i64 %149)
  %151 = load i32*, i32** %13, align 8
  store i32 %150, i32* %151, align 4
  br label %152

152:                                              ; preds = %147, %143
  %153 = load i8*, i8** %14, align 8
  store i8* %153, i8** %7, align 8
  br label %161

154:                                              ; preds = %110
  br label %155

155:                                              ; preds = %154
  %156 = load i8*, i8** @dss_prev, align 8
  %157 = icmp ne i8* %156, inttoptr (i64 -1 to i8*)
  br i1 %157, label %53, label %158

158:                                              ; preds = %155, %69, %60
  br label %159

159:                                              ; preds = %158, %48
  %160 = call i32 @malloc_mutex_unlock(i32* @dss_mtx)
  store i8* null, i8** %7, align 8
  br label %161

161:                                              ; preds = %159, %152, %108, %47
  %162 = load i8*, i8** %7, align 8
  ret i8* %162
}

declare dso_local i32 @cassert(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @malloc_mutex_lock(i32*) #1

declare dso_local i8* @chunk_dss_sbrk(i64) #1

declare dso_local i64 @CHUNK_ADDR2OFFSET(i8*) #1

declare dso_local i64 @ALIGNMENT_CEILING(i64, i64) #1

declare dso_local i32 @malloc_mutex_unlock(i32*) #1

declare dso_local i32 @chunk_dalloc_wrapper(i32*, i32*, i8*, i64, i32) #1

declare dso_local i32 @JEMALLOC_VALGRIND_MAKE_MEM_UNDEFINED(i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @pages_decommit(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
