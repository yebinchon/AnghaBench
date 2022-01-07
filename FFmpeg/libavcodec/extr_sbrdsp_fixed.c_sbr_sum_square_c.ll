; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp_fixed.c_sbr_sum_square_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp_fixed.c_sbr_sum_square_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT64_MAX = common dso_local global i32 0, align 4
@INT32_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ([2 x i32]*, i32)* @sbr_sum_square_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbr_sum_square_c([2 x i32]* %0, i32 %1) #0 {
  %3 = alloca [2 x i32]*, align 8
  %4 = alloca i32, align 4
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
  store [2 x i32]* %0, [2 x i32]** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %157, %2
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %160

20:                                               ; preds = %16
  %21 = load [2 x i32]*, [2 x i32]** %3, align 8
  %22 = load i32, i32* %12, align 4
  %23 = add nsw i32 %22, 0
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 %24
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load [2 x i32]*, [2 x i32]** %3, align 8
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %29, 0
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 %31
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %27, %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load [2 x i32]*, [2 x i32]** %3, align 8
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 0
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %38, i64 %41
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %42, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load [2 x i32]*, [2 x i32]** %3, align 8
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 0
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %45, i64 %48
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %49, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %44, %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load [2 x i32]*, [2 x i32]** %3, align 8
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %55, i64 %58
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %59, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load [2 x i32]*, [2 x i32]** %3, align 8
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %62, i64 %65
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %66, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %61, %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load [2 x i32]*, [2 x i32]** %3, align 8
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %72, i64 %75
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %76, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load [2 x i32]*, [2 x i32]** %3, align 8
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %79, i64 %82
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %83, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %78, %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @UINT64_MAX, align 4
  %97 = load i32, i32* @INT32_MIN, align 4
  %98 = load i32, i32* @INT32_MIN, align 4
  %99 = mul nsw i32 %97, %98
  %100 = sub nsw i32 %96, %99
  %101 = icmp sgt i32 %95, %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %20
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 2
  %105 = load i32, i32* %4, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %156

107:                                              ; preds = %102, %20
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %8, align 4
  %110 = ashr i32 %109, %108
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %9, align 4
  %113 = ashr i32 %112, %111
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %10, align 4
  %116 = ashr i32 %115, %114
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %11, align 4
  %119 = ashr i32 %118, %117
  store i32 %119, i32* %11, align 4
  br label %120

120:                                              ; preds = %133, %107
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* %10, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* %11, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @UINT64_MAX, align 4
  %129 = load i32, i32* %6, align 4
  %130 = sub nsw i32 %128, %129
  %131 = ashr i32 %130, 2
  %132 = icmp sgt i32 %127, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %120
  %134 = load i32, i32* %8, align 4
  %135 = ashr i32 %134, 1
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %9, align 4
  %137 = ashr i32 %136, 1
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %10, align 4
  %139 = ashr i32 %138, 1
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %11, align 4
  %141 = ashr i32 %140, 1
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %6, align 4
  %143 = ashr i32 %142, 1
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %120

146:                                              ; preds = %120
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %151, %152
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %156

156:                                              ; preds = %146, %102
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, 2
  store i32 %159, i32* %12, align 4
  br label %16

160:                                              ; preds = %16
  %161 = load i32, i32* %13, align 4
  %162 = sub nsw i32 15, %161
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %6, align 4
  %164 = ashr i32 %163, 32
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %160
  store i32 33, i32* %13, align 4
  br label %168

168:                                              ; preds = %171, %167
  %169 = load i32, i32* %15, align 4
  %170 = icmp ult i32 %169, -2147483648
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load i32, i32* %15, align 4
  %173 = shl i32 %172, 1
  store i32 %173, i32* %15, align 4
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %13, align 4
  br label %168

176:                                              ; preds = %168
  br label %178

177:                                              ; preds = %160
  store i32 1, i32* %13, align 4
  br label %178

178:                                              ; preds = %177, %176
  %179 = load i32, i32* %13, align 4
  %180 = sub nsw i32 %179, 1
  %181 = zext i32 %180 to i64
  %182 = shl i64 1, %181
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %184, %185
  %187 = load i32, i32* %13, align 4
  %188 = ashr i32 %186, %187
  store i32 %188, i32* %15, align 4
  %189 = load i32, i32* %15, align 4
  %190 = lshr i32 %189, 1
  store i32 %190, i32* %15, align 4
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* %13, align 4
  %194 = sub nsw i32 %192, %193
  %195 = call i32 @av_int2sf(i32 %191, i32 %194)
  store i32 %195, i32* %5, align 4
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local i32 @av_int2sf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
