; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_texturedsp.c_dxt5_block_internal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_texturedsp.c_dxt5_block_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @dxt5_block_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dxt5_block_internal(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca [16 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 8
  %21 = call i32 @AV_RL16(i32* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 10
  %24 = call i32 @AV_RL16(i32* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 12
  %27 = call i32 @AV_RL32(i32* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = call i32 @decompress_indices(i32* %33, i32* %35)
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @extract_color(i32* %37, i32 %38, i32 %39, i32 1, i32 0)
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %129, %3
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %132

44:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %121, %44
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %124

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = mul nsw i32 %50, 4
  %52 = add nsw i32 %49, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %18, align 4
  br label %103

60:                                               ; preds = %48
  %61 = load i32, i32* %16, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %18, align 4
  br label %102

65:                                               ; preds = %60
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i32, i32* %16, align 4
  %71 = sub nsw i32 8, %70
  %72 = load i32, i32* %14, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %16, align 4
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* %15, align 4
  %77 = mul nsw i32 %75, %76
  %78 = add nsw i32 %73, %77
  %79 = sdiv i32 %78, 7
  store i32 %79, i32* %18, align 4
  br label %101

80:                                               ; preds = %65
  %81 = load i32, i32* %16, align 4
  %82 = icmp eq i32 %81, 6
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 0, i32* %18, align 4
  br label %100

84:                                               ; preds = %80
  %85 = load i32, i32* %16, align 4
  %86 = icmp eq i32 %85, 7
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 255, i32* %18, align 4
  br label %99

88:                                               ; preds = %84
  %89 = load i32, i32* %16, align 4
  %90 = sub nsw i32 6, %89
  %91 = load i32, i32* %14, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32, i32* %16, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load i32, i32* %15, align 4
  %96 = mul nsw i32 %94, %95
  %97 = add nsw i32 %92, %96
  %98 = sdiv i32 %97, 5
  store i32 %98, i32* %18, align 4
  br label %99

99:                                               ; preds = %88, %87
  br label %100

100:                                              ; preds = %99, %83
  br label %101

101:                                              ; preds = %100, %69
  br label %102

102:                                              ; preds = %101, %63
  br label %103

103:                                              ; preds = %102, %58
  %104 = load i32, i32* %13, align 4
  %105 = and i32 %104, 3
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %18, align 4
  %110 = shl i32 %109, 24
  %111 = or i32 %108, %110
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %13, align 4
  %113 = ashr i32 %112, 2
  store i32 %113, i32* %13, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %7, align 4
  %116 = mul nsw i32 %115, 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @AV_WL32(i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %103
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %45

124:                                              ; preds = %45
  %125 = load i32, i32* %5, align 4
  %126 = load i32*, i32** %4, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %4, align 8
  br label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %41

132:                                              ; preds = %41
  ret void
}

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @decompress_indices(i32*, i32*) #1

declare dso_local i32 @extract_color(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
