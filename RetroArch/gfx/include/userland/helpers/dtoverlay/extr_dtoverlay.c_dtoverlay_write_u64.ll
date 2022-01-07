; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_write_u64.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_write_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtoverlay_write_u64(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = ashr i32 %9, 56
  %11 = and i32 %10, 255
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 0
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  store i8 %12, i8* %17, align 1
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 48
  %20 = and i32 %19, 255
  %21 = trunc i32 %20 to i8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8 %21, i8* %26, align 1
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 40
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  store i8 %30, i8* %35, align 1
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 32
  %38 = and i32 %37, 255
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 3
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8 %39, i8* %44, align 1
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 24
  %47 = and i32 %46, 255
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  store i8 %48, i8* %53, align 1
  %54 = load i32, i32* %6, align 4
  %55 = ashr i32 %54, 16
  %56 = and i32 %55, 255
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 5
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8 %57, i8* %62, align 1
  %63 = load i32, i32* %6, align 4
  %64 = ashr i32 %63, 8
  %65 = and i32 %64, 255
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 6
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  store i8 %66, i8* %71, align 1
  %72 = load i32, i32* %6, align 4
  %73 = ashr i32 %72, 0
  %74 = and i32 %73, 255
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 7
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  store i8 %75, i8* %80, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
