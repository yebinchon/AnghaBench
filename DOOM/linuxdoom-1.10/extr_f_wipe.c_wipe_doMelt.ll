; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_wipe.c_wipe_doMelt.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_wipe.c_wipe_doMelt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@y = common dso_local global i32* null, align 8
@wipe_scr_end = common dso_local global i64 0, align 8
@wipe_scr = common dso_local global i64 0, align 8
@wipe_scr_start = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wipe_doMelt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16*, align 8
  %12 = alloca i16*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %184, %3
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %185

20:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %181, %20
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %184

25:                                               ; preds = %21
  %26 = load i32*, i32** @y, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i32*, i32** @y, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  store i32 0, i32* %13, align 4
  br label %180

39:                                               ; preds = %25
  %40 = load i32*, i32** @y, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %179

47:                                               ; preds = %39
  %48 = load i32*, i32** @y, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %52, 16
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i32*, i32** @y, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  br label %62

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %54
  %63 = phi i32 [ %60, %54 ], [ 8, %61 ]
  store i32 %63, i32* %9, align 4
  %64 = load i32*, i32** @y, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %5, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %62
  %74 = load i32, i32* %5, align 4
  %75 = load i32*, i32** @y, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %74, %79
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %73, %62
  %82 = load i64, i64* @wipe_scr_end, align 8
  %83 = inttoptr i64 %82 to i16*
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %5, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32*, i32** @y, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %86, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i16, i16* %83, i64 %93
  store i16* %94, i16** %11, align 8
  %95 = load i64, i64* @wipe_scr, align 8
  %96 = inttoptr i64 %95 to i16*
  %97 = load i32*, i32** @y, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %4, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i16, i16* %96, i64 %106
  store i16* %107, i16** %12, align 8
  store i32 0, i32* %10, align 4
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %123, %81
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = load i16*, i16** %11, align 8
  %114 = getelementptr inbounds i16, i16* %113, i32 1
  store i16* %114, i16** %11, align 8
  %115 = load i16, i16* %113, align 2
  %116 = load i16*, i16** %12, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i16, i16* %116, i64 %118
  store i16 %115, i16* %119, align 2
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %112
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %8, align 4
  br label %109

126:                                              ; preds = %109
  %127 = load i32, i32* %9, align 4
  %128 = load i32*, i32** @y, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, %127
  store i32 %133, i32* %131, align 4
  %134 = load i64, i64* @wipe_scr_start, align 8
  %135 = inttoptr i64 %134 to i16*
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %5, align 4
  %138 = mul nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i16, i16* %135, i64 %139
  store i16* %140, i16** %11, align 8
  %141 = load i64, i64* @wipe_scr, align 8
  %142 = inttoptr i64 %141 to i16*
  %143 = load i32*, i32** @y, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %4, align 4
  %149 = mul nsw i32 %147, %148
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i16, i16* %142, i64 %152
  store i16* %153, i16** %12, align 8
  store i32 0, i32* %10, align 4
  %154 = load i32, i32* %5, align 4
  %155 = load i32*, i32** @y, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %154, %159
  store i32 %160, i32* %8, align 4
  br label %161

161:                                              ; preds = %175, %126
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %161
  %165 = load i16*, i16** %11, align 8
  %166 = getelementptr inbounds i16, i16* %165, i32 1
  store i16* %166, i16** %11, align 8
  %167 = load i16, i16* %165, align 2
  %168 = load i16*, i16** %12, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i16, i16* %168, i64 %170
  store i16 %167, i16* %171, align 2
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %10, align 4
  br label %175

175:                                              ; preds = %164
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %8, align 4
  br label %161

178:                                              ; preds = %161
  store i32 0, i32* %13, align 4
  br label %179

179:                                              ; preds = %178, %39
  br label %180

180:                                              ; preds = %179, %32
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %21

184:                                              ; preds = %21
  br label %16

185:                                              ; preds = %16
  %186 = load i32, i32* %13, align 4
  ret i32 %186
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
