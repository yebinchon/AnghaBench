; ModuleID = '/home/carl/AnghaBench/FFmpeg/libpostproc/extr_postprocess.c_horizX1Filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libpostproc/extr_postprocess.c_horizX1Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@horizX1Filter.lut = internal global [256 x i32] zeroinitializer, align 16
@BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @horizX1Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @horizX1Filter(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %23 = load i32, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @horizX1Filter.lut, i64 0, i64 255), align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %97, label %25

25:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %93, %25
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %29, label %96

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 128
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = mul nsw i32 2, %33
  br label %39

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %36, 256
  %38 = mul nsw i32 2, %37
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i32 [ %34, %32 ], [ %38, %35 ]
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sdiv i32 %41, 16
  %43 = and i32 %42, 255
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = mul nsw i32 %44, 3
  %46 = sdiv i32 %45, 16
  %47 = and i32 %46, 255
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = mul nsw i32 %48, 5
  %50 = sdiv i32 %49, 16
  %51 = and i32 %50, 255
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 7, %52
  %54 = sdiv i32 %53, 16
  %55 = and i32 %54, 255
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 256, %56
  %58 = and i32 %57, 255
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 256, %59
  %61 = and i32 %60, 255
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 256, %62
  %64 = and i32 %63, 255
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sub nsw i32 256, %65
  %67 = and i32 %66, 255
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %10, align 4
  %69 = shl i32 %68, 56
  %70 = load i32, i32* %11, align 4
  %71 = shl i32 %70, 48
  %72 = or i32 %69, %71
  %73 = load i32, i32* %12, align 4
  %74 = shl i32 %73, 40
  %75 = or i32 %72, %74
  %76 = load i32, i32* %13, align 4
  %77 = shl i32 %76, 32
  %78 = or i32 %75, %77
  %79 = load i32, i32* %17, align 4
  %80 = shl i32 %79, 24
  %81 = or i32 %78, %80
  %82 = load i32, i32* %16, align 4
  %83 = shl i32 %82, 16
  %84 = or i32 %81, %83
  %85 = load i32, i32* %15, align 4
  %86 = shl i32 %85, 8
  %87 = or i32 %84, %86
  %88 = load i32, i32* %14, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [256 x i32], [256 x i32]* @horizX1Filter.lut, i64 0, i64 %91
  store i32 %89, i32* %92, align 4
  br label %93

93:                                               ; preds = %39
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %26

96:                                               ; preds = %26
  br label %97

97:                                               ; preds = %96, %3
  store i32 0, i32* %7, align 4
  br label %98

98:                                               ; preds = %186, %97
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @BLOCK_SIZE, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %189

102:                                              ; preds = %98
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %105, %108
  store i32 %109, i32* %18, align 4
  %110 = load i32*, i32** %4, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %4, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %112, %115
  store i32 %116, i32* %19, align 4
  %117 = load i32*, i32** %4, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 5
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %4, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 6
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %119, %122
  store i32 %123, i32* %20, align 4
  %124 = load i32, i32* %19, align 4
  %125 = call i32 @FFABS(i32 %124)
  %126 = load i32, i32* %18, align 4
  %127 = call i32 @FFABS(i32 %126)
  %128 = load i32, i32* %20, align 4
  %129 = call i32 @FFABS(i32 %128)
  %130 = add nsw i32 %127, %129
  %131 = sdiv i32 %130, 2
  %132 = sub nsw i32 %125, %131
  %133 = call i32 @FFMAX(i32 %132, i32 0)
  store i32 %133, i32* %21, align 4
  %134 = load i32, i32* %21, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %181

137:                                              ; preds = %102
  %138 = load i32, i32* %21, align 4
  %139 = load i32, i32* %19, align 4
  %140 = sub nsw i32 0, %139
  %141 = call i32 @FFSIGN(i32 %140)
  %142 = mul nsw i32 %138, %141
  store i32 %142, i32* %22, align 4
  %143 = load i32, i32* %22, align 4
  %144 = sdiv i32 %143, 8
  %145 = load i32*, i32** %4, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load i32, i32* %22, align 4
  %150 = sdiv i32 %149, 4
  %151 = load i32*, i32** %4, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* %22, align 4
  %156 = mul nsw i32 3, %155
  %157 = sdiv i32 %156, 8
  %158 = load i32*, i32** %4, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 3
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* %22, align 4
  %163 = mul nsw i32 3, %162
  %164 = sdiv i32 %163, 8
  %165 = load i32*, i32** %4, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 4
  %167 = load i32, i32* %166, align 4
  %168 = sub nsw i32 %167, %164
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* %22, align 4
  %170 = sdiv i32 %169, 4
  %171 = load i32*, i32** %4, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 5
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* %22, align 4
  %176 = sdiv i32 %175, 8
  %177 = load i32*, i32** %4, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 6
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %179, %176
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %137, %102
  %182 = load i32, i32* %5, align 4
  %183 = load i32*, i32** %4, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32* %185, i32** %4, align 8
  br label %186

186:                                              ; preds = %181
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %98

189:                                              ; preds = %98
  ret void
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @FFSIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
