; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_twofish.c_twofish_encrypt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_twofish.c_twofish_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*)* @twofish_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twofish_encrypt(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @AV_RL32(i32* %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %12, %17
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %18, i32* %19, align 16
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = call i32 @AV_RL32(i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %22, %27
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 8
  %32 = call i32 @AV_RL32(i32* %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %32, %37
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %38, i32* %39, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 12
  %42 = call i32 @AV_RL32(i32* %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %42, %47
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %48, i32* %49, align 4
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %146, %3
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 16
  br i1 %52, label %53, label %149

53:                                               ; preds = %50
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %56 = load i32, i32* %55, align 16
  %57 = call i32 @MDS_mul(%struct.TYPE_4__* %54, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @LR(i32 %60, i32 8)
  %62 = call i32 @MDS_mul(%struct.TYPE_4__* %58, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %65, %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 2, %71
  %73 = add nsw i32 %72, 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %67, %76
  %78 = xor i32 %64, %77
  %79 = call i32 @RR(i32 %78, i32 1)
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @LR(i32 %82, i32 1)
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = mul nsw i32 2, %85
  %87 = add nsw i32 %84, %86
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = mul nsw i32 2, %91
  %93 = add nsw i32 %92, 9
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %87, %96
  %98 = xor i32 %83, %97
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %98, i32* %99, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @MDS_mul(%struct.TYPE_4__* %100, i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @LR(i32 %106, i32 8)
  %108 = call i32 @MDS_mul(%struct.TYPE_4__* %104, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %110 = load i32, i32* %109, align 16
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %111, %112
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = mul nsw i32 2, %117
  %119 = add nsw i32 %118, 10
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %113, %122
  %124 = xor i32 %110, %123
  %125 = call i32 @RR(i32 %124, i32 1)
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %125, i32* %126, align 16
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @LR(i32 %128, i32 1)
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %9, align 4
  %132 = mul nsw i32 2, %131
  %133 = add nsw i32 %130, %132
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = mul nsw i32 2, %137
  %139 = add nsw i32 %138, 11
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %133, %142
  %144 = xor i32 %129, %143
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %53
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 2
  store i32 %148, i32* %10, align 4
  br label %50

149:                                              ; preds = %50
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 4
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %156 = load i32, i32* %155, align 8
  %157 = xor i32 %156, %154
  store i32 %157, i32* %155, align 8
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 5
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %164 = load i32, i32* %163, align 4
  %165 = xor i32 %164, %162
  store i32 %165, i32* %163, align 4
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 6
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %172 = load i32, i32* %171, align 16
  %173 = xor i32 %172, %170
  store i32 %173, i32* %171, align 16
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 7
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = xor i32 %180, %178
  store i32 %181, i32* %179, align 4
  %182 = load i32*, i32** %5, align 8
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @AV_WL32(i32* %182, i32 %184)
  %186 = load i32*, i32** %5, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 4
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @AV_WL32(i32* %187, i32 %189)
  %191 = load i32*, i32** %5, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 8
  %193 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %194 = load i32, i32* %193, align 16
  %195 = call i32 @AV_WL32(i32* %192, i32 %194)
  %196 = load i32*, i32** %5, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 12
  %198 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @AV_WL32(i32* %197, i32 %199)
  ret void
}

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @MDS_mul(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @LR(i32, i32) #1

declare dso_local i32 @RR(i32, i32) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
