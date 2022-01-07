; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow_dwt.c_ff_snow_vertical_compose97i.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow_dwt.c_ff_snow_vertical_compose97i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@W_DM = common dso_local global i32 0, align 4
@W_DO = common dso_local global i32 0, align 4
@W_DS = common dso_local global i32 0, align 4
@W_CM = common dso_local global i32 0, align 4
@W_CO = common dso_local global i32 0, align 4
@W_CS = common dso_local global i32 0, align 4
@W_BM = common dso_local global i32 0, align 4
@W_BO = common dso_local global i32 0, align 4
@W_BS = common dso_local global i32 0, align 4
@W_AM = common dso_local global i32 0, align 4
@W_AO = common dso_local global i32 0, align 4
@W_AS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_snow_vertical_compose97i(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %120, %7
  %17 = load i32, i32* %15, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %123

20:                                               ; preds = %16
  %21 = load i32, i32* @W_DM, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %15, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* %15, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %26, %31
  %33 = mul nsw i32 %21, %32
  %34 = load i32, i32* @W_DO, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* @W_DS, align 4
  %37 = ashr i32 %35, %36
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, %37
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @W_CM, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %49, %54
  %56 = mul nsw i32 %44, %55
  %57 = load i32, i32* @W_CO, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* @W_CS, align 4
  %60 = ashr i32 %58, %59
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, %60
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @W_BM, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %72, %77
  %79 = mul nsw i32 %67, %78
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 4, %84
  %86 = add nsw i32 %79, %85
  %87 = load i32, i32* @W_BO, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* @W_BS, align 4
  %90 = ashr i32 %88, %89
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, %90
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* @W_AM, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %102, %107
  %109 = mul nsw i32 %97, %108
  %110 = load i32, i32* @W_AO, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* @W_AS, align 4
  %113 = ashr i32 %111, %112
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %113
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %20
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %15, align 4
  br label %16

123:                                              ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
