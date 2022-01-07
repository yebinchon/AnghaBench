; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__jpg_writeBits.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__jpg_writeBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i16*)* @stbiw__jpg_writeBits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbiw__jpg_writeBits(i32* %0, i32* %1, i32* %2, i16* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i16* %3, i16** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i16*, i16** %8, align 8
  %17 = getelementptr inbounds i16, i16* %16, i64 1
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %10, align 4
  %22 = load i16*, i16** %8, align 8
  %23 = getelementptr inbounds i16, i16* %22, i64 0
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 24, %26
  %28 = shl i32 %25, %27
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %48, %4
  %32 = load i32, i32* %10, align 4
  %33 = icmp sge i32 %32, 8
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = ashr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %11, align 1
  %39 = load i32*, i32** %5, align 8
  %40 = load i8, i8* %11, align 1
  %41 = call i32 @stbiw__putc(i32* %39, i8 zeroext %40)
  %42 = load i8, i8* %11, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 255
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @stbiw__putc(i32* %46, i8 zeroext 0)
  br label %48

48:                                               ; preds = %45, %34
  %49 = load i32, i32* %9, align 4
  %50 = shl i32 %49, 8
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sub nsw i32 %51, 8
  store i32 %52, i32* %10, align 4
  br label %31

53:                                               ; preds = %31
  %54 = load i32, i32* %9, align 4
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  ret void
}

declare dso_local i32 @stbiw__putc(i32*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
