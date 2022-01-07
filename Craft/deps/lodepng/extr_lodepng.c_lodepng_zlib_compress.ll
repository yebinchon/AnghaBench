; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_zlib_compress.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_zlib_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lodepng_zlib_compress(i8** %0, i64* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  store i8* null, i8** %14, align 8
  store i64 0, i64* %15, align 8
  store i32 120, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %22 = load i32, i32* %17, align 4
  %23 = mul i32 256, %22
  %24 = load i32, i32* %19, align 4
  %25 = mul i32 %24, 32
  %26 = add i32 %23, %25
  %27 = load i32, i32* %18, align 4
  %28 = mul i32 %27, 64
  %29 = add i32 %26, %28
  store i32 %29, i32* %20, align 4
  %30 = load i32, i32* %20, align 4
  %31 = urem i32 %30, 31
  %32 = sub i32 31, %31
  store i32 %32, i32* %21, align 4
  %33 = load i32, i32* %21, align 4
  %34 = load i32, i32* %20, align 4
  %35 = add i32 %34, %33
  store i32 %35, i32* %20, align 4
  %36 = load i8**, i8*** %6, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i64*, i64** %7, align 8
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @ucvector_init_buffer(%struct.TYPE_5__* %11, i8* %37, i64 %39)
  %41 = load i32, i32* %20, align 4
  %42 = udiv i32 %41, 256
  %43 = trunc i32 %42 to i8
  %44 = call i32 @ucvector_push_back(%struct.TYPE_5__* %11, i8 zeroext %43)
  %45 = load i32, i32* %20, align 4
  %46 = urem i32 %45, 256
  %47 = trunc i32 %46 to i8
  %48 = call i32 @ucvector_push_back(%struct.TYPE_5__* %11, i8 zeroext %47)
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @deflate(i8** %14, i64* %15, i8* %49, i64 %50, i32* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %5
  %56 = load i8*, i8** %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @adler32(i8* %56, i32 %58)
  store i32 %59, i32* %16, align 4
  store i64 0, i64* %12, align 8
  br label %60

60:                                               ; preds = %70, %55
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %15, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i8*, i8** %14, align 8
  %66 = load i64, i64* %12, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @ucvector_push_back(%struct.TYPE_5__* %11, i8 zeroext %68)
  br label %70

70:                                               ; preds = %64
  %71 = load i64, i64* %12, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %12, align 8
  br label %60

73:                                               ; preds = %60
  %74 = load i8*, i8** %14, align 8
  %75 = call i32 @lodepng_free(i8* %74)
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @lodepng_add32bitInt(%struct.TYPE_5__* %11, i32 %76)
  br label %78

78:                                               ; preds = %73, %5
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i8**, i8*** %6, align 8
  store i8* %80, i8** %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %7, align 8
  store i64 %83, i64* %84, align 8
  %85 = load i32, i32* %13, align 4
  ret i32 %85
}

declare dso_local i32 @ucvector_init_buffer(%struct.TYPE_5__*, i8*, i64) #1

declare dso_local i32 @ucvector_push_back(%struct.TYPE_5__*, i8 zeroext) #1

declare dso_local i32 @deflate(i8**, i64*, i8*, i64, i32*) #1

declare dso_local i32 @adler32(i8*, i32) #1

declare dso_local i32 @lodepng_free(i8*) #1

declare dso_local i32 @lodepng_add32bitInt(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
