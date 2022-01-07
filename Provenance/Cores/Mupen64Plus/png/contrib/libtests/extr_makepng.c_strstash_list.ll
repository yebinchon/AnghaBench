; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_makepng.c_strstash_list.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_makepng.c_strstash_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32**)* @strstash_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @strstash_list(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  store i64 0, i64* %3, align 8
  %7 = load i32**, i32*** %2, align 8
  store i32** %7, i32*** %6, align 8
  br label %8

8:                                                ; preds = %12, %1
  %9 = load i32**, i32*** %6, align 8
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i32**, i32*** %6, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i32 1
  store i32** %14, i32*** %6, align 8
  %15 = load i32*, i32** %13, align 8
  %16 = call i64 @strlen(i32* %15)
  %17 = load i64, i64* %3, align 8
  %18 = add i64 %17, %16
  store i64 %18, i64* %3, align 8
  br label %8

19:                                               ; preds = %8
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 1
  %22 = call i64* @malloc(i64 %21)
  store i64* %22, i64** %5, align 8
  store i64* %22, i64** %4, align 8
  %23 = load i32**, i32*** %2, align 8
  store i32** %23, i32*** %6, align 8
  br label %24

24:                                               ; preds = %28, %19
  %25 = load i32**, i32*** %6, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i32**, i32*** %6, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @strlen(i32* %30)
  store i64 %31, i64* %3, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = load i32**, i32*** %6, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i32 1
  store i32** %34, i32*** %6, align 8
  %35 = load i32*, i32** %33, align 8
  %36 = ptrtoint i32* %35 to i32
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @memcpy(i64* %32, i32 %36, i64 %37)
  %39 = load i64, i64* %3, align 8
  %40 = load i64*, i64** %5, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 %39
  store i64* %41, i64** %5, align 8
  br label %24

42:                                               ; preds = %24
  %43 = load i64*, i64** %5, align 8
  store i64 0, i64* %43, align 8
  %44 = load i64*, i64** %4, align 8
  ret i64* %44
}

declare dso_local i64 @strlen(i32*) #1

declare dso_local i64* @malloc(i64) #1

declare dso_local i32 @memcpy(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
