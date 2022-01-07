; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_camellia.c_camellia_feistel.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_camellia.c_camellia_feistel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @camellia_feistel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camellia_feistel(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %11, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = xor i32 %18, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 24
  %25 = and i32 %24, 255
  %26 = call i64 @SBOX1(i32 %25)
  %27 = trunc i64 %26 to i32
  %28 = shl i32 %27, 24
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = call i64 @SBOX2(i32 %31)
  %33 = trunc i64 %32 to i32
  %34 = shl i32 %33, 16
  %35 = or i32 %28, %34
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %36, 8
  %38 = and i32 %37, 255
  %39 = call i64 @SBOX3(i32 %38)
  %40 = trunc i64 %39 to i32
  %41 = shl i32 %40, 8
  %42 = or i32 %35, %41
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 255
  %45 = call i64 @SBOX4(i32 %44)
  %46 = trunc i64 %45 to i32
  %47 = or i32 %42, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = ashr i32 %48, 24
  %50 = and i32 %49, 255
  %51 = call i64 @SBOX2(i32 %50)
  %52 = trunc i64 %51 to i32
  %53 = shl i32 %52, 24
  %54 = load i32, i32* %8, align 4
  %55 = ashr i32 %54, 16
  %56 = and i32 %55, 255
  %57 = call i64 @SBOX3(i32 %56)
  %58 = trunc i64 %57 to i32
  %59 = shl i32 %58, 16
  %60 = or i32 %53, %59
  %61 = load i32, i32* %8, align 4
  %62 = ashr i32 %61, 8
  %63 = and i32 %62, 255
  %64 = call i64 @SBOX4(i32 %63)
  %65 = trunc i64 %64 to i32
  %66 = shl i32 %65, 8
  %67 = or i32 %60, %66
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 255
  %70 = call i64 @SBOX1(i32 %69)
  %71 = trunc i64 %70 to i32
  %72 = or i32 %67, %71
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = shl i32 %73, 8
  %75 = load i32, i32* %8, align 4
  %76 = ashr i32 %75, 24
  %77 = or i32 %74, %76
  %78 = load i32, i32* %7, align 4
  %79 = xor i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = shl i32 %80, 16
  %82 = load i32, i32* %7, align 4
  %83 = ashr i32 %82, 16
  %84 = or i32 %81, %83
  %85 = load i32, i32* %8, align 4
  %86 = xor i32 %85, %84
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = ashr i32 %87, 8
  %89 = load i32, i32* %8, align 4
  %90 = shl i32 %89, 24
  %91 = or i32 %88, %90
  %92 = load i32, i32* %7, align 4
  %93 = xor i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = ashr i32 %94, 8
  %96 = load i32, i32* %7, align 4
  %97 = shl i32 %96, 24
  %98 = or i32 %95, %97
  %99 = load i32, i32* %8, align 4
  %100 = xor i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = xor i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = xor i32 %109, %106
  store i32 %110, i32* %108, align 4
  ret void
}

declare dso_local i64 @SBOX1(i32) #1

declare dso_local i64 @SBOX2(i32) #1

declare dso_local i64 @SBOX3(i32) #1

declare dso_local i64 @SBOX4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
