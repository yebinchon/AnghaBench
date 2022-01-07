; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/encodings/extr_encoding_utf.c_utf8cpy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/encodings/extr_encoding_utf.c_utf8cpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf8cpy(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  store i32* %14, i32** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %90

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %40, %18
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %9, align 8
  %26 = icmp ugt i64 %24, 0
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ false, %19 ], [ %26, %23 ]
  br i1 %28, label %29, label %41

29:                                               ; preds = %27
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %10, align 8
  br label %32

32:                                               ; preds = %37, %29
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 192
  %36 = icmp eq i32 %35, 128
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %10, align 8
  br label %32

40:                                               ; preds = %32
  br label %19

41:                                               ; preds = %27
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = ptrtoint i32* %42 to i64
  %45 = ptrtoint i32* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 4
  %48 = load i64, i64* %7, align 8
  %49 = sub i64 %48, 1
  %50 = icmp ugt i64 %47, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %41
  %52 = load i32*, i32** %11, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = getelementptr inbounds i32, i32* %54, i64 -1
  store i32* %55, i32** %10, align 8
  br label %56

56:                                               ; preds = %61, %51
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 192
  %60 = icmp eq i32 %59, 128
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 -1
  store i32* %63, i32** %10, align 8
  br label %56

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %41
  %66 = load i8*, i8** %6, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = ptrtoint i32* %68 to i64
  %71 = ptrtoint i32* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memcpy(i8* %66, i32* %67, i32 %74)
  %76 = load i8*, i8** %6, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = ptrtoint i32* %77 to i64
  %80 = ptrtoint i32* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 4
  %83 = getelementptr inbounds i8, i8* %76, i64 %82
  store i8 0, i8* %83, align 1
  %84 = load i32*, i32** %10, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = ptrtoint i32* %84 to i64
  %87 = ptrtoint i32* %85 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 4
  store i64 %89, i64* %5, align 8
  br label %90

90:                                               ; preds = %65, %17
  %91 = load i64, i64* %5, align 8
  ret i64 %91
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
