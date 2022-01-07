; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_twofish.c_twofish_decrypt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_twofish.c_twofish_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*, i32*)* @twofish_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twofish_decrypt(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @AV_RL32(i32* %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %14, %19
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %20, i32* %21, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = call i32 @AV_RL32(i32* %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 5
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %24, %29
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 8
  %34 = call i32 @AV_RL32(i32* %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 6
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %34, %39
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %40, i32* %41, align 16
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 12
  %44 = call i32 @AV_RL32(i32* %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 7
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %44, %49
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %50, i32* %51, align 4
  store i32 15, i32* %12, align 4
  br label %52

52:                                               ; preds = %148, %4
  %53 = load i32, i32* %12, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %151

55:                                               ; preds = %52
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @MDS_mul(%struct.TYPE_4__* %56, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @LR(i32 %62, i32 8)
  %64 = call i32 @MDS_mul(%struct.TYPE_4__* %60, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %66 = load i32, i32* %65, align 16
  %67 = call i32 @LR(i32 %66, i32 1)
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %68, %69
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = mul nsw i32 2, %74
  %76 = add nsw i32 %75, 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %70, %79
  %81 = xor i32 %67, %80
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %81, i32* %82, align 16
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = mul nsw i32 2, %86
  %88 = add nsw i32 %85, %87
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = mul nsw i32 2, %92
  %94 = add nsw i32 %93, 9
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %88, %97
  %99 = xor i32 %84, %98
  %100 = call i32 @RR(i32 %99, i32 1)
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %100, i32* %101, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %104 = load i32, i32* %103, align 16
  %105 = call i32 @MDS_mul(%struct.TYPE_4__* %102, i32 %104)
  store i32 %105, i32* %10, align 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @LR(i32 %108, i32 8)
  %110 = call i32 @MDS_mul(%struct.TYPE_4__* %106, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @LR(i32 %112, i32 1)
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %114, %115
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = mul nsw i32 2, %120
  %122 = add nsw i32 %121, 6
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %116, %125
  %127 = xor i32 %113, %126
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %127, i32* %128, align 8
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %11, align 4
  %133 = mul nsw i32 2, %132
  %134 = add nsw i32 %131, %133
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = mul nsw i32 2, %138
  %140 = add nsw i32 %139, 7
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %137, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %134, %143
  %145 = xor i32 %130, %144
  %146 = call i32 @RR(i32 %145, i32 1)
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %55
  %149 = load i32, i32* %12, align 4
  %150 = sub nsw i32 %149, 2
  store i32 %150, i32* %12, align 4
  br label %52

151:                                              ; preds = %52
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %158 = load i32, i32* %157, align 16
  %159 = xor i32 %158, %156
  store i32 %159, i32* %157, align 16
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = xor i32 %166, %164
  store i32 %167, i32* %165, align 4
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %174 = load i32, i32* %173, align 8
  %175 = xor i32 %174, %172
  store i32 %175, i32* %173, align 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 3
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %182 = load i32, i32* %181, align 4
  %183 = xor i32 %182, %180
  store i32 %183, i32* %181, align 4
  %184 = load i32*, i32** %8, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %213

186:                                              ; preds = %151
  %187 = load i32*, i32** %8, align 8
  %188 = call i32 @AV_RL32(i32* %187)
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %190 = load i32, i32* %189, align 16
  %191 = xor i32 %190, %188
  store i32 %191, i32* %189, align 16
  %192 = load i32*, i32** %8, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 4
  %194 = call i32 @AV_RL32(i32* %193)
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = xor i32 %196, %194
  store i32 %197, i32* %195, align 4
  %198 = load i32*, i32** %8, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 8
  %200 = call i32 @AV_RL32(i32* %199)
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %202 = load i32, i32* %201, align 8
  %203 = xor i32 %202, %200
  store i32 %203, i32* %201, align 8
  %204 = load i32*, i32** %8, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 12
  %206 = call i32 @AV_RL32(i32* %205)
  %207 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %208 = load i32, i32* %207, align 4
  %209 = xor i32 %208, %206
  store i32 %209, i32* %207, align 4
  %210 = load i32*, i32** %8, align 8
  %211 = load i32*, i32** %7, align 8
  %212 = call i32 @memcpy(i32* %210, i32* %211, i32 16)
  br label %213

213:                                              ; preds = %186, %151
  %214 = load i32*, i32** %6, align 8
  %215 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @AV_WL32(i32* %214, i32 %216)
  %218 = load i32*, i32** %6, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 4
  %220 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @AV_WL32(i32* %219, i32 %221)
  %223 = load i32*, i32** %6, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 8
  %225 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %226 = load i32, i32* %225, align 16
  %227 = call i32 @AV_WL32(i32* %224, i32 %226)
  %228 = load i32*, i32** %6, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 12
  %230 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @AV_WL32(i32* %229, i32 %231)
  ret void
}

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @MDS_mul(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @LR(i32, i32) #1

declare dso_local i32 @RR(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
