; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_blowfish.c_F.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_blowfish.c_F.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @F to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @F(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 255
  %12 = trunc i32 %11 to i16
  store i16 %12, i16* %8, align 2
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 8
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 255
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %7, align 2
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, 8
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %6, align 2
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 8
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 255
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %5, align 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i16, i16* %5, align 2
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i16, i16* %6, align 2
  %43 = zext i16 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %36, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i16, i16* %7, align 2
  %54 = zext i16 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %47, %56
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i16, i16* %8, align 2
  %65 = zext i16 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %58, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
