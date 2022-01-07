; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eacmv.c_cmv_motcomp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eacmv.c_cmv_motcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32)* @cmv_motcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmv_motcomp(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %23 = load i32, i32* %16, align 4
  store i32 %23, i32* %22, align 4
  br label %24

24:                                               ; preds = %94, %10
  %25 = load i32, i32* %22, align 4
  %26 = load i32, i32* %16, align 4
  %27 = add nsw i32 %26, 4
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %97

29:                                               ; preds = %24
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %21, align 4
  br label %31

31:                                               ; preds = %90, %29
  %32 = load i32, i32* %21, align 4
  %33 = load i32, i32* %15, align 4
  %34 = add nsw i32 %33, 4
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %93

36:                                               ; preds = %31
  %37 = load i32, i32* %21, align 4
  %38 = load i32, i32* %17, align 4
  %39 = add nsw i32 %37, %38
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %80

41:                                               ; preds = %36
  %42 = load i32, i32* %21, align 4
  %43 = load i32, i32* %17, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* %19, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %80

47:                                               ; preds = %41
  %48 = load i32, i32* %22, align 4
  %49 = load i32, i32* %18, align 4
  %50 = add nsw i32 %48, %49
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %47
  %53 = load i32, i32* %22, align 4
  %54 = load i32, i32* %18, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %20, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %52
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* %22, align 4
  %61 = load i32, i32* %18, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %14, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %21, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* %17, align 4
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %59, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* %12, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* %21, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %72, i64 %78
  store i8 %71, i8* %79, align 1
  br label %89

80:                                               ; preds = %52, %47, %41, %36
  %81 = load i8*, i8** %11, align 8
  %82 = load i32, i32* %22, align 4
  %83 = load i32, i32* %12, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %21, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %81, i64 %87
  store i8 0, i8* %88, align 1
  br label %89

89:                                               ; preds = %80, %58
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %21, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %21, align 4
  br label %31

93:                                               ; preds = %31
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %22, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %22, align 4
  br label %24

97:                                               ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
