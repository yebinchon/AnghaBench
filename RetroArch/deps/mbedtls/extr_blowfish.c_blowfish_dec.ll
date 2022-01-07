; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_blowfish.c_blowfish_dec.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_blowfish.c_blowfish_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@MBEDTLS_BLOWFISH_ROUNDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*)* @blowfish_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blowfish_dec(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @MBEDTLS_BLOWFISH_ROUNDS, align 4
  %16 = add nsw i32 %15, 1
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %10, align 2
  br label %18

18:                                               ; preds = %40, %3
  %19 = load i16, i16* %10, align 2
  %20 = sext i16 %19 to i32
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i16, i16* %10, align 2
  %28 = sext i16 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %23, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @F(%struct.TYPE_4__* %32, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = xor i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %22
  %41 = load i16, i16* %10, align 2
  %42 = add i16 %41, -1
  store i16 %42, i16* %10, align 2
  br label %18

43:                                               ; preds = %18
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = xor i32 %47, %52
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = xor i32 %54, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  ret void
}

declare dso_local i32 @F(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
