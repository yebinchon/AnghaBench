; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cache.c_mbedtls_ssl_cache_get.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cache.c_mbedtls_ssl_cache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i32*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_7__, i64, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i64, i64, i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_cache_get(i8* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  store i32 1, i32* %5, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %6, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  br label %14

14:                                               ; preds = %63, %48, %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %17, label %79

17:                                               ; preds = %14
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %8, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %7, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %24, %28
  br i1 %29, label %48, label %30

30:                                               ; preds = %17
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %30
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39, %30, %17
  br label %14

49:                                               ; preds = %39
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @memcmp(i32 %52, i32 %56, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  br label %14

64:                                               ; preds = %49
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @memcpy(i32 %67, i32 %71, i32 48)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  store i32 0, i32* %5, align 4
  br label %80

79:                                               ; preds = %14
  br label %80

80:                                               ; preds = %79, %64
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
