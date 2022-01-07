; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_4xm.c_mcdc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_4xm.c_mcdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32, i32)* @mcdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcdc(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* %14, align 4
  %17 = mul i32 %16, 65537
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %159 [
    i32 0, label %19
    i32 1, label %50
    i32 2, label %77
    i32 3, label %111
  ]

19:                                               ; preds = %7
  store i32 0, i32* %15, align 4
  br label %20

20:                                               ; preds = %46, %19
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %20
  %25 = load i32, i32* %13, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = load i32, i32* %14, align 4
  %31 = add i32 %29, %30
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load i32, i32* %12, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %9, align 8
  br label %41

41:                                               ; preds = %36, %24
  %42 = load i32, i32* %12, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %8, align 8
  br label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %15, align 4
  br label %20

49:                                               ; preds = %20
  br label %161

50:                                               ; preds = %7
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %73, %50
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @LE_CENTRIC_MUL(i32* %56, i32* %57, i32 %58, i32 %59)
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load i32, i32* %12, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %9, align 8
  br label %68

68:                                               ; preds = %63, %55
  %69 = load i32, i32* %12, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %8, align 8
  br label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  br label %51

76:                                               ; preds = %51
  br label %161

77:                                               ; preds = %7
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %107, %77
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %78
  %83 = load i32*, i32** %8, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @LE_CENTRIC_MUL(i32* %83, i32* %84, i32 %85, i32 %86)
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @LE_CENTRIC_MUL(i32* %89, i32* %91, i32 %92, i32 %93)
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %82
  %98 = load i32, i32* %12, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %9, align 8
  br label %102

102:                                              ; preds = %97, %82
  %103 = load i32, i32* %12, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %8, align 8
  br label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %78

110:                                              ; preds = %78
  br label %161

111:                                              ; preds = %7
  store i32 0, i32* %15, align 4
  br label %112

112:                                              ; preds = %155, %111
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %158

116:                                              ; preds = %112
  %117 = load i32*, i32** %8, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @LE_CENTRIC_MUL(i32* %117, i32* %118, i32 %119, i32 %120)
  %122 = load i32*, i32** %8, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = load i32*, i32** %9, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @LE_CENTRIC_MUL(i32* %123, i32* %125, i32 %126, i32 %127)
  %129 = load i32*, i32** %8, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 4
  %131 = load i32*, i32** %9, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 4
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @LE_CENTRIC_MUL(i32* %130, i32* %132, i32 %133, i32 %134)
  %136 = load i32*, i32** %8, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 6
  %138 = load i32*, i32** %9, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 6
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %14, align 4
  %142 = call i32 @LE_CENTRIC_MUL(i32* %137, i32* %139, i32 %140, i32 %141)
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %116
  %146 = load i32, i32* %12, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32* %149, i32** %9, align 8
  br label %150

150:                                              ; preds = %145, %116
  %151 = load i32, i32* %12, align 4
  %152 = load i32*, i32** %8, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32* %154, i32** %8, align 8
  br label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  br label %112

158:                                              ; preds = %112
  br label %161

159:                                              ; preds = %7
  %160 = call i32 @av_assert0(i32 0)
  br label %161

161:                                              ; preds = %159, %158, %110, %76, %49
  ret void
}

declare dso_local i32 @LE_CENTRIC_MUL(i32*, i32*, i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
