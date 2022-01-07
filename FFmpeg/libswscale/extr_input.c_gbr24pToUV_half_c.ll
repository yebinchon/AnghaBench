; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_input.c_gbr24pToUV_half_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_input.c_gbr24pToUV_half_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RU_IDX = common dso_local global i64 0, align 8
@GU_IDX = common dso_local global i64 0, align 8
@BU_IDX = common dso_local global i64 0, align 8
@RV_IDX = common dso_local global i64 0, align 8
@GV_IDX = common dso_local global i64 0, align 8
@BV_IDX = common dso_local global i64 0, align 8
@RGB2YUV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32, i32*)* @gbr24pToUV_half_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gbr24pToUV_half_c(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %27 = load i32*, i32** %8, align 8
  store i32* %27, i32** %15, align 8
  %28 = load i32*, i32** %9, align 8
  store i32* %28, i32** %16, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = load i64, i64* @RU_IDX, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %17, align 4
  %33 = load i32*, i32** %14, align 8
  %34 = load i64, i64* @GU_IDX, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %18, align 4
  %37 = load i32*, i32** %14, align 8
  %38 = load i64, i64* @BU_IDX, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %19, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = load i64, i64* @RV_IDX, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %20, align 4
  %45 = load i32*, i32** %14, align 8
  %46 = load i64, i64* @GV_IDX, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %21, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = load i64, i64* @BV_IDX, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %53

53:                                               ; preds = %146, %7
  %54 = load i32, i32* %23, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %149

57:                                               ; preds = %53
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %23, align 4
  %60 = mul nsw i32 2, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %23, align 4
  %66 = mul nsw i32 2, %65
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %63, %70
  store i32 %71, i32* %24, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %23, align 4
  %74 = mul nsw i32 2, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %23, align 4
  %80 = mul nsw i32 2, %79
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = add i32 %77, %84
  store i32 %85, i32* %25, align 4
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %23, align 4
  %88 = mul nsw i32 2, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %23, align 4
  %94 = mul nsw i32 2, %93
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = add i32 %91, %98
  store i32 %99, i32* %26, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %26, align 4
  %102 = mul i32 %100, %101
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %24, align 4
  %105 = mul i32 %103, %104
  %106 = add i32 %102, %105
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %25, align 4
  %109 = mul i32 %107, %108
  %110 = add i32 %106, %109
  %111 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %112 = sub nsw i32 %111, 6
  %113 = shl i32 16385, %112
  %114 = add i32 %110, %113
  %115 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %116 = sub nsw i32 %115, 6
  %117 = add nsw i32 %116, 1
  %118 = lshr i32 %114, %117
  %119 = load i32*, i32** %15, align 8
  %120 = load i32, i32* %23, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %118, i32* %122, align 4
  %123 = load i32, i32* %20, align 4
  %124 = load i32, i32* %26, align 4
  %125 = mul i32 %123, %124
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* %24, align 4
  %128 = mul i32 %126, %127
  %129 = add i32 %125, %128
  %130 = load i32, i32* %22, align 4
  %131 = load i32, i32* %25, align 4
  %132 = mul i32 %130, %131
  %133 = add i32 %129, %132
  %134 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %135 = sub nsw i32 %134, 6
  %136 = shl i32 16385, %135
  %137 = add i32 %133, %136
  %138 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %139 = sub nsw i32 %138, 6
  %140 = add nsw i32 %139, 1
  %141 = lshr i32 %137, %140
  %142 = load i32*, i32** %16, align 8
  %143 = load i32, i32* %23, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %141, i32* %145, align 4
  br label %146

146:                                              ; preds = %57
  %147 = load i32, i32* %23, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %23, align 4
  br label %53

149:                                              ; preds = %53
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
