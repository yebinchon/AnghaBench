; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_flowhash.c_net_flowhash_mh3_x86_32.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_flowhash.c_net_flowhash_mh3_x86_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MH3_X86_32_C1 = common dso_local global i32 0, align 4
@MH3_X86_32_C2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_flowhash_mh3_x86_32(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sdiv i32 %16, 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = mul nsw i32 %20, 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = bitcast i32* %23 to i8*
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %9, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %51, %3
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @getblock32(i32* %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* @MH3_X86_32_C1, align 4
  %36 = load i32, i32* %12, align 4
  %37 = mul nsw i32 %36, %35
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @ROTL32(i32 %38, i32 15)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* @MH3_X86_32_C2, align 4
  %41 = load i32, i32* %12, align 4
  %42 = mul nsw i32 %41, %40
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = xor i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @ROTL32(i32 %46, i32 13)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = mul nsw i32 %48, 5
  %50 = add i32 %49, -430675100
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %31
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %28

54:                                               ; preds = %28
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = mul nsw i32 %56, 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = bitcast i32* %59 to i8*
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 3
  switch i32 %63, label %95 [
    i32 3, label %64
    i32 2, label %71
    i32 1, label %78
  ]

64:                                               ; preds = %54
  %65 = load i32*, i32** %10, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 16
  %69 = load i32, i32* %12, align 4
  %70 = xor i32 %69, %68
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %54, %64
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 8
  %76 = load i32, i32* %12, align 4
  %77 = xor i32 %76, %75
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %54, %71
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %12, align 4
  %83 = xor i32 %82, %81
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* @MH3_X86_32_C1, align 4
  %85 = load i32, i32* %12, align 4
  %86 = mul nsw i32 %85, %84
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @ROTL32(i32 %87, i32 15)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* @MH3_X86_32_C2, align 4
  %90 = load i32, i32* %12, align 4
  %91 = mul nsw i32 %90, %89
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %11, align 4
  %94 = xor i32 %93, %92
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %78, %54
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %11, align 4
  %98 = xor i32 %97, %96
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @mh3_fmix32(i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  ret i32 %101
}

declare dso_local i32 @getblock32(i32*, i32) #1

declare dso_local i32 @ROTL32(i32, i32) #1

declare dso_local i32 @mh3_fmix32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
