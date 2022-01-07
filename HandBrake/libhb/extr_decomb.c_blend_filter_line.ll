; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decomb.c_blend_filter_line.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decomb.c_blend_filter_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Invalid value y %d height %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32, i32)* @blend_filter_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blend_filter_line(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %38

24:                                               ; preds = %7
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %12, align 4
  %27 = sub nsw i32 %26, 2
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i32, i32* %13, align 4
  %31 = mul nsw i32 -1, %30
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %13, align 4
  %33 = mul nsw i32 -2, %32
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %13, align 4
  %35 = mul nsw i32 1, %34
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %13, align 4
  %37 = mul nsw i32 2, %36
  store i32 %37, i32* %20, align 4
  br label %86

38:                                               ; preds = %24, %7
  %39 = load i32, i32* %14, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  %42 = load i32, i32* %13, align 4
  %43 = mul nsw i32 1, %42
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %13, align 4
  %45 = mul nsw i32 2, %44
  store i32 %45, i32* %20, align 4
  br label %85

46:                                               ; preds = %38
  %47 = load i32, i32* %14, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32, i32* %13, align 4
  %51 = mul nsw i32 -1, %50
  store i32 %51, i32* %18, align 4
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %13, align 4
  %53 = mul nsw i32 1, %52
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %13, align 4
  %55 = mul nsw i32 2, %54
  store i32 %55, i32* %20, align 4
  br label %84

56:                                               ; preds = %46
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sub nsw i32 %58, 2
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32, i32* %13, align 4
  %63 = mul nsw i32 -1, %62
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %13, align 4
  %65 = mul nsw i32 -2, %64
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %13, align 4
  %67 = mul nsw i32 1, %66
  store i32 %67, i32* %20, align 4
  store i32 %67, i32* %19, align 4
  br label %83

68:                                               ; preds = %56
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %12, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* %13, align 4
  %75 = mul nsw i32 -1, %74
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %13, align 4
  %77 = mul nsw i32 -2, %76
  store i32 %77, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %82

78:                                               ; preds = %68
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @hb_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80)
  br label %126

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %61
  br label %84

84:                                               ; preds = %83, %49
  br label %85

85:                                               ; preds = %84, %41
  br label %86

86:                                               ; preds = %85, %29
  store i32 0, i32* %16, align 4
  br label %87

87:                                               ; preds = %123, %86
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %126

91:                                               ; preds = %87
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %18, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %10, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %19, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %20, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @blend_filter_pixel(i32* %92, i32 %97, i32 %102, i32 %105, i32 %110, i32 %115)
  %117 = load i32*, i32** %9, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  store i32 %116, i32* %118, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %9, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %10, align 8
  br label %123

123:                                              ; preds = %91
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %16, align 4
  br label %87

126:                                              ; preds = %78, %87
  ret void
}

declare dso_local i32 @hb_error(i8*, i32, i32) #1

declare dso_local i32 @blend_filter_pixel(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
