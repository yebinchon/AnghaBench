; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_texturedspenc.c_compress_alpha.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_texturedspenc.c_compress_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @compress_alpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compress_alpha(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @memset(i32* %21, i32 0, i32 8)
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  store i32 %25, i32* %13, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %62, %3
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %65

29:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %58, %29
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %61

33:                                               ; preds = %30
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %35, 4
  %37 = add nsw i32 3, %36
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %38, %39
  %41 = add nsw i32 %37, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %34, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i32, i32* %17, align 4
  store i32 %49, i32* %13, align 4
  br label %57

50:                                               ; preds = %33
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %17, align 4
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %54, %50
  br label %57

57:                                               ; preds = %56, %48
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %30

61:                                               ; preds = %30
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %26

65:                                               ; preds = %26
  %66 = load i32, i32* %14, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 %69, i32* %71, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32* %73, i32** %4, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %189

78:                                               ; preds = %65
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %13, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = mul nsw i32 %82, 4
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %9, align 4
  %85 = mul nsw i32 %84, 2
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 8
  br i1 %87, label %88, label %94

88:                                               ; preds = %78
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 %89, 1
  %91 = load i32, i32* %13, align 4
  %92 = mul nsw i32 %91, 7
  %93 = sub nsw i32 %90, %92
  store i32 %93, i32* %10, align 4
  br label %101

94:                                               ; preds = %78
  %95 = load i32, i32* %9, align 4
  %96 = sdiv i32 %95, 2
  %97 = add nsw i32 %96, 2
  %98 = load i32, i32* %13, align 4
  %99 = mul nsw i32 %98, 7
  %100 = sub nsw i32 %97, %99
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %94, %88
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %186, %101
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 4
  br i1 %104, label %105, label %189

105:                                              ; preds = %102
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %182, %105
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %107, 4
  br i1 %108, label %109, label %185

109:                                              ; preds = %106
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = mul nsw i32 %111, 4
  %113 = add nsw i32 3, %112
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %5, align 4
  %116 = mul nsw i32 %114, %115
  %117 = add nsw i32 %113, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %110, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %120, 7
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %121, %122
  store i32 %123, i32* %18, align 4
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp sge i32 %124, %125
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 -1, i32 0
  store i32 %128, i32* %20, align 4
  %129 = load i32, i32* %20, align 4
  %130 = and i32 %129, 4
  store i32 %130, i32* %19, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %20, align 4
  %133 = and i32 %131, %132
  %134 = load i32, i32* %18, align 4
  %135 = sub nsw i32 %134, %133
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp sge i32 %136, %137
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 -1, i32 0
  store i32 %140, i32* %20, align 4
  %141 = load i32, i32* %20, align 4
  %142 = and i32 %141, 2
  %143 = load i32, i32* %19, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %19, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %20, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* %18, align 4
  %149 = sub nsw i32 %148, %147
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp sge i32 %150, %151
  %153 = zext i1 %152 to i32
  %154 = load i32, i32* %19, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %19, align 4
  %156 = load i32, i32* %19, align 4
  %157 = sub nsw i32 0, %156
  %158 = and i32 %157, 7
  store i32 %158, i32* %19, align 4
  %159 = load i32, i32* %19, align 4
  %160 = icmp sgt i32 2, %159
  %161 = zext i1 %160 to i32
  %162 = load i32, i32* %19, align 4
  %163 = xor i32 %162, %161
  store i32 %163, i32* %19, align 4
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %15, align 4
  %166 = shl i32 %164, %165
  %167 = load i32, i32* %16, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %15, align 4
  %170 = add nsw i32 %169, 3
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %15, align 4
  %172 = icmp sge i32 %171, 8
  br i1 %172, label %173, label %181

173:                                              ; preds = %109
  %174 = load i32, i32* %16, align 4
  %175 = load i32*, i32** %4, align 8
  %176 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %176, i32** %4, align 8
  store i32 %174, i32* %175, align 4
  %177 = load i32, i32* %16, align 4
  %178 = ashr i32 %177, 8
  store i32 %178, i32* %16, align 4
  %179 = load i32, i32* %15, align 4
  %180 = sub nsw i32 %179, 8
  store i32 %180, i32* %15, align 4
  br label %181

181:                                              ; preds = %173, %109
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %106

185:                                              ; preds = %106
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  br label %102

189:                                              ; preds = %77, %102
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
