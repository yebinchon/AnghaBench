; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsub.c_dvb_encode_rle2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsub.c_dvb_encode_rle2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i32, i32, i32)* @dvb_encode_rle2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_encode_rle2(i32** %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
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

22:                                               ; preds = %171, %5
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %174

26:                                               ; preds = %22
  %27 = load i32*, i32** %11, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %11, align 8
  store i32 16, i32* %27, align 4
  store i32 0, i32* %12, align 4
  store i32 6, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %150, %26
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %154

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
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32, i32* %16, align 4
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = call i32 @PUTBITS2(i32 0)
  %69 = call i32 @PUTBITS2(i32 0)
  %70 = call i32 @PUTBITS2(i32 1)
  br label %150

71:                                               ; preds = %64, %58
  %72 = load i32, i32* %16, align 4
  %73 = icmp sge i32 %72, 3
  br i1 %73, label %74, label %90

74:                                               ; preds = %71
  %75 = load i32, i32* %16, align 4
  %76 = icmp sle i32 %75, 10
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = load i32, i32* %16, align 4
  %79 = sub nsw i32 %78, 3
  store i32 %79, i32* %18, align 4
  %80 = call i32 @PUTBITS2(i32 0)
  %81 = load i32, i32* %18, align 4
  %82 = ashr i32 %81, 2
  %83 = or i32 %82, 2
  %84 = call i32 @PUTBITS2(i32 %83)
  %85 = load i32, i32* %18, align 4
  %86 = and i32 %85, 3
  %87 = call i32 @PUTBITS2(i32 %86)
  %88 = load i32, i32* %19, align 4
  %89 = call i32 @PUTBITS2(i32 %88)
  br label %149

90:                                               ; preds = %74, %71
  %91 = load i32, i32* %16, align 4
  %92 = icmp sge i32 %91, 12
  br i1 %92, label %93, label %110

93:                                               ; preds = %90
  %94 = load i32, i32* %16, align 4
  %95 = icmp sle i32 %94, 27
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load i32, i32* %16, align 4
  %98 = sub nsw i32 %97, 12
  store i32 %98, i32* %18, align 4
  %99 = call i32 @PUTBITS2(i32 0)
  %100 = call i32 @PUTBITS2(i32 0)
  %101 = call i32 @PUTBITS2(i32 2)
  %102 = load i32, i32* %18, align 4
  %103 = ashr i32 %102, 2
  %104 = call i32 @PUTBITS2(i32 %103)
  %105 = load i32, i32* %18, align 4
  %106 = and i32 %105, 3
  %107 = call i32 @PUTBITS2(i32 %106)
  %108 = load i32, i32* %19, align 4
  %109 = call i32 @PUTBITS2(i32 %108)
  br label %148

110:                                              ; preds = %93, %90
  %111 = load i32, i32* %16, align 4
  %112 = icmp sge i32 %111, 29
  br i1 %112, label %113, label %139

113:                                              ; preds = %110
  %114 = load i32, i32* %16, align 4
  %115 = icmp sgt i32 %114, 284
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 284, i32* %16, align 4
  br label %117

117:                                              ; preds = %116, %113
  %118 = load i32, i32* %16, align 4
  %119 = sub nsw i32 %118, 29
  store i32 %119, i32* %18, align 4
  %120 = call i32 @PUTBITS2(i32 0)
  %121 = call i32 @PUTBITS2(i32 0)
  %122 = call i32 @PUTBITS2(i32 3)
  %123 = load i32, i32* %18, align 4
  %124 = ashr i32 %123, 6
  %125 = call i32 @PUTBITS2(i32 %124)
  %126 = load i32, i32* %18, align 4
  %127 = ashr i32 %126, 4
  %128 = and i32 %127, 3
  %129 = call i32 @PUTBITS2(i32 %128)
  %130 = load i32, i32* %18, align 4
  %131 = ashr i32 %130, 2
  %132 = and i32 %131, 3
  %133 = call i32 @PUTBITS2(i32 %132)
  %134 = load i32, i32* %18, align 4
  %135 = and i32 %134, 3
  %136 = call i32 @PUTBITS2(i32 %135)
  %137 = load i32, i32* %19, align 4
  %138 = call i32 @PUTBITS2(i32 %137)
  br label %147

139:                                              ; preds = %110
  %140 = load i32, i32* %19, align 4
  %141 = call i32 @PUTBITS2(i32 %140)
  %142 = load i32, i32* %19, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = call i32 @PUTBITS2(i32 1)
  br label %146

146:                                              ; preds = %144, %139
  store i32 1, i32* %16, align 4
  br label %147

147:                                              ; preds = %146, %117
  br label %148

148:                                              ; preds = %147, %96
  br label %149

149:                                              ; preds = %148, %77
  br label %150

150:                                              ; preds = %149, %67
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %14, align 4
  br label %29

154:                                              ; preds = %29
  %155 = call i32 @PUTBITS2(i32 0)
  %156 = call i32 @PUTBITS2(i32 0)
  %157 = call i32 @PUTBITS2(i32 0)
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 6
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load i32, i32* %12, align 4
  %162 = load i32*, i32** %11, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %11, align 8
  store i32 %161, i32* %162, align 4
  br label %164

164:                                              ; preds = %160, %154
  %165 = load i32*, i32** %11, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %11, align 8
  store i32 240, i32* %165, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32*, i32** %7, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32* %170, i32** %7, align 8
  br label %171

171:                                              ; preds = %164
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %15, align 4
  br label %22

174:                                              ; preds = %22
  %175 = load i32*, i32** %11, align 8
  %176 = load i32**, i32*** %6, align 8
  store i32* %175, i32** %176, align 8
  ret void
}

declare dso_local i32 @PUTBITS2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
