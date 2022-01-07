; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_tcache.c_tcaches_create.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_tcache.c_tcaches_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_5__* }

@tcaches = common dso_local global %struct.TYPE_5__* null, align 8
@MALLOCX_TCACHE_MAX = common dso_local global i32 0, align 4
@tcaches_avail = common dso_local global %struct.TYPE_5__* null, align 8
@tcaches_past = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcaches_create(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tcaches, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i32, i32* @MALLOCX_TCACHE_MAX, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = trunc i64 %14 to i32
  %16 = call %struct.TYPE_5__* @base_alloc(i32 %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** @tcaches, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tcaches, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %68

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tcaches_avail, align 8
  %23 = icmp eq %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* @tcaches_past, align 4
  %26 = load i32, i32* @MALLOCX_TCACHE_MAX, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %68

29:                                               ; preds = %24, %21
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 (...) @a0get()
  %32 = call i32* @tcache_create(i32* %30, i32 %31)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %68

36:                                               ; preds = %29
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tcaches_avail, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tcaches_avail, align 8
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %7, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tcaches_avail, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** @tcaches_avail, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32* %44, i32** %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tcaches, align 8
  %49 = ptrtoint %struct.TYPE_5__* %47 to i64
  %50 = ptrtoint %struct.TYPE_5__* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 16
  %53 = trunc i64 %52 to i32
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  br label %67

55:                                               ; preds = %36
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tcaches, align 8
  %57 = load i32, i32* @tcaches_past, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %7, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32* %60, i32** %62, align 8
  %63 = load i32, i32* @tcaches_past, align 4
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @tcaches_past, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @tcaches_past, align 4
  br label %67

67:                                               ; preds = %55, %39
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %35, %28, %19
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_5__* @base_alloc(i32) #1

declare dso_local i32* @tcache_create(i32*, i32) #1

declare dso_local i32 @a0get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
