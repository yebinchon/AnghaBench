; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_chunk_create.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_chunk_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lodepng_chunk_create(i8** %0, i64* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8** %0, i8*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i64*, i64** %8, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = zext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = add i64 %20, 12
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = load i32, i32* %9, align 4
  %24 = add i32 %23, 12
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %5
  %28 = load i64, i64* %15, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %5
  store i32 77, i32* %6, align 4
  br label %100

33:                                               ; preds = %27
  %34 = load i8**, i8*** %7, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %15, align 8
  %37 = call i64 @lodepng_realloc(i8* %35, i64 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %14, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  store i32 83, i32* %6, align 4
  br label %100

42:                                               ; preds = %33
  %43 = load i8*, i8** %14, align 8
  %44 = load i8**, i8*** %7, align 8
  store i8* %43, i8** %44, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load i64*, i64** %8, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i8**, i8*** %7, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i64*, i64** %8, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = sub i64 %50, %52
  %54 = sub i64 %53, 12
  %55 = getelementptr inbounds i8, i8* %48, i64 %54
  store i8* %55, i8** %13, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @lodepng_set32bitInt(i8* %56, i32 %57)
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = load i8*, i8** %13, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 4
  store i8 %61, i8* %63, align 1
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = load i8*, i8** %13, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 5
  store i8 %66, i8* %68, align 1
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %13, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 6
  store i8 %71, i8* %73, align 1
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 3
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %13, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 7
  store i8 %76, i8* %78, align 1
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %94, %42
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %79
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %12, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = load i8*, i8** %13, align 8
  %90 = load i32, i32* %12, align 4
  %91 = add i32 8, %90
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  store i8 %88, i8* %93, align 1
  br label %94

94:                                               ; preds = %83
  %95 = load i32, i32* %12, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %79

97:                                               ; preds = %79
  %98 = load i8*, i8** %13, align 8
  %99 = call i32 @lodepng_chunk_generate_crc(i8* %98)
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %97, %41, %32
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i64 @lodepng_realloc(i8*, i64) #1

declare dso_local i32 @lodepng_set32bitInt(i8*, i32) #1

declare dso_local i32 @lodepng_chunk_generate_crc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
