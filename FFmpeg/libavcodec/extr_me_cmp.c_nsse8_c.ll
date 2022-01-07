; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_nsse8_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_nsse8_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i32, i32)* @nsse8_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsse8_c(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %139, %5
  %17 = load i32, i32* %15, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %142

20:                                               ; preds = %16
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %50, %20
  %22 = load i32, i32* %14, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %53

24:                                               ; preds = %21
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %14, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %29, %34
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %40, %45
  %47 = mul nsw i32 %35, %46
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %24
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  br label %21

53:                                               ; preds = %21
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %130

58:                                               ; preds = %53
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %126, %58
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 7
  br i1 %61, label %62, label %129

62:                                               ; preds = %59
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %67, %74
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %75, %81
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %84, %85
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %83, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %82, %90
  %92 = call i32 @FFABS(i32 %91)
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %97, %104
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %105, %111
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %114, %115
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %113, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %112, %120
  %122 = call i32 @FFABS(i32 %121)
  %123 = sub nsw i32 %92, %122
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %62
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %59

129:                                              ; preds = %59
  br label %130

130:                                              ; preds = %129, %53
  %131 = load i32, i32* %10, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %8, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %9, align 8
  br label %139

139:                                              ; preds = %130
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %15, align 4
  br label %16

142:                                              ; preds = %16
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %144 = icmp ne %struct.TYPE_5__* %143, null
  br i1 %144, label %145, label %156

145:                                              ; preds = %142
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %13, align 4
  %148 = call i32 @FFABS(i32 %147)
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 %148, %153
  %155 = add nsw i32 %146, %154
  store i32 %155, i32* %6, align 4
  br label %162

156:                                              ; preds = %142
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @FFABS(i32 %158)
  %160 = mul nsw i32 %159, 8
  %161 = add nsw i32 %157, %160
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %156, %145
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local i32 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
