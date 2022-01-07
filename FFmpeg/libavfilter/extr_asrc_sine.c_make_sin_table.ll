; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_sine.c_make_sin_table.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_sine.c_make_sin_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_PERIOD = common dso_local global i32 0, align 4
@AMPLITUDE = common dso_local global i32 0, align 4
@AMPLITUDE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @make_sin_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_sin_table(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %13 = load i32, i32* @LOG_PERIOD, align 4
  %14 = sub nsw i32 %13, 2
  %15 = shl i32 1, %14
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @AMPLITUDE, align 4
  %17 = load i32, i32* @AMPLITUDE_SHIFT, align 4
  %18 = shl i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = mul i32 %19, %20
  %22 = shl i32 %21, 32
  store i32 %22, i32* %5, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %126, %1
  %32 = load i32, i32* %6, align 4
  %33 = icmp ugt i32 %32, 1
  br i1 %33, label %34, label %129

34:                                               ; preds = %31
  store i32 65536, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %121, %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %3, align 4
  %38 = udiv i32 %37, 2
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %125

40:                                               ; preds = %35
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %45, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32*, i32** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub i32 %55, %56
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %2, align 8
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sub i32 %62, %63
  %65 = load i32, i32* %6, align 4
  %66 = sub i32 %64, %65
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %61, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %60, %69
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = mul i32 %71, %72
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = mul i32 %74, %75
  %77 = add i32 %73, %76
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %40, %92
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %12, align 4
  %83 = mul i32 %81, %82
  %84 = udiv i32 %80, %83
  %85 = add i32 %79, %84
  %86 = add i32 %85, 1
  %87 = lshr i32 %86, 1
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %94

92:                                               ; preds = %78
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %10, align 4
  br label %78

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = mul i32 %95, %96
  %98 = add i32 %97, 32767
  %99 = lshr i32 %98, 16
  %100 = load i32*, i32** %2, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %6, align 4
  %103 = udiv i32 %102, 2
  %104 = add i32 %101, %103
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %100, i64 %105
  store i32 %99, i32* %106, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %8, align 4
  %109 = mul i32 %107, %108
  %110 = add i32 %109, 32768
  %111 = lshr i32 %110, 16
  %112 = load i32*, i32** %2, align 8
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* %7, align 4
  %115 = sub i32 %113, %114
  %116 = load i32, i32* %6, align 4
  %117 = udiv i32 %116, 2
  %118 = sub i32 %115, %117
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %112, i64 %119
  store i32 %111, i32* %120, align 4
  br label %121

121:                                              ; preds = %94
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = add i32 %123, %122
  store i32 %124, i32* %7, align 4
  br label %35

125:                                              ; preds = %35
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %6, align 4
  %128 = udiv i32 %127, 2
  store i32 %128, i32* %6, align 4
  br label %31

129:                                              ; preds = %31
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %150, %129
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %3, align 4
  %133 = icmp ule i32 %131, %132
  br i1 %133, label %134, label %153

134:                                              ; preds = %130
  %135 = load i32*, i32** %2, align 8
  %136 = load i32, i32* %7, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @AMPLITUDE_SHIFT, align 4
  %141 = sub nsw i32 %140, 1
  %142 = shl i32 1, %141
  %143 = add nsw i32 %139, %142
  %144 = load i32, i32* @AMPLITUDE_SHIFT, align 4
  %145 = ashr i32 %143, %144
  %146 = load i32*, i32** %2, align 8
  %147 = load i32, i32* %7, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %145, i32* %149, align 4
  br label %150

150:                                              ; preds = %134
  %151 = load i32, i32* %7, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %130

153:                                              ; preds = %130
  store i32 0, i32* %7, align 4
  br label %154

154:                                              ; preds = %171, %153
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* %3, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %158, label %174

158:                                              ; preds = %154
  %159 = load i32*, i32** %2, align 8
  %160 = load i32, i32* %7, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %2, align 8
  %165 = load i32, i32* %3, align 4
  %166 = mul i32 %165, 2
  %167 = load i32, i32* %7, align 4
  %168 = sub i32 %166, %167
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %164, i64 %169
  store i32 %163, i32* %170, align 4
  br label %171

171:                                              ; preds = %158
  %172 = load i32, i32* %7, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %154

174:                                              ; preds = %154
  store i32 0, i32* %7, align 4
  br label %175

175:                                              ; preds = %194, %174
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %3, align 4
  %178 = mul i32 2, %177
  %179 = icmp ult i32 %176, %178
  br i1 %179, label %180, label %197

180:                                              ; preds = %175
  %181 = load i32*, i32** %2, align 8
  %182 = load i32, i32* %7, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = sub nsw i32 0, %185
  %187 = load i32*, i32** %2, align 8
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %3, align 4
  %190 = mul i32 2, %189
  %191 = add i32 %188, %190
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %187, i64 %192
  store i32 %186, i32* %193, align 4
  br label %194

194:                                              ; preds = %180
  %195 = load i32, i32* %7, align 4
  %196 = add i32 %195, 1
  store i32 %196, i32* %7, align 4
  br label %175

197:                                              ; preds = %175
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
