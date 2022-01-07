; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decomb.c_cubic_interpolate_line.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decomb.c_cubic_interpolate_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32)* @cubic_interpolate_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cubic_interpolate_line(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %145, %6
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %148

24:                                               ; preds = %20
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp sge i32 %25, 3
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %11, align 4
  %30 = mul nsw i32 -3, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 0, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %16, align 4
  br label %75

40:                                               ; preds = %24
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %59

46:                                               ; preds = %43, %40
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 0, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %15, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 0, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %16, align 4
  br label %74

59:                                               ; preds = %43
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %15, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %16, align 4
  br label %73

73:                                               ; preds = %62, %59
  br label %74

74:                                               ; preds = %73, %46
  br label %75

75:                                               ; preds = %74, %27
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %77, 4
  %79 = icmp sle i32 %76, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %17, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %11, align 4
  %88 = mul nsw i32 3, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %18, align 4
  br label %133

92:                                               ; preds = %75
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %10, align 4
  %95 = sub nsw i32 %94, 3
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %10, align 4
  %100 = sub nsw i32 %99, 2
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %97, %92
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %17, align 4
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %18, align 4
  br label %132

113:                                              ; preds = %97
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %115, 1
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %113
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sub nsw i32 0, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %17, align 4
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sub nsw i32 0, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %18, align 4
  br label %131

131:                                              ; preds = %118, %113
  br label %132

132:                                              ; preds = %131, %102
  br label %133

133:                                              ; preds = %132, %80
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %18, align 4
  %138 = call i32 @cubic_interpolate_pixel(i32 %134, i32 %135, i32 %136, i32 %137)
  %139 = load i32*, i32** %7, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  store i32 %138, i32* %140, align 4
  %141 = load i32*, i32** %7, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %7, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %8, align 8
  br label %145

145:                                              ; preds = %133
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %14, align 4
  br label %20

148:                                              ; preds = %20
  ret void
}

declare dso_local i32 @cubic_interpolate_pixel(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
