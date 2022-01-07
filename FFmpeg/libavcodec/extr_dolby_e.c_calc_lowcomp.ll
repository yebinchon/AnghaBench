; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dolby_e.c_calc_lowcomp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dolby_e.c_calc_lowcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MIN = common dso_local global i32 0, align 4
@lwc_gain_tab = common dso_local global i32** null, align 8
@lwc_adj_tab = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @calc_lowcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_lowcomp(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [17 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %12 = bitcast [17 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 68, i1 false)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %97, %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 11
  br i1 %15, label %16, label %100

16:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* @INT_MIN, align 4
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 %18, 3
  %20 = call i32 @FFMAX(i32 %19, i32 0)
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %52, %16
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 3
  %25 = icmp sle i32 %22, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %21
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32**, i32*** @lwc_gain_tab, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %31, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %26
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %45, %26
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @log_add(i32 %49, i32 %50)
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %21

57:                                               ; preds = %21
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %57
  %66 = load i32, i32* %7, align 4
  %67 = sub nsw i32 %66, 3
  %68 = call i32 @FFMAX(i32 %67, i32 0)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 3, %69
  %71 = call i32 @FFMAX(i32 %70, i32 0)
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %90, %65
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 3
  %76 = icmp sle i32 %73, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %72
  %78 = load i64*, i64** @lwc_adj_tab, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [17 x i32], [17 x i32]* %3, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %82
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 4
  br label %90

90:                                               ; preds = %77
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %72

95:                                               ; preds = %72
  br label %96

96:                                               ; preds = %95, %57
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %13

100:                                              ; preds = %13
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %122, %100
  %102 = load i32, i32* %4, align 4
  %103 = icmp slt i32 %102, 16
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [17 x i32], [17 x i32]* %3, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @FFMAX(i32 %108, i32 -512)
  store i32 %109, i32* %11, align 4
  %110 = load i32*, i32** %2, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %114, %115
  %117 = call i32 @FFMAX(i32 %116, i32 0)
  %118 = load i32*, i32** %2, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %117, i32* %121, align 4
  br label %122

122:                                              ; preds = %104
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %101

125:                                              ; preds = %101
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @FFMAX(i32, i32) #2

declare dso_local i32 @log_add(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
