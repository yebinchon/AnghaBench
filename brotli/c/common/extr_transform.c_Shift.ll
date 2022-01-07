; ModuleID = '/home/carl/AnghaBench/brotli/c/common/extr_transform.c_Shift.c'
source_filename = "/home/carl/AnghaBench/brotli/c/common/extr_transform.c_Shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @Shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Shift(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = and i32 %9, 32767
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 32768
  %13 = sub i32 16777216, %12
  %14 = add i32 %10, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 128
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 127
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %26, i32* %28, align 4
  store i32 1, i32* %4, align 4
  br label %201

29:                                               ; preds = %3
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 192
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %201

35:                                               ; preds = %29
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 224
  br i1 %39, label %40, label %72

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %201

44:                                               ; preds = %40
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 63
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 31
  %53 = shl i32 %52, 6
  %54 = or i32 %48, %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = ashr i32 %57, 6
  %59 = and i32 %58, 31
  %60 = or i32 192, %59
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 192
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, 63
  %69 = or i32 %66, %68
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 %69, i32* %71, align 4
  store i32 2, i32* %4, align 4
  br label %201

72:                                               ; preds = %35
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %75, 240
  br i1 %76, label %77, label %126

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 3
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %4, align 4
  br label %201

82:                                               ; preds = %77
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 63
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 63
  %91 = shl i32 %90, 6
  %92 = or i32 %86, %91
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 15
  %97 = shl i32 %96, 12
  %98 = or i32 %92, %97
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = ashr i32 %101, 12
  %103 = and i32 %102, 15
  %104 = or i32 224, %103
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %104, i32* %106, align 4
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 192
  %111 = load i32, i32* %8, align 4
  %112 = ashr i32 %111, 6
  %113 = and i32 %112, 63
  %114 = or i32 %110, %113
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  store i32 %114, i32* %116, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 192
  %121 = load i32, i32* %8, align 4
  %122 = and i32 %121, 63
  %123 = or i32 %120, %122
  %124 = load i32*, i32** %5, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  store i32 %123, i32* %125, align 4
  store i32 3, i32* %4, align 4
  br label %201

126:                                              ; preds = %72
  %127 = load i32*, i32** %5, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %129, 248
  br i1 %130, label %131, label %196

131:                                              ; preds = %126
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %132, 4
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %4, align 4
  br label %201

136:                                              ; preds = %131
  %137 = load i32*, i32** %5, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 3
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 63
  %141 = load i32*, i32** %5, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 63
  %145 = shl i32 %144, 6
  %146 = or i32 %140, %145
  %147 = load i32*, i32** %5, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 63
  %151 = shl i32 %150, 12
  %152 = or i32 %146, %151
  %153 = load i32*, i32** %5, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 7
  %157 = shl i32 %156, 18
  %158 = or i32 %152, %157
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = ashr i32 %161, 18
  %163 = and i32 %162, 7
  %164 = or i32 240, %163
  %165 = load i32*, i32** %5, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  store i32 %164, i32* %166, align 4
  %167 = load i32*, i32** %5, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, 192
  %171 = load i32, i32* %8, align 4
  %172 = ashr i32 %171, 12
  %173 = and i32 %172, 63
  %174 = or i32 %170, %173
  %175 = load i32*, i32** %5, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  store i32 %174, i32* %176, align 4
  %177 = load i32*, i32** %5, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, 192
  %181 = load i32, i32* %8, align 4
  %182 = ashr i32 %181, 6
  %183 = and i32 %182, 63
  %184 = or i32 %180, %183
  %185 = load i32*, i32** %5, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 2
  store i32 %184, i32* %186, align 4
  %187 = load i32*, i32** %5, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 3
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 192
  %191 = load i32, i32* %8, align 4
  %192 = and i32 %191, 63
  %193 = or i32 %190, %192
  %194 = load i32*, i32** %5, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 3
  store i32 %193, i32* %195, align 4
  store i32 4, i32* %4, align 4
  br label %201

196:                                              ; preds = %126
  br label %197

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199
  store i32 1, i32* %4, align 4
  br label %201

201:                                              ; preds = %200, %136, %134, %82, %80, %44, %43, %34, %19
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
