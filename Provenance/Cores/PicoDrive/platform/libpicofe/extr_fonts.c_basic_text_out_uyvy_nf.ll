; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_fonts.c_basic_text_out_uyvy_nf.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_fonts.c_basic_text_out_uyvy_nf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fontdata8x8 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @basic_text_out_uyvy_nf(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to i16*
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %20, i64 %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i16, i16* %23, i64 %27
  store i16* %28, i16** %13, align 8
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %185, %5
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %14, align 1
  %35 = load i8, i8* %14, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %190

39:                                               ; preds = %29
  %40 = load i8, i8* %14, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %185

44:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %181, %44
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 8
  br i1 %47, label %48, label %184

48:                                               ; preds = %45
  %49 = load i8*, i8** @fontdata8x8, align 8
  %50 = load i8, i8* %14, align 1
  %51 = sext i8 %50 to i32
  %52 = mul nsw i32 %51, 8
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %49, i64 %55
  %57 = load i8, i8* %56, align 1
  store i8 %57, i8* %15, align 1
  %58 = load i16*, i16** %13, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i16, i16* %58, i64 %62
  %64 = bitcast i16* %63 to i8*
  store i8* %64, i8** %16, align 8
  store i8 0, i8* %18, align 1
  %65 = load i8, i8* %15, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 128
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %48
  %70 = load i8*, i8** %16, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  store i8 -21, i8* %71, align 1
  br label %72

72:                                               ; preds = %69, %48
  %73 = load i8, i8* %15, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 64
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i8*, i8** %16, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 3
  store i8 -21, i8* %79, align 1
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i8, i8* %15, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i8*, i8** %16, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 5
  store i8 -21, i8* %87, align 1
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i8, i8* %15, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 16
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i8*, i8** %16, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 7
  store i8 -21, i8* %95, align 1
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i8, i8* %15, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i8*, i8** %16, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 9
  store i8 -21, i8* %103, align 1
  br label %104

104:                                              ; preds = %101, %96
  %105 = load i8, i8* %15, align 1
  %106 = zext i8 %105 to i32
  %107 = and i32 %106, 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i8*, i8** %16, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 11
  store i8 -21, i8* %111, align 1
  br label %112

112:                                              ; preds = %109, %104
  %113 = load i8, i8* %15, align 1
  %114 = zext i8 %113 to i32
  %115 = and i32 %114, 2
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i8*, i8** %16, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 13
  store i8 -21, i8* %119, align 1
  br label %120

120:                                              ; preds = %117, %112
  %121 = load i8, i8* %15, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %122, 1
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i8*, i8** %16, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 15
  store i8 -21, i8* %127, align 1
  br label %128

128:                                              ; preds = %125, %120
  %129 = load i32, i32* %12, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  %132 = load i8*, i8** @fontdata8x8, align 8
  %133 = load i8, i8* %14, align 1
  %134 = sext i8 %133 to i32
  %135 = mul nsw i32 %134, 8
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %135, %136
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %132, i64 %139
  %141 = load i8, i8* %140, align 1
  store i8 %141, i8* %18, align 1
  br label %142

142:                                              ; preds = %131, %128
  store i8 -128, i8* %17, align 1
  br label %143

143:                                              ; preds = %173, %142
  %144 = load i8, i8* %17, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %180

147:                                              ; preds = %143
  %148 = load i8, i8* %15, align 1
  %149 = zext i8 %148 to i32
  %150 = load i8, i8* %17, align 1
  %151 = zext i8 %150 to i32
  %152 = ashr i32 %151, 1
  %153 = and i32 %149, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %172, label %155

155:                                              ; preds = %147
  %156 = load i8, i8* %18, align 1
  %157 = zext i8 %156 to i32
  %158 = load i8, i8* %15, align 1
  %159 = zext i8 %158 to i32
  %160 = or i32 %157, %159
  %161 = load i8, i8* %17, align 1
  %162 = zext i8 %161 to i32
  %163 = and i32 %160, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %155
  %166 = load i8*, i8** %16, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = sdiv i32 %169, 2
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %167, align 1
  br label %172

172:                                              ; preds = %165, %155, %147
  br label %173

173:                                              ; preds = %172
  %174 = load i8, i8* %17, align 1
  %175 = zext i8 %174 to i32
  %176 = ashr i32 %175, 1
  %177 = trunc i32 %176 to i8
  store i8 %177, i8* %17, align 1
  %178 = load i8*, i8** %16, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 2
  store i8* %179, i8** %16, align 8
  br label %143

180:                                              ; preds = %143
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %12, align 4
  br label %45

184:                                              ; preds = %45
  br label %185

185:                                              ; preds = %184, %43
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %11, align 4
  %188 = load i16*, i16** %13, align 8
  %189 = getelementptr inbounds i16, i16* %188, i64 8
  store i16* %189, i16** %13, align 8
  br label %29

190:                                              ; preds = %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
