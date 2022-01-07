; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/cmd/compression/extr_ccv_nnc_compression.c__ccv_nnc_lssc_forw_bitmask.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/cmd/compression/extr_ccv_nnc_compression.c__ccv_nnc_lssc_forw_bitmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32, i32*, i32)* @_ccv_nnc_lssc_forw_bitmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ccv_nnc_lssc_forw_bitmask(i32 %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %75, %6
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %20
  store i32 0, i32* %15, align 4
  br label %25

25:                                               ; preds = %45, %24
  %26 = load i32, i32* %15, align 4
  %27 = icmp slt i32 %26, 64
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %15, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %152

42:                                               ; preds = %38
  br label %44

43:                                               ; preds = %28
  br label %48

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %15, align 4
  br label %25

48:                                               ; preds = %43, %25
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %17, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %52, 64
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* %16, align 4
  br label %55

55:                                               ; preds = %54, %48
  br label %56

56:                                               ; preds = %71, %55
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %57, 64
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %15, align 4
  %66 = shl i32 1, %65
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %152

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %15, align 4
  br label %56

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %20

78:                                               ; preds = %20
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %134, %78
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %137

83:                                               ; preds = %79
  store i32 0, i32* %15, align 4
  br label %84

84:                                               ; preds = %104, %83
  %85 = load i32, i32* %15, align 4
  %86 = icmp slt i32 %85, 64
  br i1 %86, label %87, label %107

87:                                               ; preds = %84
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %15, align 4
  %94 = shl i32 1, %93
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %87
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 0, i32* %7, align 4
  br label %152

101:                                              ; preds = %97
  br label %103

102:                                              ; preds = %87
  br label %107

103:                                              ; preds = %101
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %15, align 4
  br label %84

107:                                              ; preds = %102, %84
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %19, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp slt i32 %111, 64
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 1, i32* %18, align 4
  br label %114

114:                                              ; preds = %113, %107
  br label %115

115:                                              ; preds = %130, %114
  %116 = load i32, i32* %15, align 4
  %117 = icmp slt i32 %116, 64
  br i1 %117, label %118, label %133

118:                                              ; preds = %115
  %119 = load i32*, i32** %12, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %15, align 4
  %125 = shl i32 1, %124
  %126 = and i32 %123, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  store i32 0, i32* %7, align 4
  br label %152

129:                                              ; preds = %118
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %15, align 4
  br label %115

133:                                              ; preds = %115
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %14, align 4
  br label %79

137:                                              ; preds = %79
  %138 = load i32, i32* %19, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %17, align 4
  %148 = icmp eq i32 %146, %147
  br label %149

149:                                              ; preds = %145, %141, %137
  %150 = phi i1 [ false, %141 ], [ false, %137 ], [ %148, %145 ]
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %149, %128, %100, %69, %41
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
