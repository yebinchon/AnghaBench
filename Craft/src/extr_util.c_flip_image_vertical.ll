; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_util.c_flip_image_vertical.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_util.c_flip_image_vertical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flip_image_vertical(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = mul i32 %12, %13
  %15 = mul i32 %14, 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = mul i64 1, %17
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = mul i64 1, %22
  %24 = trunc i64 %23 to i32
  %25 = call i8* @malloc(i32 %24)
  store i8* %25, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %49, %3
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sub i32 %31, %32
  %34 = sub i32 %33, 1
  store i32 %34, i32* %11, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = mul i32 %36, %37
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = mul i32 %42, %43
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @memcpy(i8* %40, i8* %46, i32 %47)
  br label %49

49:                                               ; preds = %30
  %50 = load i32, i32* %10, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %26

52:                                               ; preds = %26
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @memcpy(i8* %53, i8* %54, i32 %55)
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @free(i8* %57)
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
