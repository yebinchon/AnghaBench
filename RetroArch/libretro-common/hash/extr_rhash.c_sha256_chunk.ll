; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/hash/extr_rhash.c_sha256_chunk.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/hash/extr_rhash.c_sha256_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha256_ctx = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sha256_ctx*, i32*, i32)* @sha256_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha256_chunk(%struct.sha256_ctx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.sha256_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sha256_ctx* %0, %struct.sha256_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.sha256_ctx*, %struct.sha256_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = add i32 %11, %8
  store i32 %12, i32* %10, align 8
  br label %13

13:                                               ; preds = %58, %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %59

16:                                               ; preds = %13
  %17 = load %struct.sha256_ctx*, %struct.sha256_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 64, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %24, %16
  %27 = load %struct.sha256_ctx*, %struct.sha256_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sha256_ctx*, %struct.sha256_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %30, %34
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @memcpy(i64 %35, i32* %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = zext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.sha256_ctx*, %struct.sha256_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sub i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.sha256_ctx*, %struct.sha256_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 64
  br i1 %54, label %55, label %58

55:                                               ; preds = %26
  %56 = load %struct.sha256_ctx*, %struct.sha256_ctx** %4, align 8
  %57 = call i32 @sha256_block(%struct.sha256_ctx* %56)
  br label %58

58:                                               ; preds = %55, %26
  br label %13

59:                                               ; preds = %13
  ret void
}

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @sha256_block(%struct.sha256_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
