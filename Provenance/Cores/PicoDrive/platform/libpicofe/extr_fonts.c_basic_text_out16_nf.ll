; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_fonts.c_basic_text_out16_nf.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_fonts.c_basic_text_out16_nf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fontdata8x8 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @basic_text_out16_nf(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16*, align 8
  %14 = alloca i16, align 2
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i16*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i16 -1, i16* %14, align 2
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to i16*
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %21, i64 %23
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %24, i64 %28
  store i16* %29, i16** %13, align 8
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %196, %5
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %15, align 1
  %36 = load i8, i8* %15, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %201

40:                                               ; preds = %30
  %41 = load i8, i8* %15, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 32
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %196

45:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %192, %45
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 8
  br i1 %48, label %49, label %195

49:                                               ; preds = %46
  %50 = load i8*, i8** @fontdata8x8, align 8
  %51 = load i8, i8* %15, align 1
  %52 = sext i8 %51 to i32
  %53 = mul nsw i32 %52, 8
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %50, i64 %56
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %16, align 1
  %59 = load i16*, i16** %13, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %7, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i16, i16* %59, i64 %63
  store i16* %64, i16** %17, align 8
  store i8 0, i8* %19, align 1
  %65 = load i8, i8* %16, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 128
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %49
  %70 = load i16, i16* %14, align 2
  %71 = load i16*, i16** %17, align 8
  %72 = getelementptr inbounds i16, i16* %71, i64 0
  store i16 %70, i16* %72, align 2
  br label %73

73:                                               ; preds = %69, %49
  %74 = load i8, i8* %16, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 64
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i16, i16* %14, align 2
  %80 = load i16*, i16** %17, align 8
  %81 = getelementptr inbounds i16, i16* %80, i64 1
  store i16 %79, i16* %81, align 2
  br label %82

82:                                               ; preds = %78, %73
  %83 = load i8, i8* %16, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, 32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i16, i16* %14, align 2
  %89 = load i16*, i16** %17, align 8
  %90 = getelementptr inbounds i16, i16* %89, i64 2
  store i16 %88, i16* %90, align 2
  br label %91

91:                                               ; preds = %87, %82
  %92 = load i8, i8* %16, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %93, 16
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i16, i16* %14, align 2
  %98 = load i16*, i16** %17, align 8
  %99 = getelementptr inbounds i16, i16* %98, i64 3
  store i16 %97, i16* %99, align 2
  br label %100

100:                                              ; preds = %96, %91
  %101 = load i8, i8* %16, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i16, i16* %14, align 2
  %107 = load i16*, i16** %17, align 8
  %108 = getelementptr inbounds i16, i16* %107, i64 4
  store i16 %106, i16* %108, align 2
  br label %109

109:                                              ; preds = %105, %100
  %110 = load i8, i8* %16, align 1
  %111 = zext i8 %110 to i32
  %112 = and i32 %111, 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i16, i16* %14, align 2
  %116 = load i16*, i16** %17, align 8
  %117 = getelementptr inbounds i16, i16* %116, i64 5
  store i16 %115, i16* %117, align 2
  br label %118

118:                                              ; preds = %114, %109
  %119 = load i8, i8* %16, align 1
  %120 = zext i8 %119 to i32
  %121 = and i32 %120, 2
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i16, i16* %14, align 2
  %125 = load i16*, i16** %17, align 8
  %126 = getelementptr inbounds i16, i16* %125, i64 6
  store i16 %124, i16* %126, align 2
  br label %127

127:                                              ; preds = %123, %118
  %128 = load i8, i8* %16, align 1
  %129 = zext i8 %128 to i32
  %130 = and i32 %129, 1
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i16, i16* %14, align 2
  %134 = load i16*, i16** %17, align 8
  %135 = getelementptr inbounds i16, i16* %134, i64 7
  store i16 %133, i16* %135, align 2
  br label %136

136:                                              ; preds = %132, %127
  %137 = load i32, i32* %12, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %136
  %140 = load i8*, i8** @fontdata8x8, align 8
  %141 = load i8, i8* %15, align 1
  %142 = sext i8 %141 to i32
  %143 = mul nsw i32 %142, 8
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %143, %144
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %140, i64 %147
  %149 = load i8, i8* %148, align 1
  store i8 %149, i8* %19, align 1
  br label %150

150:                                              ; preds = %139, %136
  store i8 -128, i8* %18, align 1
  br label %151

151:                                              ; preds = %184, %150
  %152 = load i8, i8* %18, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %191

155:                                              ; preds = %151
  %156 = load i8, i8* %16, align 1
  %157 = zext i8 %156 to i32
  %158 = load i8, i8* %18, align 1
  %159 = zext i8 %158 to i32
  %160 = ashr i32 %159, 1
  %161 = and i32 %157, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %183, label %163

163:                                              ; preds = %155
  %164 = load i8, i8* %19, align 1
  %165 = zext i8 %164 to i32
  %166 = load i8, i8* %16, align 1
  %167 = zext i8 %166 to i32
  %168 = or i32 %165, %167
  %169 = load i8, i8* %18, align 1
  %170 = zext i8 %169 to i32
  %171 = and i32 %168, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %163
  %174 = load i16*, i16** %17, align 8
  %175 = getelementptr inbounds i16, i16* %174, i64 1
  %176 = load i16, i16* %175, align 2
  %177 = zext i16 %176 to i32
  %178 = ashr i32 %177, 1
  %179 = and i32 %178, 14831
  %180 = trunc i32 %179 to i16
  %181 = load i16*, i16** %17, align 8
  %182 = getelementptr inbounds i16, i16* %181, i64 1
  store i16 %180, i16* %182, align 2
  br label %183

183:                                              ; preds = %173, %163, %155
  br label %184

184:                                              ; preds = %183
  %185 = load i8, i8* %18, align 1
  %186 = zext i8 %185 to i32
  %187 = ashr i32 %186, 1
  %188 = trunc i32 %187 to i8
  store i8 %188, i8* %18, align 1
  %189 = load i16*, i16** %17, align 8
  %190 = getelementptr inbounds i16, i16* %189, i32 1
  store i16* %190, i16** %17, align 8
  br label %151

191:                                              ; preds = %151
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %12, align 4
  br label %46

195:                                              ; preds = %46
  br label %196

196:                                              ; preds = %195, %44
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %11, align 4
  %199 = load i16*, i16** %13, align 8
  %200 = getelementptr inbounds i16, i16* %199, i64 8
  store i16* %200, i16** %13, align 8
  br label %30

201:                                              ; preds = %39
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
