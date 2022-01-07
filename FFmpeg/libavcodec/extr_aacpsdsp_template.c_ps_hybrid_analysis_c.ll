; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacpsdsp_template.c_ps_hybrid_analysis_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacpsdsp_template.c_ps_hybrid_analysis_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([2 x i32]*, [2 x i32]*, [8 x [2 x i32]]*, i32, i32)* @ps_hybrid_analysis_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_hybrid_analysis_c([2 x i32]* %0, [2 x i32]* %1, [8 x [2 x i32]]* %2, i32 %3, i32 %4) #0 {
  %6 = alloca [2 x i32]*, align 8
  %7 = alloca [2 x i32]*, align 8
  %8 = alloca [8 x [2 x i32]]*, align 8
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
  store [2 x i32]* %0, [2 x i32]** %6, align 8
  store [2 x i32]* %1, [2 x i32]** %7, align 8
  store [8 x [2 x i32]]* %2, [8 x [2 x i32]]** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %156, %5
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %159

23:                                               ; preds = %19
  %24 = load [8 x [2 x i32]]*, [8 x [2 x i32]]** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %24, i64 %26
  %28 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %27, i64 0, i64 6
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load [2 x i32]*, [2 x i32]** %7, align 8
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 6
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %30, %34
  store i32 %35, i32* %13, align 4
  %36 = load [8 x [2 x i32]]*, [8 x [2 x i32]]** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %36, i64 %38
  %40 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %39, i64 0, i64 6
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %40, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load [2 x i32]*, [2 x i32]** %7, align 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %43, i64 6
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %44, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %42, %46
  store i32 %47, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %136, %23
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 6
  br i1 %50, label %51, label %139

51:                                               ; preds = %48
  %52 = load [2 x i32]*, [2 x i32]** %7, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %52, i64 %54
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %55, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %15, align 4
  %58 = load [2 x i32]*, [2 x i32]** %7, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %58, i64 %60
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %61, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %16, align 4
  %64 = load [2 x i32]*, [2 x i32]** %7, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sub nsw i32 12, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %64, i64 %67
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %68, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %17, align 4
  %71 = load [2 x i32]*, [2 x i32]** %7, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sub nsw i32 12, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %71, i64 %74
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %75, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %18, align 4
  %78 = load [8 x [2 x i32]]*, [8 x [2 x i32]]** %8, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %78, i64 %80
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %81, i64 0, i64 %83
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %84, i64 0, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %87, %88
  %90 = mul nsw i32 %86, %89
  %91 = load [8 x [2 x i32]]*, [8 x [2 x i32]]** %8, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %91, i64 %93
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %94, i64 0, i64 %96
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %97, i64 0, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %18, align 4
  %102 = sub nsw i32 %100, %101
  %103 = mul nsw i32 %99, %102
  %104 = sub nsw i32 %90, %103
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %13, align 4
  %107 = load [8 x [2 x i32]]*, [8 x [2 x i32]]** %8, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %107, i64 %109
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %110, i64 0, i64 %112
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %113, i64 0, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %116, %117
  %119 = mul nsw i32 %115, %118
  %120 = load [8 x [2 x i32]]*, [8 x [2 x i32]]** %8, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %120, i64 %122
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %123, i64 0, i64 %125
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %126, i64 0, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %17, align 4
  %131 = sub nsw i32 %129, %130
  %132 = mul nsw i32 %128, %131
  %133 = add nsw i32 %119, %132
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %51
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  br label %48

139:                                              ; preds = %48
  %140 = load i32, i32* %13, align 4
  %141 = load [2 x i32]*, [2 x i32]** %6, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %9, align 4
  %144 = mul nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %141, i64 %145
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %146, i64 0, i64 0
  store i32 %140, i32* %147, align 4
  %148 = load i32, i32* %14, align 4
  %149 = load [2 x i32]*, [2 x i32]** %6, align 8
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %9, align 4
  %152 = mul nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %149, i64 %153
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %154, i64 0, i64 1
  store i32 %148, i32* %155, align 4
  br label %156

156:                                              ; preds = %139
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %19

159:                                              ; preds = %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
