; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mcache.c_mcache_slab_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mcache.c_mcache_slab_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64, i32, i32, i64, i32 }

@MCF_DEBUG = common dso_local global i32 0, align 4
@MCACHE_FREE_PATTERN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_5__***, i32, i32)* @mcache_slab_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcache_slab_alloc(i8* %0, %struct.TYPE_5__*** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__***, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.TYPE_5__**, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_5__*** %1, %struct.TYPE_5__**** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %9, align 8
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @P2ROUNDUP(i64 %22, i32 4)
  store i64 %23, i64* %11, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  %27 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %6, align 8
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %27, align 8
  store %struct.TYPE_5__** %28, %struct.TYPE_5__*** %16, align 8
  %29 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %16, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %29, align 8
  br label %30

30:                                               ; preds = %111, %4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @zalloc(i32 %33)
  store i8* %34, i8** %13, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %112

38:                                               ; preds = %30
  %39 = load i8*, i8** %13, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = add i64 %40, 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @P2ROUNDUP(i64 %41, i32 %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %14, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = ptrtoint i8* %47 to i64
  %49 = sub i64 %48, 8
  %50 = inttoptr i64 %49 to i8**
  store i8** %50, i8*** %15, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i8**, i8*** %15, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load i8*, i8** %13, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = icmp sle i64 %58, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @VERIFY(i32 %66)
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @MCF_DEBUG, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %38
  %73 = load i8*, i8** %14, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %74, %75
  %77 = load i8*, i8** %13, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = icmp ule i64 %76, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @VERIFY(i32 %84)
  %86 = load i32, i32* @MCACHE_FREE_PATTERN, align 4
  %87 = load i8*, i8** %14, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @mcache_set_pattern(i32 %86, i8* %87, i64 %88)
  br label %90

90:                                               ; preds = %72, %38
  %91 = load i8*, i8** %14, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @IS_P2ALIGNED(i8* %91, i32 %94)
  %96 = call i32 @VERIFY(i32 %95)
  %97 = load i8*, i8** %14, align 8
  %98 = bitcast i8* %97 to %struct.TYPE_5__*
  %99 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %16, align 8
  store %struct.TYPE_5__* %98, %struct.TYPE_5__** %99, align 8
  %100 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %16, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %102, align 8
  %103 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %16, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %6, align 8
  store %struct.TYPE_5__** %105, %struct.TYPE_5__*** %106, align 8
  store %struct.TYPE_5__** %105, %struct.TYPE_5__*** %16, align 8
  %107 = load i32, i32* %10, align 4
  %108 = add i32 %107, -1
  store i32 %108, i32* %10, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %90
  br label %112

111:                                              ; preds = %90
  br label %30

112:                                              ; preds = %110, %37
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %10, align 4
  %115 = sub i32 %113, %114
  ret i32 %115
}

declare dso_local i64 @P2ROUNDUP(i64, i32) #1

declare dso_local i8* @zalloc(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @mcache_set_pattern(i32, i8*, i64) #1

declare dso_local i32 @IS_P2ALIGNED(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
