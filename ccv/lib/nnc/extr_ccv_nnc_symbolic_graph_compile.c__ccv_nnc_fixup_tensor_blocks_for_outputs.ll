; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c__ccv_nnc_fixup_tensor_blocks_for_outputs.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c__ccv_nnc_fixup_tensor_blocks_for_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_10__*, i32, %struct.TYPE_9__*, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_8__*, i32*, i32*)* @_ccv_nnc_fixup_tensor_blocks_for_outputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_fixup_tensor_blocks_for_outputs(i32* %0, i32* %1, %struct.TYPE_10__* %2, i32 %3, %struct.TYPE_9__* %4, i32 %5, i32 %6, %struct.TYPE_8__* %7, i32 %8, %struct.TYPE_8__* %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_8__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %15, align 8
  store i32 %3, i32* %16, align 4
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %20, align 8
  store i32 %8, i32* %21, align 4
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %22, align 8
  store i32* %10, i32** %23, align 8
  store i32* %11, i32** %24, align 8
  store i32 0, i32* %25, align 4
  br label %32

32:                                               ; preds = %144, %12
  %33 = load i32, i32* %25, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %147

38:                                               ; preds = %32
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %25, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %28, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %47 = load i32, i32* %28, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %19, align 4
  %53 = call i64 @ccv_array_get(i32 %51, i32 %52)
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %29, align 4
  %57 = load i32*, i32** %14, align 8
  %58 = load i32, i32* %29, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @TENSOR_EXPECT_COMPUTABLE(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %38
  br label %144

65:                                               ; preds = %38
  store i32 0, i32* %27, align 4
  br label %66

66:                                               ; preds = %84, %65
  %67 = load i32, i32* %27, align 4
  %68 = load i32, i32* %18, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %66
  %71 = load i32*, i32** %13, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %73 = load i32, i32* %27, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %14, align 8
  %79 = load i32, i32* %29, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @_ccv_nnc_tensor_block_add_exec(i32* %71, i32 %77, i32 %82)
  br label %84

84:                                               ; preds = %70
  %85 = load i32, i32* %27, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %27, align 4
  br label %66

87:                                               ; preds = %66
  store i32 0, i32* %26, align 4
  br label %88

88:                                               ; preds = %140, %87
  %89 = load i32, i32* %26, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %143

92:                                               ; preds = %88
  store i32 0, i32* %27, align 4
  br label %93

93:                                               ; preds = %136, %92
  %94 = load i32, i32* %27, align 4
  %95 = load i32, i32* %18, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %139

97:                                               ; preds = %93
  %98 = load i32*, i32** %23, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %100 = load i32, i32* %27, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %16, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32, i32* %26, align 4
  %108 = add nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %98, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %30, align 4
  %112 = load i32*, i32** %24, align 8
  %113 = load i32, i32* %29, align 4
  %114 = load i32, i32* %16, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* %26, align 4
  %117 = add nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %112, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %31, align 4
  %121 = load i32, i32* %30, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %97
  %124 = load i32, i32* %31, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load i32*, i32** %13, align 8
  %128 = load i32, i32* %30, align 4
  %129 = load i32*, i32** %14, align 8
  %130 = load i32, i32* %31, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @_ccv_nnc_tensor_block_add_exec(i32* %127, i32 %128, i32 %133)
  br label %135

135:                                              ; preds = %126, %123, %97
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %27, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %27, align 4
  br label %93

139:                                              ; preds = %93
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %26, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %26, align 4
  br label %88

143:                                              ; preds = %88
  br label %144

144:                                              ; preds = %143, %64
  %145 = load i32, i32* %25, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %25, align 4
  br label %32

147:                                              ; preds = %32
  ret void
}

declare dso_local i64 @ccv_array_get(i32, i32) #1

declare dso_local i32 @TENSOR_EXPECT_COMPUTABLE(i32) #1

declare dso_local i32 @_ccv_nnc_tensor_block_add_exec(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
