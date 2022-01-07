; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsub.c_dvb_encode_rle4.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsub.c_dvb_encode_rle4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i32, i32, i32)* @dvb_encode_rle4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_encode_rle4(i32** %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i32**, i32*** %6, align 8
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %11, align 8
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %164, %5
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %167

26:                                               ; preds = %22
  %27 = load i32*, i32** %11, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %11, align 8
  store i32 17, i32* %27, align 4
  store i32 0, i32* %12, align 4
  store i32 4, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %144, %26
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %148

33:                                               ; preds = %29
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %17, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %17, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %17, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %19, align 4
  br label %41

41:                                               ; preds = %55, %33
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %17, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %19, align 4
  %52 = icmp eq i32 %50, %51
  br label %53

53:                                               ; preds = %45, %41
  %54 = phi i1 [ false, %41 ], [ %52, %45 ]
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = load i32, i32* %17, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %17, align 4
  br label %41

58:                                               ; preds = %53
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %14, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* %16, align 4
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = call i32 @PUTBITS4(i32 0)
  %69 = call i32 @PUTBITS4(i32 13)
  br label %144

70:                                               ; preds = %64, %58
  %71 = load i32, i32* %19, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load i32, i32* %16, align 4
  %75 = icmp sge i32 %74, 3
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, i32* %16, align 4
  %78 = icmp sle i32 %77, 9
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = call i32 @PUTBITS4(i32 0)
  %81 = load i32, i32* %16, align 4
  %82 = sub nsw i32 %81, 2
  %83 = call i32 @PUTBITS4(i32 %82)
  br label %143

84:                                               ; preds = %76, %73, %70
  %85 = load i32, i32* %16, align 4
  %86 = icmp sge i32 %85, 4
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load i32, i32* %16, align 4
  %89 = icmp sle i32 %88, 7
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = call i32 @PUTBITS4(i32 0)
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 8, %92
  %94 = sub nsw i32 %93, 4
  %95 = call i32 @PUTBITS4(i32 %94)
  %96 = load i32, i32* %19, align 4
  %97 = call i32 @PUTBITS4(i32 %96)
  br label %142

98:                                               ; preds = %87, %84
  %99 = load i32, i32* %16, align 4
  %100 = icmp sge i32 %99, 9
  br i1 %100, label %101, label %112

101:                                              ; preds = %98
  %102 = load i32, i32* %16, align 4
  %103 = icmp sle i32 %102, 24
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = call i32 @PUTBITS4(i32 0)
  %106 = call i32 @PUTBITS4(i32 14)
  %107 = load i32, i32* %16, align 4
  %108 = sub nsw i32 %107, 9
  %109 = call i32 @PUTBITS4(i32 %108)
  %110 = load i32, i32* %19, align 4
  %111 = call i32 @PUTBITS4(i32 %110)
  br label %141

112:                                              ; preds = %101, %98
  %113 = load i32, i32* %16, align 4
  %114 = icmp sge i32 %113, 25
  br i1 %114, label %115, label %132

115:                                              ; preds = %112
  %116 = load i32, i32* %16, align 4
  %117 = icmp sgt i32 %116, 280
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 280, i32* %16, align 4
  br label %119

119:                                              ; preds = %118, %115
  %120 = load i32, i32* %16, align 4
  %121 = sub nsw i32 %120, 25
  store i32 %121, i32* %18, align 4
  %122 = call i32 @PUTBITS4(i32 0)
  %123 = call i32 @PUTBITS4(i32 15)
  %124 = load i32, i32* %18, align 4
  %125 = ashr i32 %124, 4
  %126 = call i32 @PUTBITS4(i32 %125)
  %127 = load i32, i32* %18, align 4
  %128 = and i32 %127, 15
  %129 = call i32 @PUTBITS4(i32 %128)
  %130 = load i32, i32* %19, align 4
  %131 = call i32 @PUTBITS4(i32 %130)
  br label %140

132:                                              ; preds = %112
  %133 = load i32, i32* %19, align 4
  %134 = call i32 @PUTBITS4(i32 %133)
  %135 = load i32, i32* %19, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = call i32 @PUTBITS4(i32 12)
  br label %139

139:                                              ; preds = %137, %132
  store i32 1, i32* %16, align 4
  br label %140

140:                                              ; preds = %139, %119
  br label %141

141:                                              ; preds = %140, %104
  br label %142

142:                                              ; preds = %141, %90
  br label %143

143:                                              ; preds = %142, %79
  br label %144

144:                                              ; preds = %143, %67
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %14, align 4
  br label %29

148:                                              ; preds = %29
  %149 = call i32 @PUTBITS4(i32 0)
  %150 = call i32 @PUTBITS4(i32 0)
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 4
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i32, i32* %12, align 4
  %155 = load i32*, i32** %11, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %11, align 8
  store i32 %154, i32* %155, align 4
  br label %157

157:                                              ; preds = %153, %148
  %158 = load i32*, i32** %11, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %11, align 8
  store i32 240, i32* %158, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load i32*, i32** %7, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32* %163, i32** %7, align 8
  br label %164

164:                                              ; preds = %157
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %22

167:                                              ; preds = %22
  %168 = load i32*, i32** %11, align 8
  %169 = load i32**, i32*** %6, align 8
  store i32* %168, i32** %169, align 8
  ret void
}

declare dso_local i32 @PUTBITS4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
