; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alac.c_lpc_prediction.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alac.c_lpc_prediction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32*, i32, i32, i32*, i32, i32)* @lpc_prediction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc_prediction(i8** %0, i32* %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = load i32*, i32** %9, align 8
  store i32* %23, i32** %16, align 8
  %24 = load i8**, i8*** %8, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = ptrtoint i8* %25 to i32
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sle i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  br label %229

31:                                               ; preds = %7
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i8**, i8*** %8, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memcpy(i32* %36, i8** %38, i32 %43)
  br label %229

45:                                               ; preds = %31
  %46 = load i32, i32* %13, align 4
  %47 = icmp eq i32 %46, 31
  br i1 %47, label %48, label %78

48:                                               ; preds = %45
  store i32 1, i32* %15, align 4
  br label %49

49:                                               ; preds = %74, %48
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %49
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i8**, i8*** %8, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = sext i32 %59 to i64
  %66 = getelementptr i8, i8* %64, i64 %65
  %67 = ptrtoint i8* %66 to i32
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @sign_extend(i32 %67, i32 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %53
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  br label %49

77:                                               ; preds = %49
  br label %229

78:                                               ; preds = %45
  store i32 1, i32* %15, align 4
  br label %79

79:                                               ; preds = %110, %78
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %84, %85
  br label %87

87:                                               ; preds = %83, %79
  %88 = phi i1 [ false, %79 ], [ %86, %83 ]
  br i1 %88, label %89, label %113

89:                                               ; preds = %87
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i8**, i8*** %8, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = sext i32 %95 to i64
  %102 = getelementptr i8, i8* %100, i64 %101
  %103 = ptrtoint i8* %102 to i32
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @sign_extend(i32 %103, i32 %104)
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %105, i32* %109, align 4
  br label %110

110:                                              ; preds = %89
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %79

113:                                              ; preds = %87
  br label %114

114:                                              ; preds = %226, %113
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %229

118:                                              ; preds = %114
  store i32 0, i32* %18, align 4
  %119 = load i8**, i8*** %8, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = ptrtoint i8* %123 to i32
  store i32 %124, i32* %19, align 4
  %125 = load i32*, i32** %16, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %16, align 8
  %127 = load i32, i32* %125, align 4
  store i32 %127, i32* %21, align 4
  store i32 0, i32* %17, align 4
  br label %128

128:                                              ; preds = %148, %118
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %151

132:                                              ; preds = %128
  %133 = load i32*, i32** %16, align 8
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %21, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load i32*, i32** %12, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %139, %144
  %146 = load i32, i32* %18, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %18, align 4
  br label %148

148:                                              ; preds = %132
  %149 = load i32, i32* %17, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %17, align 4
  br label %128

151:                                              ; preds = %128
  %152 = load i32, i32* %18, align 4
  %153 = sext i32 %152 to i64
  %154 = load i32, i32* %14, align 4
  %155 = sub nsw i32 %154, 1
  %156 = zext i32 %155 to i64
  %157 = shl i64 1, %156
  %158 = add nsw i64 %153, %157
  %159 = load i32, i32* %14, align 4
  %160 = zext i32 %159 to i64
  %161 = ashr i64 %158, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %18, align 4
  %163 = load i32, i32* %21, align 4
  %164 = load i32, i32* %19, align 4
  %165 = add i32 %163, %164
  %166 = load i32, i32* %18, align 4
  %167 = add i32 %166, %165
  store i32 %167, i32* %18, align 4
  %168 = load i32, i32* %18, align 4
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @sign_extend(i32 %168, i32 %169)
  %171 = load i32*, i32** %9, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %170, i32* %174, align 4
  %175 = load i32, i32* %19, align 4
  %176 = call i32 @sign_only(i32 %175)
  store i32 %176, i32* %20, align 4
  %177 = load i32, i32* %20, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %225

179:                                              ; preds = %151
  store i32 0, i32* %17, align 4
  br label %180

180:                                              ; preds = %221, %179
  %181 = load i32, i32* %17, align 4
  %182 = load i32, i32* %13, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %20, align 4
  %187 = mul i32 %185, %186
  %188 = icmp sgt i32 %187, 0
  br label %189

189:                                              ; preds = %184, %180
  %190 = phi i1 [ false, %180 ], [ %188, %184 ]
  br i1 %190, label %191, label %224

191:                                              ; preds = %189
  %192 = load i32, i32* %21, align 4
  %193 = load i32*, i32** %16, align 8
  %194 = load i32, i32* %17, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = sub nsw i32 %192, %197
  store i32 %198, i32* %18, align 4
  %199 = load i32, i32* %18, align 4
  %200 = call i32 @sign_only(i32 %199)
  %201 = load i32, i32* %20, align 4
  %202 = mul nsw i32 %200, %201
  store i32 %202, i32* %22, align 4
  %203 = load i32, i32* %22, align 4
  %204 = load i32*, i32** %12, align 8
  %205 = load i32, i32* %17, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = sub nsw i32 %208, %203
  store i32 %209, i32* %207, align 4
  %210 = load i32, i32* %22, align 4
  %211 = load i32, i32* %18, align 4
  %212 = mul nsw i32 %211, %210
  store i32 %212, i32* %18, align 4
  %213 = load i32, i32* %18, align 4
  %214 = load i32, i32* %14, align 4
  %215 = ashr i32 %213, %214
  %216 = load i32, i32* %17, align 4
  %217 = add nsw i32 %216, 1
  %218 = mul nsw i32 %215, %217
  %219 = load i32, i32* %19, align 4
  %220 = sub i32 %219, %218
  store i32 %220, i32* %19, align 4
  br label %221

221:                                              ; preds = %191
  %222 = load i32, i32* %17, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %17, align 4
  br label %180

224:                                              ; preds = %189
  br label %225

225:                                              ; preds = %224, %151
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %15, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %15, align 4
  br label %114

229:                                              ; preds = %30, %34, %77, %114
  ret void
}

declare dso_local i32 @memcpy(i32*, i8**, i32) #1

declare dso_local i32 @sign_extend(i32, i32) #1

declare dso_local i32 @sign_only(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
