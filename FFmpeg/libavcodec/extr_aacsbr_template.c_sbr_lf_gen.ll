; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_sbr_lf_gen.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_sbr_lf_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, [40 x [2 x i32]]*, [32 x [32 x [2 x i32]]]*, i32)* @sbr_lf_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbr_lf_gen(i32* %0, %struct.TYPE_3__* %1, [40 x [2 x i32]]* %2, [32 x [32 x [2 x i32]]]* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca [40 x [2 x i32]]*, align 8
  %9 = alloca [32 x [32 x [2 x i32]]]*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store [40 x [2 x i32]]* %2, [40 x [2 x i32]]** %8, align 8
  store [32 x [32 x [2 x i32]]]* %3, [32 x [32 x [2 x i32]]]** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 8, i32* %13, align 4
  store i32 32, i32* %14, align 4
  %15 = load [40 x [2 x i32]]*, [40 x [2 x i32]]** %8, align 8
  %16 = bitcast [40 x [2 x i32]]* %15 to i32***
  %17 = call i32 @memset(i32*** %16, i32 0, i32 10240)
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %77, %5
  %19 = load i32, i32* %12, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %80

26:                                               ; preds = %18
  store i32 8, i32* %11, align 4
  br label %27

27:                                               ; preds = %73, %26
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 40
  br i1 %29, label %30, label %76

30:                                               ; preds = %27
  %31 = load [32 x [32 x [2 x i32]]]*, [32 x [32 x [2 x i32]]]** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [32 x [32 x [2 x i32]]], [32 x [32 x [2 x i32]]]* %31, i64 %33
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 %35, 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [32 x [32 x [2 x i32]]], [32 x [32 x [2 x i32]]]* %34, i64 0, i64 %37
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %38, i64 0, i64 %40
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %41, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load [40 x [2 x i32]]*, [40 x [2 x i32]]** %8, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %44, i64 %46
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %47, i64 0, i64 %49
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %50, i64 0, i64 0
  store i32 %43, i32* %51, align 4
  %52 = load [32 x [32 x [2 x i32]]]*, [32 x [32 x [2 x i32]]]** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [32 x [32 x [2 x i32]]], [32 x [32 x [2 x i32]]]* %52, i64 %54
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 %56, 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [32 x [32 x [2 x i32]]], [32 x [32 x [2 x i32]]]* %55, i64 0, i64 %58
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %59, i64 0, i64 %61
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %62, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load [40 x [2 x i32]]*, [40 x [2 x i32]]** %8, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %65, i64 %67
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %68, i64 0, i64 %70
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %71, i64 0, i64 1
  store i32 %64, i32* %72, align 4
  br label %73

73:                                               ; preds = %30
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %27

76:                                               ; preds = %27
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %18

80:                                               ; preds = %18
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 1, %81
  store i32 %82, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %144, %80
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %84, %89
  br i1 %90, label %91, label %147

91:                                               ; preds = %83
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %140, %91
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %93, 8
  br i1 %94, label %95, label %143

95:                                               ; preds = %92
  %96 = load [32 x [32 x [2 x i32]]]*, [32 x [32 x [2 x i32]]]** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [32 x [32 x [2 x i32]]], [32 x [32 x [2 x i32]]]* %96, i64 %98
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 32
  %102 = sub nsw i32 %101, 8
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [32 x [32 x [2 x i32]]], [32 x [32 x [2 x i32]]]* %99, i64 0, i64 %103
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %104, i64 0, i64 %106
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %107, i64 0, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load [40 x [2 x i32]]*, [40 x [2 x i32]]** %8, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %110, i64 %112
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %113, i64 0, i64 %115
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %116, i64 0, i64 0
  store i32 %109, i32* %117, align 4
  %118 = load [32 x [32 x [2 x i32]]]*, [32 x [32 x [2 x i32]]]** %9, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [32 x [32 x [2 x i32]]], [32 x [32 x [2 x i32]]]* %118, i64 %120
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 32
  %124 = sub nsw i32 %123, 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [32 x [32 x [2 x i32]]], [32 x [32 x [2 x i32]]]* %121, i64 0, i64 %125
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %126, i64 0, i64 %128
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %129, i64 0, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = load [40 x [2 x i32]]*, [40 x [2 x i32]]** %8, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %132, i64 %134
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %135, i64 0, i64 %137
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %138, i64 0, i64 1
  store i32 %131, i32* %139, align 4
  br label %140

140:                                              ; preds = %95
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  br label %92

143:                                              ; preds = %92
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  br label %83

147:                                              ; preds = %83
  ret i32 0
}

declare dso_local i32 @memset(i32***, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
