; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresdec2.c_unpack_alpha.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresdec2.c_unpack_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32)* @unpack_alpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpack_alpha(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = shl i32 1, %17
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %15, align 4
  br label %21

21:                                               ; preds = %192, %5
  br label %22

22:                                               ; preds = %110, %21
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @get_bits1(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @get_bits(i32* %27, i32 %28)
  store i32 %29, i32* %14, align 4
  br label %48

30:                                               ; preds = %22
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 16
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 7, i32 4
  %36 = call i32 @get_bits(i32* %31, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = and i32 %37, 1
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 2
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = load i32, i32* %14, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %44, %30
  br label %48

48:                                               ; preds = %47, %26
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 16
  br i1 %55, label %56, label %76

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 10
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @ALPHA_SHIFT_16_TO_10(i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %61, i32* %66, align 4
  br label %75

67:                                               ; preds = %56
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @ALPHA_SHIFT_16_TO_12(i32 %68)
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 %69, i32* %74, align 4
  br label %75

75:                                               ; preds = %67, %59
  br label %96

76:                                               ; preds = %48
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %77, 10
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @ALPHA_SHIFT_8_TO_10(i32 %80)
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %81, i32* %86, align 4
  br label %95

87:                                               ; preds = %76
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @ALPHA_SHIFT_8_TO_12(i32 %88)
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %89, i32* %94, align 4
  br label %95

95:                                               ; preds = %87, %79
  br label %96

96:                                               ; preds = %95, %75
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %112

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101
  %103 = load i32*, i32** %6, align 8
  %104 = call i64 @get_bits_left(i32* %103)
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32*, i32** %6, align 8
  %108 = call i64 @get_bits1(i32* %107)
  %109 = icmp ne i64 %108, 0
  br label %110

110:                                              ; preds = %106, %102
  %111 = phi i1 [ false, %102 ], [ %109, %106 ]
  br i1 %111, label %22, label %112

112:                                              ; preds = %110, %100
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @get_bits(i32* %113, i32 4)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @get_bits(i32* %118, i32 11)
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %117, %112
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* %8, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %13, align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %126, %120
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, 16
  br i1 %132, label %133, label %162

133:                                              ; preds = %130
  store i32 0, i32* %12, align 4
  br label %134

134:                                              ; preds = %158, %133
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %161

138:                                              ; preds = %134
  %139 = load i32, i32* %10, align 4
  %140 = icmp eq i32 %139, 10
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load i32, i32* %15, align 4
  %143 = call i32 @ALPHA_SHIFT_16_TO_10(i32 %142)
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %13, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  store i32 %143, i32* %148, align 4
  br label %157

149:                                              ; preds = %138
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @ALPHA_SHIFT_16_TO_12(i32 %150)
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %13, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  store i32 %151, i32* %156, align 4
  br label %157

157:                                              ; preds = %149, %141
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %12, align 4
  br label %134

161:                                              ; preds = %134
  br label %191

162:                                              ; preds = %130
  store i32 0, i32* %12, align 4
  br label %163

163:                                              ; preds = %187, %162
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %190

167:                                              ; preds = %163
  %168 = load i32, i32* %10, align 4
  %169 = icmp eq i32 %168, 10
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = load i32, i32* %15, align 4
  %172 = call i32 @ALPHA_SHIFT_8_TO_10(i32 %171)
  %173 = load i32*, i32** %7, align 8
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %13, align 4
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  store i32 %172, i32* %177, align 4
  br label %186

178:                                              ; preds = %167
  %179 = load i32, i32* %15, align 4
  %180 = call i32 @ALPHA_SHIFT_8_TO_12(i32 %179)
  %181 = load i32*, i32** %7, align 8
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %13, align 4
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  store i32 %180, i32* %185, align 4
  br label %186

186:                                              ; preds = %178, %170
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %12, align 4
  br label %163

190:                                              ; preds = %163
  br label %191

191:                                              ; preds = %190, %161
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %21, label %196

196:                                              ; preds = %192
  ret void
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @ALPHA_SHIFT_16_TO_10(i32) #1

declare dso_local i32 @ALPHA_SHIFT_16_TO_12(i32) #1

declare dso_local i32 @ALPHA_SHIFT_8_TO_10(i32) #1

declare dso_local i32 @ALPHA_SHIFT_8_TO_12(i32) #1

declare dso_local i64 @get_bits_left(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
