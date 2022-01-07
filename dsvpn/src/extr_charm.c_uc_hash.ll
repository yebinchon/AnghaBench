; ModuleID = '/home/carl/AnghaBench/dsvpn/src/extr_charm.c_uc_hash.c'
source_filename = "/home/carl/AnghaBench/dsvpn/src/extr_charm.c_uc_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uc_hash(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [17 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ugt i64 %12, 16
  br i1 %13, label %14, label %36

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %32, %14
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %8, align 8
  %18 = sub i64 %17, 16
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @endian_swap_rate(i32* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = call i32 @xor128(i32* %23, i8* %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @endian_swap_rate(i32* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @permute(i32* %30)
  br label %32

32:                                               ; preds = %20
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, 16
  store i64 %34, i64* %10, align 8
  br label %15

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %35, %4
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %10, align 8
  %39 = sub i64 %37, %38
  store i64 %39, i64* %11, align 8
  %40 = getelementptr inbounds [17 x i8], [17 x i8]* %9, i64 0, i64 0
  %41 = call i32 @memset(i8* %40, i32 0, i32 16)
  %42 = getelementptr inbounds [17 x i8], [17 x i8]* %9, i64 0, i64 0
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @mem_cpy(i8* %42, i8* %45, i64 %46)
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds [17 x i8], [17 x i8]* %9, i64 0, i64 %48
  store i8 -128, i8* %49, align 1
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @endian_swap_rate(i32* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds [17 x i8], [17 x i8]* %9, i64 0, i64 0
  %54 = call i32 @xor128(i32* %52, i8* %53)
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @endian_swap_rate(i32* %55)
  %57 = load i64, i64* %11, align 8
  %58 = trunc i64 %57 to i32
  %59 = ashr i32 %58, 4
  %60 = shl i32 %59, 25
  %61 = sext i32 %60 to i64
  %62 = or i64 16777216, %61
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 11
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = xor i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @permute(i32* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = call i32 @squeeze_permute(i32* %71, i8* %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 16
  %78 = call i32 @squeeze_permute(i32* %75, i8* %77)
  ret void
}

declare dso_local i32 @endian_swap_rate(i32*) #1

declare dso_local i32 @xor128(i32*, i8*) #1

declare dso_local i32 @permute(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mem_cpy(i8*, i8*, i64) #1

declare dso_local i32 @squeeze_permute(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
