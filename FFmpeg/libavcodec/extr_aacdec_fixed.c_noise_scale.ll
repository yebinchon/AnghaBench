; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_fixed.c_noise_scale.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_fixed.c_noise_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exp2tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @noise_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @noise_scale(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32*, i32** @exp2tab, align 8
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, 3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sge i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @av_assert0(i32 %25)
  br label %27

27:                                               ; preds = %30, %4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 32767
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %14, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %14, align 4
  br label %27

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %13, align 4
  %38 = sdiv i32 %37, %36
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 21, %39
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %41, 2
  %43 = sub nsw i32 %40, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %44, 31
  br i1 %45, label %46, label %60

46:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %56, %46
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %47

59:                                               ; preds = %47
  br label %163

60:                                               ; preds = %35
  %61 = load i32, i32* %9, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %100

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %67, 1
  %69 = shl i32 1, %68
  br label %71

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %66
  %72 = phi i32 [ %69, %66 ], [ 0, %70 ]
  store i32 %72, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %96, %71
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %99

77:                                               ; preds = %73
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %13, align 4
  %84 = mul nsw i32 %82, %83
  %85 = ashr i32 %84, 32
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add i32 %86, %87
  %89 = load i32, i32* %9, align 4
  %90 = ashr i32 %88, %89
  %91 = sub nsw i32 0, %90
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %77
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %73

99:                                               ; preds = %73
  br label %162

100:                                              ; preds = %60
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 32
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %135

105:                                              ; preds = %100
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 %106, 1
  %108 = shl i32 1, %107
  store i32 %108, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %131, %105
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %134

113:                                              ; preds = %109
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %13, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load i32, i32* %10, align 4
  %122 = add i32 %120, %121
  %123 = load i32, i32* %9, align 4
  %124 = ashr i32 %122, %123
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = sub nsw i32 0, %125
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %126, i32* %130, align 4
  br label %131

131:                                              ; preds = %113
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  br label %109

134:                                              ; preds = %109
  br label %161

135:                                              ; preds = %100
  store i32 0, i32* %11, align 4
  br label %136

136:                                              ; preds = %157, %135
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %160

140:                                              ; preds = %136
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 0, %145
  %147 = load i32, i32* %13, align 4
  %148 = mul nsw i32 %146, %147
  %149 = load i32, i32* %9, align 4
  %150 = sub nsw i32 0, %149
  %151 = shl i32 1, %150
  %152 = mul nsw i32 %148, %151
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %152, i32* %156, align 4
  br label %157

157:                                              ; preds = %140
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %136

160:                                              ; preds = %136
  br label %161

161:                                              ; preds = %160, %134
  br label %162

162:                                              ; preds = %161, %99
  br label %163

163:                                              ; preds = %162, %59
  ret void
}

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
