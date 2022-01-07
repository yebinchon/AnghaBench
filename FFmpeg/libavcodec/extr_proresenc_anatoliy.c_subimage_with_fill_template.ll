; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_anatoliy.c_subimage_with_fill_template.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_anatoliy.c_subimage_with_fill_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32)* @subimage_with_fill_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subimage_with_fill_template(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  store i32* %0, i32** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32* %6, i32** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %14, align 4
  %34 = sub i32 %32, %33
  %35 = load i32, i32* %20, align 4
  %36 = call i32 @FFMIN(i32 %34, i32 %35)
  store i32 %36, i32* %25, align 4
  %37 = load i32, i32* %23, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %12
  %40 = load i32, i32* %16, align 4
  %41 = lshr i32 %40, 1
  store i32 %41, i32* %28, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %28, align 4
  %44 = mul i32 %42, %43
  %45 = load i32, i32* %14, align 4
  %46 = add i32 %44, %45
  %47 = load i32*, i32** %13, align 8
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %13, align 8
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %15, align 4
  %52 = sub i32 %50, %51
  %53 = load i32, i32* %21, align 4
  %54 = call i32 @FFMIN(i32 %52, i32 %53)
  store i32 %54, i32* %29, align 4
  br label %80

55:                                               ; preds = %12
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %28, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %28, align 4
  %59 = mul i32 %57, %58
  %60 = load i32, i32* %14, align 4
  %61 = add i32 %59, %60
  %62 = load i32*, i32** %13, align 8
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %13, align 8
  %65 = load i32, i32* %18, align 4
  %66 = udiv i32 %65, 2
  %67 = load i32, i32* %15, align 4
  %68 = sub i32 %66, %67
  %69 = load i32, i32* %21, align 4
  %70 = call i32 @FFMIN(i32 %68, i32 %69)
  store i32 %70, i32* %29, align 4
  %71 = load i32, i32* %24, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %55
  %74 = load i32, i32* %16, align 4
  %75 = lshr i32 %74, 1
  %76 = load i32*, i32** %13, align 8
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %13, align 8
  br label %79

79:                                               ; preds = %73, %55
  br label %80

80:                                               ; preds = %79, %39
  store i32 0, i32* %26, align 4
  br label %81

81:                                               ; preds = %159, %80
  %82 = load i32, i32* %26, align 4
  %83 = load i32, i32* %29, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %162

85:                                               ; preds = %81
  store i32 0, i32* %27, align 4
  br label %86

86:                                               ; preds = %115, %85
  %87 = load i32, i32* %27, align 4
  %88 = load i32, i32* %25, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %118

90:                                               ; preds = %86
  %91 = load i32, i32* %22, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %90
  %94 = load i32*, i32** %13, align 8
  %95 = load i32, i32* %27, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %19, align 8
  %100 = load i32, i32* %27, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  br label %114

103:                                              ; preds = %90
  %104 = load i32*, i32** %13, align 8
  %105 = load i32, i32* %27, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 6
  %110 = load i32*, i32** %19, align 8
  %111 = load i32, i32* %27, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %109, i32* %113, align 4
  br label %114

114:                                              ; preds = %103, %93
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %27, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %27, align 4
  br label %86

118:                                              ; preds = %86
  %119 = load i32, i32* %22, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %118
  %122 = load i32*, i32** %19, align 8
  %123 = load i32, i32* %27, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %30, align 4
  br label %136

128:                                              ; preds = %118
  %129 = load i32*, i32** %19, align 8
  %130 = load i32, i32* %27, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 6
  store i32 %135, i32* %30, align 4
  br label %136

136:                                              ; preds = %128, %121
  br label %137

137:                                              ; preds = %147, %136
  %138 = load i32, i32* %27, align 4
  %139 = load i32, i32* %20, align 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %137
  %142 = load i32, i32* %30, align 4
  %143 = load i32*, i32** %19, align 8
  %144 = load i32, i32* %27, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %142, i32* %146, align 4
  br label %147

147:                                              ; preds = %141
  %148 = load i32, i32* %27, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %27, align 4
  br label %137

150:                                              ; preds = %137
  %151 = load i32, i32* %28, align 4
  %152 = load i32*, i32** %13, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32* %154, i32** %13, align 8
  %155 = load i32, i32* %20, align 4
  %156 = load i32*, i32** %19, align 8
  %157 = zext i32 %155 to i64
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32* %158, i32** %19, align 8
  br label %159

159:                                              ; preds = %150
  %160 = load i32, i32* %26, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %26, align 4
  br label %81

162:                                              ; preds = %81
  %163 = load i32*, i32** %19, align 8
  %164 = load i32, i32* %20, align 4
  %165 = zext i32 %164 to i64
  %166 = sub i64 0, %165
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  store i32* %167, i32** %31, align 8
  br label %168

168:                                              ; preds = %195, %162
  %169 = load i32, i32* %26, align 4
  %170 = load i32, i32* %21, align 4
  %171 = icmp ult i32 %169, %170
  br i1 %171, label %172, label %198

172:                                              ; preds = %168
  store i32 0, i32* %27, align 4
  br label %173

173:                                              ; preds = %187, %172
  %174 = load i32, i32* %27, align 4
  %175 = load i32, i32* %20, align 4
  %176 = icmp ult i32 %174, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %173
  %178 = load i32*, i32** %31, align 8
  %179 = load i32, i32* %27, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %19, align 8
  %184 = load i32, i32* %27, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %182, i32* %186, align 4
  br label %187

187:                                              ; preds = %177
  %188 = load i32, i32* %27, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %27, align 4
  br label %173

190:                                              ; preds = %173
  %191 = load i32, i32* %20, align 4
  %192 = load i32*, i32** %19, align 8
  %193 = zext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32* %194, i32** %19, align 8
  br label %195

195:                                              ; preds = %190
  %196 = load i32, i32* %26, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %26, align 4
  br label %168

198:                                              ; preds = %168
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
