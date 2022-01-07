; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_camellia.c_computeSP.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_camellia.c_computeSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SBOX1 = common dso_local global i32* null, align 8
@SP = common dso_local global i32** null, align 8
@SBOX2 = common dso_local global i32* null, align 8
@SBOX3 = common dso_local global i32* null, align 8
@SBOX4 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @computeSP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @computeSP() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %194, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 256
  br i1 %5, label %6, label %197

6:                                                ; preds = %3
  %7 = load i32*, i32** @SBOX1, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = shl i32 %12, 56
  %14 = load i32, i32* %1, align 4
  %15 = shl i32 %14, 48
  %16 = xor i32 %13, %15
  %17 = load i32, i32* %1, align 4
  %18 = shl i32 %17, 40
  %19 = xor i32 %16, %18
  %20 = load i32, i32* %1, align 4
  %21 = shl i32 %20, 24
  %22 = xor i32 %19, %21
  %23 = load i32, i32* %1, align 4
  %24 = xor i32 %22, %23
  %25 = load i32**, i32*** @SP, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %24, i32* %30, align 4
  %31 = load i32, i32* %1, align 4
  %32 = shl i32 %31, 56
  %33 = load i32, i32* %1, align 4
  %34 = shl i32 %33, 48
  %35 = xor i32 %32, %34
  %36 = load i32, i32* %1, align 4
  %37 = shl i32 %36, 40
  %38 = xor i32 %35, %37
  %39 = load i32, i32* %1, align 4
  %40 = shl i32 %39, 24
  %41 = xor i32 %38, %40
  %42 = load i32, i32* %1, align 4
  %43 = shl i32 %42, 16
  %44 = xor i32 %41, %43
  %45 = load i32, i32* %1, align 4
  %46 = shl i32 %45, 8
  %47 = xor i32 %44, %46
  %48 = load i32**, i32*** @SP, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 7
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  %54 = load i32*, i32** @SBOX2, align 8
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* %1, align 4
  %60 = shl i32 %59, 48
  %61 = load i32, i32* %1, align 4
  %62 = shl i32 %61, 40
  %63 = xor i32 %60, %62
  %64 = load i32, i32* %1, align 4
  %65 = shl i32 %64, 32
  %66 = xor i32 %63, %65
  %67 = load i32, i32* %1, align 4
  %68 = shl i32 %67, 24
  %69 = xor i32 %66, %68
  %70 = load i32, i32* %1, align 4
  %71 = shl i32 %70, 16
  %72 = xor i32 %69, %71
  %73 = load i32**, i32*** @SP, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  %79 = load i32, i32* %1, align 4
  %80 = shl i32 %79, 48
  %81 = load i32, i32* %1, align 4
  %82 = shl i32 %81, 40
  %83 = xor i32 %80, %82
  %84 = load i32, i32* %1, align 4
  %85 = shl i32 %84, 32
  %86 = xor i32 %83, %85
  %87 = load i32, i32* %1, align 4
  %88 = shl i32 %87, 16
  %89 = xor i32 %86, %88
  %90 = load i32, i32* %1, align 4
  %91 = shl i32 %90, 8
  %92 = xor i32 %89, %91
  %93 = load i32, i32* %1, align 4
  %94 = xor i32 %92, %93
  %95 = load i32**, i32*** @SP, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 4
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %2, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  %101 = load i32*, i32** @SBOX3, align 8
  %102 = load i32, i32* %2, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %1, align 4
  %106 = load i32, i32* %1, align 4
  %107 = shl i32 %106, 56
  %108 = load i32, i32* %1, align 4
  %109 = shl i32 %108, 40
  %110 = xor i32 %107, %109
  %111 = load i32, i32* %1, align 4
  %112 = shl i32 %111, 32
  %113 = xor i32 %110, %112
  %114 = load i32, i32* %1, align 4
  %115 = shl i32 %114, 16
  %116 = xor i32 %113, %115
  %117 = load i32, i32* %1, align 4
  %118 = shl i32 %117, 8
  %119 = xor i32 %116, %118
  %120 = load i32**, i32*** @SP, align 8
  %121 = getelementptr inbounds i32*, i32** %120, i64 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %2, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  %126 = load i32, i32* %1, align 4
  %127 = shl i32 %126, 56
  %128 = load i32, i32* %1, align 4
  %129 = shl i32 %128, 40
  %130 = xor i32 %127, %129
  %131 = load i32, i32* %1, align 4
  %132 = shl i32 %131, 32
  %133 = xor i32 %130, %132
  %134 = load i32, i32* %1, align 4
  %135 = shl i32 %134, 24
  %136 = xor i32 %133, %135
  %137 = load i32, i32* %1, align 4
  %138 = shl i32 %137, 8
  %139 = xor i32 %136, %138
  %140 = load i32, i32* %1, align 4
  %141 = xor i32 %139, %140
  %142 = load i32**, i32*** @SP, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 5
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %2, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %141, i32* %147, align 4
  %148 = load i32*, i32** @SBOX4, align 8
  %149 = load i32, i32* %2, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %1, align 4
  %153 = load i32, i32* %1, align 4
  %154 = shl i32 %153, 56
  %155 = load i32, i32* %1, align 4
  %156 = shl i32 %155, 48
  %157 = xor i32 %154, %156
  %158 = load i32, i32* %1, align 4
  %159 = shl i32 %158, 32
  %160 = xor i32 %157, %159
  %161 = load i32, i32* %1, align 4
  %162 = shl i32 %161, 8
  %163 = xor i32 %160, %162
  %164 = load i32, i32* %1, align 4
  %165 = xor i32 %163, %164
  %166 = load i32**, i32*** @SP, align 8
  %167 = getelementptr inbounds i32*, i32** %166, i64 3
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %2, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %165, i32* %171, align 4
  %172 = load i32, i32* %1, align 4
  %173 = shl i32 %172, 56
  %174 = load i32, i32* %1, align 4
  %175 = shl i32 %174, 48
  %176 = xor i32 %173, %175
  %177 = load i32, i32* %1, align 4
  %178 = shl i32 %177, 32
  %179 = xor i32 %176, %178
  %180 = load i32, i32* %1, align 4
  %181 = shl i32 %180, 24
  %182 = xor i32 %179, %181
  %183 = load i32, i32* %1, align 4
  %184 = shl i32 %183, 16
  %185 = xor i32 %182, %184
  %186 = load i32, i32* %1, align 4
  %187 = xor i32 %185, %186
  %188 = load i32**, i32*** @SP, align 8
  %189 = getelementptr inbounds i32*, i32** %188, i64 6
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %2, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %187, i32* %193, align 4
  br label %194

194:                                              ; preds = %6
  %195 = load i32, i32* %2, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %2, align 4
  br label %3

197:                                              ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
