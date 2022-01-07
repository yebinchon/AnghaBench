; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tcompression.c_encodeDoubleValue.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tcompression.c_encodeDoubleValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_BYTES = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encodeDoubleValue(i32 %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @INT8MASK(i32 3)
  %13 = and i32 %11, %12
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @LONG_BYTES, align 4
  %16 = load i32, i32* @BITS_PER_BYTE, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @BITS_PER_BYTE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sub nsw i32 %17, %20
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 3
  %24 = mul nsw i32 %21, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %31, %4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @INT64MASK(i32 8)
  %34 = and i32 %32, %33
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  store i8 %35, i8* %41, align 1
  %42 = load i32, i32* @BITS_PER_BYTE, align 4
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %9, align 4
  br label %28

47:                                               ; preds = %28
  ret void
}

declare dso_local i32 @INT8MASK(i32) #1

declare dso_local i32 @INT64MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
