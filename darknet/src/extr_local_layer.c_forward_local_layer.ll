; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_local_layer.c_forward_local_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_local_layer.c_forward_local_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, float*, i32, i32, i32, i32, float*, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { float*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forward_local_layer(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0, float* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = bitcast %struct.TYPE_7__* %4 to { float*, i32 }*
  %19 = getelementptr inbounds { float*, i32 }, { float*, i32 }* %18, i32 0, i32 0
  store float* %1, float** %19, align 8
  %20 = getelementptr inbounds { float*, i32 }, { float*, i32 }* %18, i32 0, i32 1
  store i32 %2, i32* %20, align 8
  %21 = call i32 @local_out_height(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0)
  store i32 %21, i32* %5, align 4
  %22 = call i32 @local_out_width(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %45, %3
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 12
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %37 = load float*, float** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %38, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %37, i64 %42
  %44 = call i32 @copy_cpu(i32 %33, i32 %35, i32 1, float* %43, i32 1)
  br label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %26

48:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %149, %48
  %50 = load i32, i32* %7, align 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %152

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %56 = load float*, float** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %57, %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %60, %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %63, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %56, i64 %67
  store float* %68, float** %10, align 8
  %69 = load float*, float** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 11
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 10
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @im2col_cpu(float* %69, i32 %71, i32 %73, i32 %75, i32 %77, i32 %79, i32 %81, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %86 = load float*, float** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %87, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %86, i64 %91
  store float* %92, float** %11, align 8
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %145, %54
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %148

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 7
  %99 = load float*, float** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %100, %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %103, %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %106, %108
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 8
  %111 = load i32, i32* %110, align 8
  %112 = mul nsw i32 %109, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %99, i64 %113
  store float* %114, float** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to float*
  store float* %120, float** %13, align 8
  %121 = load float*, float** %11, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %121, i64 %123
  store float* %124, float** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 8
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %128, %130
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = mul nsw i32 %131, %133
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %17, align 4
  %138 = load float*, float** %12, align 8
  %139 = load i32, i32* %17, align 4
  %140 = load float*, float** %13, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load float*, float** %14, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @gemm(i32 0, i32 0, i32 %135, i32 %136, i32 %137, i32 1, float* %138, i32 %139, float* %140, i32 %141, i32 1, float* %142, i32 %143)
  br label %145

145:                                              ; preds = %97
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %93

148:                                              ; preds = %93
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %49

152:                                              ; preds = %49
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %154 = load float*, float** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = mul nsw i32 %156, %158
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 9
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @activate_array(float* %154, i32 %159, i32 %161)
  ret void
}

declare dso_local i32 @local_out_height(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i32 @local_out_width(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i32 @copy_cpu(i32, i32, i32, float*, i32) #1

declare dso_local i32 @im2col_cpu(float*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gemm(i32, i32, i32, i32, i32, i32, float*, i32, float*, i32, i32, float*, i32) #1

declare dso_local i32 @activate_array(float*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
