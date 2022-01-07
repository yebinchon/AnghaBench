; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_xtea.c_xtea_le_crypt_ecb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_xtea.c_xtea_le_crypt_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*, i32, i32*)* @xtea_le_crypt_ecb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xtea_le_crypt_ecb(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
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
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @AV_RL32(i32* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = call i32 @AV_RL32(i32* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %96

25:                                               ; preds = %5
  store i32 -1640531527, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = mul nsw i32 %26, 32
  store i32 %27, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %76, %25
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 32
  br i1 %30, label %31, label %79

31:                                               ; preds = %28
  %32 = load i32, i32* %11, align 4
  %33 = shl i32 %32, 4
  %34 = load i32, i32* %11, align 4
  %35 = ashr i32 %34, 5
  %36 = xor i32 %33, %35
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* %15, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %15, align 4
  %44 = ashr i32 %43, 11
  %45 = and i32 %44, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %39, %48
  %50 = xor i32 %38, %49
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %12, align 4
  %57 = shl i32 %56, 4
  %58 = load i32, i32* %12, align 4
  %59 = ashr i32 %58, 5
  %60 = xor i32 %57, %59
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = and i32 %67, 3
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %63, %71
  %73 = xor i32 %62, %72
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %31
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %28

79:                                               ; preds = %28
  %80 = load i32*, i32** %10, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @AV_RL32(i32* %83)
  %85 = load i32, i32* %11, align 4
  %86 = xor i32 %85, %84
  store i32 %86, i32* %11, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  %89 = call i32 @AV_RL32(i32* %88)
  %90 = load i32, i32* %12, align 4
  %91 = xor i32 %90, %89
  store i32 %91, i32* %12, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @memcpy(i32* %92, i32* %93, i32 8)
  br label %95

95:                                               ; preds = %82, %79
  br label %149

96:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  store i32 -1640531527, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %145, %96
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %98, 32
  br i1 %99, label %100, label %148

100:                                              ; preds = %97
  %101 = load i32, i32* %12, align 4
  %102 = shl i32 %101, 4
  %103 = load i32, i32* %12, align 4
  %104 = ashr i32 %103, 5
  %105 = xor i32 %102, %104
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i32, i32* %16, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = and i32 %112, 3
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %108, %116
  %118 = xor i32 %107, %117
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %11, align 4
  %125 = shl i32 %124, 4
  %126 = load i32, i32* %11, align 4
  %127 = ashr i32 %126, 5
  %128 = xor i32 %125, %127
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i32, i32* %16, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %16, align 4
  %136 = ashr i32 %135, 11
  %137 = and i32 %136, 3
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %131, %140
  %142 = xor i32 %130, %141
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %100
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %13, align 4
  br label %97

148:                                              ; preds = %97
  br label %149

149:                                              ; preds = %148, %95
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @AV_WL32(i32* %150, i32 %151)
  %153 = load i32*, i32** %7, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 4
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @AV_WL32(i32* %154, i32 %155)
  ret void
}

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
