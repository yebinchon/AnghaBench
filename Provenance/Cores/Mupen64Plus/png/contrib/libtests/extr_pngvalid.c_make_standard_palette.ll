; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_make_standard_palette.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_make_standard_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@make_standard_palette.palette_seed = internal global [2 x i32] [i32 -2023406815, i32 9], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, i32, i32)* @make_standard_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @make_standard_palette(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x [4 x i64]], align 16
  %9 = alloca i32, align 4
  %10 = alloca [4 x i64], align 16
  %11 = alloca [256 x i64], align 16
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca [4 x i64], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %49, %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %52

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 255, i32 0
  %24 = zext i32 %23 to i64
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [256 x [4 x i64]], [256 x [4 x i64]]* %8, i64 0, i64 %26
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %27, i64 0, i64 1
  store i64 %24, i64* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 2
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 255, i32 0
  %34 = zext i32 %33 to i64
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [256 x [4 x i64]], [256 x [4 x i64]]* %8, i64 0, i64 %36
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %37, i64 0, i64 2
  store i64 %34, i64* %38, align 16
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 255, i32 0
  %44 = zext i32 %43 to i64
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [256 x [4 x i64]], [256 x [4 x i64]]* %8, i64 0, i64 %46
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %47, i64 0, i64 3
  store i64 %44, i64* %48, align 8
  br label %49

49:                                               ; preds = %18
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %15

52:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  %53 = getelementptr inbounds [256 x i64], [256 x i64]* %11, i64 0, i64 0
  store i64 0, i64* %53, align 16
  %54 = getelementptr inbounds [256 x i64], [256 x i64]* %11, i64 0, i64 0
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = call i32 @memset(i64* %55, i32 1, i32 2046)
  %57 = getelementptr inbounds [256 x i64], [256 x i64]* %11, i64 0, i64 255
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %94, %52
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 70
  br i1 %60, label %61, label %95

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %66 = call i32 @make_four_random_bytes(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @make_standard_palette.palette_seed, i64 0, i64 0), i64* %65)
  store i32 4, i32* %9, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 %70
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds [256 x i64], [256 x i64]* %11, i64 0, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %67
  %78 = load i64, i64* %12, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [256 x [4 x i64]], [256 x [4 x i64]]* %8, i64 0, i64 %80
  %82 = getelementptr inbounds [4 x i64], [4 x i64]* %81, i64 0, i64 1
  store i64 %78, i64* %82, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [256 x [4 x i64]], [256 x [4 x i64]]* %8, i64 0, i64 %85
  %87 = getelementptr inbounds [4 x i64], [4 x i64]* %86, i64 0, i64 2
  store i64 %83, i64* %87, align 16
  %88 = load i64, i64* %12, align 8
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds [256 x [4 x i64]], [256 x [4 x i64]]* %8, i64 0, i64 %91
  %93 = getelementptr inbounds [4 x i64], [4 x i64]* %92, i64 0, i64 3
  store i64 %88, i64* %93, align 8
  br label %94

94:                                               ; preds = %77, %67
  br label %58

95:                                               ; preds = %58
  br label %96

96:                                               ; preds = %105, %95
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 256
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [256 x [4 x i64]], [256 x [4 x i64]]* %8, i64 0, i64 %101
  %103 = getelementptr inbounds [4 x i64], [4 x i64]* %102, i64 0, i64 0
  %104 = call i32 @make_four_random_bytes(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @make_standard_palette.palette_seed, i64 0, i64 0), i64* %103)
  br label %105

105:                                              ; preds = %99
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %96

108:                                              ; preds = %96
  %109 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %110 = call i32 @make_four_random_bytes(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @make_standard_palette.palette_seed, i64 0, i64 0), i64* %109)
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %108
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %127, %113
  %115 = load i32, i32* %7, align 4
  %116 = icmp slt i32 %115, 256
  br i1 %116, label %117, label %130

117:                                              ; preds = %114
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %121 = load i64, i64* %120, align 16
  %122 = xor i64 %119, %121
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [256 x [4 x i64]], [256 x [4 x i64]]* %8, i64 0, i64 %124
  %126 = getelementptr inbounds [4 x i64], [4 x i64]* %125, i64 0, i64 0
  store i64 %122, i64* %126, align 16
  br label %127

127:                                              ; preds = %117
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %114

130:                                              ; preds = %114
  br label %144

131:                                              ; preds = %108
  store i32 0, i32* %7, align 4
  br label %132

132:                                              ; preds = %140, %131
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 256
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [256 x [4 x i64]], [256 x [4 x i64]]* %8, i64 0, i64 %137
  %139 = getelementptr inbounds [4 x i64], [4 x i64]* %138, i64 0, i64 0
  store i64 255, i64* %139, align 16
  br label %140

140:                                              ; preds = %135
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %132

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143, %130
  %145 = load i32*, i32** %4, align 8
  %146 = load i32, i32* %5, align 4
  %147 = call %struct.TYPE_4__* @store_write_palette(i32* %145, i32 %146)
  store %struct.TYPE_4__* %147, %struct.TYPE_4__** %13, align 8
  store i32 0, i32* %7, align 4
  br label %148

148:                                              ; preds = %205, %144
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %208

152:                                              ; preds = %148
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 1
  %156 = load i64, i64* %155, align 8
  %157 = xor i64 %154, %156
  %158 = getelementptr inbounds [256 x [4 x i64]], [256 x [4 x i64]]* %8, i64 0, i64 %157
  %159 = getelementptr inbounds [4 x i64], [4 x i64]* %158, i64 0, i64 0
  %160 = load i64, i64* %159, align 16
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  store i64 %160, i64* %165, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 1
  %169 = load i64, i64* %168, align 8
  %170 = xor i64 %167, %169
  %171 = getelementptr inbounds [256 x [4 x i64]], [256 x [4 x i64]]* %8, i64 0, i64 %170
  %172 = getelementptr inbounds [4 x i64], [4 x i64]* %171, i64 0, i64 1
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  store i64 %173, i64* %178, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 1
  %182 = load i64, i64* %181, align 8
  %183 = xor i64 %180, %182
  %184 = getelementptr inbounds [256 x [4 x i64]], [256 x [4 x i64]]* %8, i64 0, i64 %183
  %185 = getelementptr inbounds [4 x i64], [4 x i64]* %184, i64 0, i64 2
  %186 = load i64, i64* %185, align 16
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  store i64 %186, i64* %191, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 1
  %195 = load i64, i64* %194, align 8
  %196 = xor i64 %193, %195
  %197 = getelementptr inbounds [256 x [4 x i64]], [256 x [4 x i64]]* %8, i64 0, i64 %196
  %198 = getelementptr inbounds [4 x i64], [4 x i64]* %197, i64 0, i64 3
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 3
  store i64 %199, i64* %204, align 8
  br label %205

205:                                              ; preds = %152
  %206 = load i32, i32* %7, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %7, align 4
  br label %148

208:                                              ; preds = %148
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  ret %struct.TYPE_4__* %209
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @make_four_random_bytes(i32*, i64*) #1

declare dso_local %struct.TYPE_4__* @store_write_palette(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
