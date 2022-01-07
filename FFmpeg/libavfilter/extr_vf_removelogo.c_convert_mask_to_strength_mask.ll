; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removelogo.c_convert_mask_to_strength_mask.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_removelogo.c_convert_mask_to_strength_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32*)* @convert_mask_to_strength_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_mask_to_strength_mask(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %19

19:                                               ; preds = %53, %6
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %49, %23
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %8, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %29, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp sgt i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %41, i64 %47
  store i32 %40, i32* %48, align 4
  br label %49

49:                                               ; preds = %28
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %24

52:                                               ; preds = %24
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %19

56:                                               ; preds = %19
  br label %57

57:                                               ; preds = %56, %133
  store i32 0, i32* %16, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32* %62, i32** %17, align 8
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %15, align 4
  store i32 1, i32* %14, align 4
  br label %65

65:                                               ; preds = %126, %57
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %67, 1
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %129

70:                                               ; preds = %65
  %71 = load i32*, i32** %17, align 8
  store i32* %71, i32** %18, align 8
  store i32 1, i32* %13, align 4
  br label %72

72:                                               ; preds = %118, %70
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %74, 1
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %121

77:                                               ; preds = %72
  %78 = load i32*, i32** %18, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %115

82:                                               ; preds = %77
  %83 = load i32*, i32** %18, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %115

88:                                               ; preds = %82
  %89 = load i32*, i32** %18, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 -1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %115

94:                                               ; preds = %88
  %95 = load i32*, i32** %18, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %94
  %103 = load i32*, i32** %18, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = sub i64 0, %105
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %102
  %112 = load i32*, i32** %18, align 8
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  store i32 1, i32* %16, align 4
  br label %115

115:                                              ; preds = %111, %102, %94, %88, %82, %77
  %116 = load i32*, i32** %18, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %18, align 8
  br label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  br label %72

121:                                              ; preds = %72
  %122 = load i32, i32* %8, align 4
  %123 = load i32*, i32** %17, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %17, align 8
  br label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %65

129:                                              ; preds = %65
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  br label %134

133:                                              ; preds = %129
  br label %57

134:                                              ; preds = %132
  store i32 1, i32* %14, align 4
  br label %135

135:                                              ; preds = %169, %134
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %10, align 4
  %138 = sub nsw i32 %137, 1
  %139 = icmp slt i32 %136, %138
  br i1 %139, label %140, label %172

140:                                              ; preds = %135
  store i32 1, i32* %13, align 4
  br label %141

141:                                              ; preds = %165, %140
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %9, align 4
  %144 = sub nsw i32 %143, 1
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %168

146:                                              ; preds = %141
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %8, align 4
  %150 = mul nsw i32 %148, %149
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %147, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @apply_mask_fudge_factor(i32 %155)
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %8, align 4
  %160 = mul nsw i32 %158, %159
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %157, i64 %163
  store i32 %156, i32* %164, align 4
  br label %165

165:                                              ; preds = %146
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %13, align 4
  br label %141

168:                                              ; preds = %141
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  br label %135

172:                                              ; preds = %135
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, 1
  %175 = call i32 @apply_mask_fudge_factor(i32 %174)
  %176 = load i32*, i32** %12, align 8
  store i32 %175, i32* %176, align 4
  ret void
}

declare dso_local i32 @apply_mask_fudge_factor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
