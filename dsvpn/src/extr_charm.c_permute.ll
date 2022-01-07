; ModuleID = '/home/carl/AnghaBench/dsvpn/src/extr_charm.c_permute.c'
source_filename = "/home/carl/AnghaBench/dsvpn/src/extr_charm.c_permute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XOODOO_ROUNDS = common dso_local global i32 0, align 4
@RK = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @permute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @permute(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %155, %1
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @XOODOO_ROUNDS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %158

14:                                               ; preds = %10
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %52, %14
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %55

18:                                               ; preds = %15
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %23, %29
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %30, %36
  %38 = call i32 @ROTR32(i32 %37, i32 18)
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %40
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ROTR32(i32 %45, i32 9)
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = xor i32 %50, %46
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %18
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %15

55:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %72, %55
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 12
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %60, 1
  %62 = and i32 %61, 3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %2, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = xor i32 %70, %65
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %56

75:                                               ; preds = %56
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @SWAP32(i32* %76, i32 7, i32 4)
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @SWAP32(i32* %78, i32 7, i32 5)
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @SWAP32(i32* %80, i32 7, i32 6)
  %82 = load i32*, i32** @RK, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %2, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = xor i32 %89, %86
  store i32 %90, i32* %88, align 4
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %147, %75
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 4
  br i1 %93, label %94, label %150

94:                                               ; preds = %91
  %95 = load i32*, i32** %2, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %4, align 4
  %100 = load i32*, i32** %2, align 8
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %5, align 4
  %106 = load i32*, i32** %2, align 8
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ROTR32(i32 %111, i32 21)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %4, align 4
  %115 = xor i32 %114, -1
  %116 = and i32 %113, %115
  %117 = load i32, i32* %6, align 4
  %118 = xor i32 %116, %117
  %119 = call i32 @ROTR32(i32 %118, i32 24)
  %120 = load i32*, i32** %2, align 8
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 %119, i32* %124, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %6, align 4
  %127 = xor i32 %126, -1
  %128 = and i32 %125, %127
  %129 = load i32, i32* %5, align 4
  %130 = xor i32 %128, %129
  %131 = call i32 @ROTR32(i32 %130, i32 31)
  %132 = load i32*, i32** %2, align 8
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  store i32 %131, i32* %136, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %5, align 4
  %139 = xor i32 %138, -1
  %140 = and i32 %137, %139
  %141 = load i32*, i32** %2, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = xor i32 %145, %140
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %94
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %91

150:                                              ; preds = %91
  %151 = load i32*, i32** %2, align 8
  %152 = call i32 @SWAP32(i32* %151, i32 8, i32 10)
  %153 = load i32*, i32** %2, align 8
  %154 = call i32 @SWAP32(i32* %153, i32 9, i32 11)
  br label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %10

158:                                              ; preds = %10
  ret void
}

declare dso_local i32 @ROTR32(i32, i32) #1

declare dso_local i32 @SWAP32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
