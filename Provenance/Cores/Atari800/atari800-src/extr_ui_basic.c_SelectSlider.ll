; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_SelectSlider.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_SelectSlider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i8*, i32, i32, void (i8*, i32, i8*)*, i8*)* @SelectSlider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SelectSlider(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i32 %7, void (i8*, i32, i8*)* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca void (i8*, i32, i8*)*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [11 x i8], align 1
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store void (i8*, i32, i8*)* %8, void (i8*, i32, i8*)** %20, align 8
  store i8* %9, i8** %21, align 8
  %27 = load i32, i32* %18, align 4
  store i32 %27, i32* %23, align 4
  %28 = load i32, i32* %23, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %10
  store i32 0, i32* %23, align 4
  br label %38

31:                                               ; preds = %10
  %32 = load i32, i32* %23, align 4
  %33 = load i32, i32* %19, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %19, align 4
  store i32 %36, i32* %23, align 4
  br label %37

37:                                               ; preds = %35, %31
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* %16, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, 2
  %49 = call i32 @Box(i32 %39, i32 %40, i32 %41, i32 %42, i32 %46, i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i8*, i8** %17, align 8
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @Print(i32 %50, i32 %51, i8* %52, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i32 @Plot(i32 %58, i32 %59, i32 126, i32 %61, i32 %63)
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i32 @Plot(i32 %65, i32 %66, i32 127, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %171, %38
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 2
  store i32 %75, i32* %22, align 4
  br label %76

76:                                               ; preds = %89, %73
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %78, %79
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %22, align 4
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  %88 = call i32 @Plot(i32 %83, i32 %84, i32 18, i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %22, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %22, align 4
  br label %76

92:                                               ; preds = %76
  %93 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %20, align 8
  %94 = getelementptr inbounds [11 x i8], [11 x i8]* %24, i64 0, i64 0
  %95 = load i32, i32* %23, align 4
  %96 = load i8*, i8** %21, align 8
  call void %93(i8* %94, i32 %95, i8* %96)
  %97 = getelementptr inbounds [11 x i8], [11 x i8]* %24, i64 0, i64 0
  %98 = call i32 @strlen(i8* %97)
  store i32 %98, i32* %25, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %12, align 4
  %101 = getelementptr inbounds [11 x i8], [11 x i8]* %24, i64 0, i64 0
  %102 = load i32, i32* %19, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %92
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 2
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %25, align 4
  %109 = sub nsw i32 %107, %108
  %110 = sub nsw i32 %109, 2
  %111 = sdiv i32 %110, 2
  %112 = add nsw i32 %106, %111
  br label %125

113:                                              ; preds = %92
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 2
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %25, align 4
  %118 = sub nsw i32 %116, %117
  %119 = sub nsw i32 %118, 2
  %120 = load i32, i32* %23, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load i32, i32* %19, align 4
  %123 = sdiv i32 %121, %122
  %124 = add nsw i32 %115, %123
  br label %125

125:                                              ; preds = %113, %104
  %126 = phi i32 [ %112, %104 ], [ %124, %113 ]
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  %129 = load i32, i32* %25, align 4
  %130 = call i32 @Print(i32 %99, i32 %100, i8* %101, i32 %126, i32 %128, i32 %129)
  %131 = call i32 (...) @GetKeyPress()
  store i32 %131, i32* %26, align 4
  %132 = load i32, i32* %26, align 4
  switch i32 %132, label %171 [
    i32 28, label %133
    i32 29, label %134
    i32 30, label %136
    i32 31, label %143
    i32 27, label %151
    i32 126, label %156
    i32 155, label %169
  ]

133:                                              ; preds = %125
  store i32 0, i32* %23, align 4
  br label %171

134:                                              ; preds = %125
  %135 = load i32, i32* %19, align 4
  store i32 %135, i32* %23, align 4
  br label %171

136:                                              ; preds = %125
  %137 = load i32, i32* %23, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %23, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %23, align 4
  br label %142

142:                                              ; preds = %139, %136
  br label %171

143:                                              ; preds = %125
  %144 = load i32, i32* %23, align 4
  %145 = load i32, i32* %19, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load i32, i32* %23, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %23, align 4
  br label %150

150:                                              ; preds = %147, %143
  br label %171

151:                                              ; preds = %125
  %152 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %20, align 8
  %153 = getelementptr inbounds [11 x i8], [11 x i8]* %24, i64 0, i64 0
  %154 = load i32, i32* %18, align 4
  %155 = load i8*, i8** %21, align 8
  call void %152(i8* %153, i32 %154, i8* %155)
  store i32 -1, i32* %11, align 4
  br label %172

156:                                              ; preds = %125
  %157 = load i32, i32* %18, align 4
  store i32 %157, i32* %23, align 4
  %158 = load i32, i32* %23, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  store i32 0, i32* %23, align 4
  br label %168

161:                                              ; preds = %156
  %162 = load i32, i32* %23, align 4
  %163 = load i32, i32* %19, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i32, i32* %19, align 4
  store i32 %166, i32* %23, align 4
  br label %167

167:                                              ; preds = %165, %161
  br label %168

168:                                              ; preds = %167, %160
  br label %171

169:                                              ; preds = %125
  %170 = load i32, i32* %23, align 4
  store i32 %170, i32* %11, align 4
  br label %172

171:                                              ; preds = %125, %168, %150, %142, %134, %133
  br label %73

172:                                              ; preds = %169, %151
  %173 = load i32, i32* %11, align 4
  ret i32 %173
}

declare dso_local i32 @Box(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Print(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @Plot(i32, i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @GetKeyPress(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
