; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_quarantine.c_quarantine_grow.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_quarantine.c_quarantine_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32*, %struct.TYPE_8__*)* @quarantine_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @quarantine_grow(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  %14 = call %struct.TYPE_8__* @quarantine_init(i32* %9, i32 %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %6, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = icmp eq %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = call i32 @quarantine_drain_one(i32* %18, %struct.TYPE_8__* %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %3, align 8
  br label %113

22:                                               ; preds = %2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %35, %38
  %40 = call i64 @ZU(i32 1)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = zext i32 %43 to i64
  %45 = shl i64 %40, %44
  %46 = icmp ule i64 %39, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %22
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = mul i64 %60, 4
  %62 = call i32 @memcpy(i32* %50, i32* %57, i64 %61)
  br label %103

63:                                               ; preds = %22
  %64 = call i64 @ZU(i32 1)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = zext i32 %67 to i64
  %69 = shl i64 %64, %68
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %69, %72
  store i64 %73, i64* %7, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = sub i64 %76, %77
  store i64 %78, i64* %8, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i64, i64* %7, align 8
  %90 = mul i64 %89, 4
  %91 = call i32 @memcpy(i32* %81, i32* %88, i64 %90)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* %8, align 8
  %101 = mul i64 %100, 4
  %102 = call i32 @memcpy(i32* %96, i32* %99, i64 %101)
  br label %103

103:                                              ; preds = %63, %47
  %104 = load i32*, i32** %4, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @tcache_get(i32* %106, i32 0)
  %108 = call i32 @idalloctm(i32* %104, %struct.TYPE_8__* %105, i32 %107, i32 1)
  %109 = load i32*, i32** %4, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %111 = call i32 @tsd_quarantine_set(i32* %109, %struct.TYPE_8__* %110)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %3, align 8
  br label %113

113:                                              ; preds = %103, %17
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %114
}

declare dso_local %struct.TYPE_8__* @quarantine_init(i32*, i32) #1

declare dso_local i32 @quarantine_drain_one(i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @ZU(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @idalloctm(i32*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @tcache_get(i32*, i32) #1

declare dso_local i32 @tsd_quarantine_set(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
