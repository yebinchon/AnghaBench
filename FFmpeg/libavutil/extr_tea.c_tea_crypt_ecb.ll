; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_tea.c_tea_crypt_ecb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_tea.c_tea_crypt_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*, i32, i32*)* @tea_crypt_ecb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tea_crypt_ecb(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %16, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %17, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @AV_RB32(i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = call i32 @AV_RB32(i32* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %118

54:                                               ; preds = %5
  store i32 -1640531527, i32* %19, align 4
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* %13, align 4
  %57 = sdiv i32 %56, 2
  %58 = mul nsw i32 %55, %57
  store i32 %58, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %59

59:                                               ; preds = %98, %54
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %13, align 4
  %62 = sdiv i32 %61, 2
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %101

64:                                               ; preds = %59
  %65 = load i32, i32* %11, align 4
  %66 = shl i32 %65, 4
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %20, align 4
  %71 = add nsw i32 %69, %70
  %72 = xor i32 %68, %71
  %73 = load i32, i32* %11, align 4
  %74 = ashr i32 %73, 5
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %74, %75
  %77 = xor i32 %72, %76
  %78 = load i32, i32* %12, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = shl i32 %80, 4
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %20, align 4
  %86 = add nsw i32 %84, %85
  %87 = xor i32 %83, %86
  %88 = load i32, i32* %12, align 4
  %89 = ashr i32 %88, 5
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %89, %90
  %92 = xor i32 %87, %91
  %93 = load i32, i32* %11, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %20, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %20, align 4
  br label %98

98:                                               ; preds = %64
  %99 = load i32, i32* %18, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %18, align 4
  br label %59

101:                                              ; preds = %59
  %102 = load i32*, i32** %10, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @AV_RB32(i32* %105)
  %107 = load i32, i32* %11, align 4
  %108 = xor i32 %107, %106
  store i32 %108, i32* %11, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  %111 = call i32 @AV_RB32(i32* %110)
  %112 = load i32, i32* %12, align 4
  %113 = xor i32 %112, %111
  store i32 %113, i32* %12, align 4
  %114 = load i32*, i32** %10, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @memcpy(i32* %114, i32* %115, i32 8)
  br label %117

117:                                              ; preds = %104, %101
  br label %162

118:                                              ; preds = %5
  store i32 0, i32* %22, align 4
  store i32 -1640531527, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %119

119:                                              ; preds = %158, %118
  %120 = load i32, i32* %21, align 4
  %121 = load i32, i32* %13, align 4
  %122 = sdiv i32 %121, 2
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %124, label %161

124:                                              ; preds = %119
  %125 = load i32, i32* %23, align 4
  %126 = load i32, i32* %22, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %22, align 4
  %128 = load i32, i32* %12, align 4
  %129 = shl i32 %128, 4
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %22, align 4
  %134 = add nsw i32 %132, %133
  %135 = xor i32 %131, %134
  %136 = load i32, i32* %12, align 4
  %137 = ashr i32 %136, 5
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %137, %138
  %140 = xor i32 %135, %139
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = shl i32 %143, 4
  %145 = load i32, i32* %16, align 4
  %146 = add nsw i32 %144, %145
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %22, align 4
  %149 = add nsw i32 %147, %148
  %150 = xor i32 %146, %149
  %151 = load i32, i32* %11, align 4
  %152 = ashr i32 %151, 5
  %153 = load i32, i32* %17, align 4
  %154 = add nsw i32 %152, %153
  %155 = xor i32 %150, %154
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %124
  %159 = load i32, i32* %21, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %21, align 4
  br label %119

161:                                              ; preds = %119
  br label %162

162:                                              ; preds = %161, %117
  %163 = load i32*, i32** %7, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @AV_WB32(i32* %163, i32 %164)
  %166 = load i32*, i32** %7, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 4
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @AV_WB32(i32* %167, i32 %168)
  ret void
}

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @AV_WB32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
