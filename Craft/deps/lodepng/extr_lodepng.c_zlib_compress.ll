; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_zlib_compress.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_zlib_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i8**, i64*, i8*, i64, %struct.TYPE_5__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i8*, i64, %struct.TYPE_5__*)* @zlib_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlib_compress(i8** %0, i64* %1, i8* %2, i64 %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store i8** %0, i8*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32 (i8**, i64*, i8*, i64, %struct.TYPE_5__*)*, i32 (i8**, i64*, i8*, i64, %struct.TYPE_5__*)** %13, align 8
  %15 = icmp ne i32 (i8**, i64*, i8*, i64, %struct.TYPE_5__*)* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %5
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32 (i8**, i64*, i8*, i64, %struct.TYPE_5__*)*, i32 (i8**, i64*, i8*, i64, %struct.TYPE_5__*)** %18, align 8
  %20 = load i8**, i8*** %7, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %25 = call i32 %19(i8** %20, i64* %21, i8* %22, i64 %23, %struct.TYPE_5__* %24)
  store i32 %25, i32* %6, align 4
  br label %33

26:                                               ; preds = %5
  %27 = load i8**, i8*** %7, align 8
  %28 = load i64*, i64** %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %32 = call i32 @lodepng_zlib_compress(i8** %27, i64* %28, i8* %29, i64 %30, %struct.TYPE_5__* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %26, %16
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @lodepng_zlib_compress(i8**, i64*, i8*, i64, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
