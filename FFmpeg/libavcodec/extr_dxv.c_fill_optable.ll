; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_fill_optable.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_fill_optable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32)* @fill_optable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_optable(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [256 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = bitcast [256 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 1024, i1 false)
  store i32 0, i32* %9, align 4
  store i32 2, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  store i32 %18, i32* %19, align 16
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %37, %3
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %12, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add i32 %31, %35
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %42
  store i32 %40, i32* %43, align 4
  br label %20

44:                                               ; preds = %20
  %45 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %46 = load i32, i32* %45, align 16
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %52, %48
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %49, label %59

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %44
  store i32 2, i32* %13, align 4
  store i32 1024, i32* %12, align 4
  br label %61

61:                                               ; preds = %93, %60
  %62 = load i32, i32* %12, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %96

64:                                               ; preds = %61
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 %65, i32* %70, align 4
  br label %71

71:                                               ; preds = %84, %64
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %72, 256
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ugt i32 %75, %79
  br label %81

81:                                               ; preds = %74, %71
  %82 = phi i1 [ false, %71 ], [ %80, %74 ]
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %71

87:                                               ; preds = %81
  %88 = load i32, i32* %9, align 4
  %89 = sub i32 %88, 383
  %90 = and i32 %89, 1023
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %12, align 4
  br label %61

96:                                               ; preds = %61
  %97 = load i32, i32* %7, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = mul nsw i32 4, %102
  %104 = call i32 @memcpy(i32* %100, i32* %101, i32 %103)
  br label %105

105:                                              ; preds = %99, %96
  store i32 0, i32* %12, align 4
  br label %106

106:                                              ; preds = %154, %105
  %107 = load i32, i32* %12, align 4
  %108 = icmp slt i32 %107, 1024
  br i1 %108, label %109, label %157

109:                                              ; preds = %106
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @ff_clz(i32 %125)
  %127 = sub nsw i32 31, %126
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ugt i32 %128, 10
  br i1 %129, label %130, label %132

130:                                              ; preds = %109
  %131 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %131, i32* %4, align 4
  br label %158

132:                                              ; preds = %109
  %133 = load i32, i32* %9, align 4
  %134 = sub i32 10, %133
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  store i32 %134, i32* %139, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %140, %146
  %148 = sub nsw i32 %147, 1024
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  store i32 %148, i32* %153, align 4
  br label %154

154:                                              ; preds = %132
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %106

157:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %157, %130
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @ff_clz(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
