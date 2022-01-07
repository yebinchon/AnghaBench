; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removegrain.c_mode10.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removegrain.c_mode10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)* @mode10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode10(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i32 @FFABS(i32 %31)
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %13, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i32 @FFABS(i32 %35)
  store i32 %36, i32* %21, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %14, align 4
  %39 = sub nsw i32 %37, %38
  %40 = call i32 @FFABS(i32 %39)
  store i32 %40, i32* %22, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %15, align 4
  %43 = sub nsw i32 %41, %42
  %44 = call i32 @FFABS(i32 %43)
  store i32 %44, i32* %23, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %16, align 4
  %47 = sub nsw i32 %45, %46
  %48 = call i32 @FFABS(i32 %47)
  store i32 %48, i32* %24, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %17, align 4
  %51 = sub nsw i32 %49, %50
  %52 = call i32 @FFABS(i32 %51)
  store i32 %52, i32* %25, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %18, align 4
  %55 = sub nsw i32 %53, %54
  %56 = call i32 @FFABS(i32 %55)
  store i32 %56, i32* %26, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %19, align 4
  %59 = sub nsw i32 %57, %58
  %60 = call i32 @FFABS(i32 %59)
  store i32 %60, i32* %27, align 4
  %61 = load i32, i32* %20, align 4
  %62 = load i32, i32* %21, align 4
  %63 = call i32 @FFMIN(i32 %61, i32 %62)
  %64 = load i32, i32* %22, align 4
  %65 = load i32, i32* %23, align 4
  %66 = call i32 @FFMIN(i32 %64, i32 %65)
  %67 = call i32 @FFMIN(i32 %63, i32 %66)
  %68 = load i32, i32* %24, align 4
  %69 = load i32, i32* %25, align 4
  %70 = call i32 @FFMIN(i32 %68, i32 %69)
  %71 = load i32, i32* %26, align 4
  %72 = load i32, i32* %27, align 4
  %73 = call i32 @FFMIN(i32 %71, i32 %72)
  %74 = call i32 @FFMIN(i32 %70, i32 %73)
  %75 = call i32 @FFMIN(i32 %67, i32 %74)
  store i32 %75, i32* %28, align 4
  %76 = load i32, i32* %28, align 4
  %77 = load i32, i32* %26, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %9
  %80 = load i32, i32* %18, align 4
  store i32 %80, i32* %10, align 4
  br label %119

81:                                               ; preds = %9
  %82 = load i32, i32* %28, align 4
  %83 = load i32, i32* %27, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* %19, align 4
  store i32 %86, i32* %10, align 4
  br label %119

87:                                               ; preds = %81
  %88 = load i32, i32* %28, align 4
  %89 = load i32, i32* %25, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* %17, align 4
  store i32 %92, i32* %10, align 4
  br label %119

93:                                               ; preds = %87
  %94 = load i32, i32* %28, align 4
  %95 = load i32, i32* %21, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %10, align 4
  br label %119

99:                                               ; preds = %93
  %100 = load i32, i32* %28, align 4
  %101 = load i32, i32* %22, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %10, align 4
  br label %119

105:                                              ; preds = %99
  %106 = load i32, i32* %28, align 4
  %107 = load i32, i32* %20, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %10, align 4
  br label %119

111:                                              ; preds = %105
  %112 = load i32, i32* %28, align 4
  %113 = load i32, i32* %24, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %10, align 4
  br label %119

117:                                              ; preds = %111
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %117, %115, %109, %103, %97, %91, %85, %79
  %120 = load i32, i32* %10, align 4
  ret i32 %120
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
