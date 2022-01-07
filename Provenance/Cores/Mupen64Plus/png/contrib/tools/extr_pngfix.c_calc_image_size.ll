; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_calc_image_size.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_calc_image_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, i32, i32, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"IHDR: colour type\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"IHDR: bit depth\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"IHDR: width\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"IHDR: height\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"IHDR: compression method\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"IHDR: filter method\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"IHDR: interlace method\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @calc_image_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_image_size(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [3 x i32], align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %13 = load %struct.file*, %struct.file** %2, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %3, align 4
  %16 = load %struct.file*, %struct.file** %2, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %19 [
    i32 0, label %25
    i32 3, label %42
    i32 2, label %56
    i32 4, label %66
    i32 6, label %76
  ]

19:                                               ; preds = %1
  %20 = load %struct.file*, %struct.file** %2, align 8
  %21 = call i32 @stop_invalid(%struct.file* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %82, %72, %62, %54, %40, %19
  %23 = load %struct.file*, %struct.file** %2, align 8
  %24 = call i32 @stop_invalid(%struct.file* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %1, %22
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 4
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 8
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 16
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %22

41:                                               ; preds = %37, %34, %31, %28, %25
  br label %86

42:                                               ; preds = %1
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 2
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 4
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 8
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %22

55:                                               ; preds = %51, %48, %45, %42
  br label %86

56:                                               ; preds = %1
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 8
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 16
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %22

63:                                               ; preds = %59, %56
  %64 = load i32, i32* %3, align 4
  %65 = mul nsw i32 %64, 3
  store i32 %65, i32* %3, align 4
  br label %86

66:                                               ; preds = %1
  %67 = load i32, i32* %3, align 4
  %68 = icmp ne i32 %67, 8
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, 16
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %22

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %3, align 4
  %75 = mul nsw i32 %74, 2
  store i32 %75, i32* %3, align 4
  br label %86

76:                                               ; preds = %1
  %77 = load i32, i32* %3, align 4
  %78 = icmp ne i32 %77, 8
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %3, align 4
  %81 = icmp ne i32 %80, 16
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %22

83:                                               ; preds = %79, %76
  %84 = load i32, i32* %3, align 4
  %85 = mul nsw i32 %84, 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %83, %73, %63, %55, %41
  %87 = load %struct.file*, %struct.file** %2, align 8
  %88 = getelementptr inbounds %struct.file, %struct.file* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load %struct.file*, %struct.file** %2, align 8
  %93 = getelementptr inbounds %struct.file, %struct.file* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %94, 2147483647
  br i1 %95, label %96, label %99

96:                                               ; preds = %91, %86
  %97 = load %struct.file*, %struct.file** %2, align 8
  %98 = call i32 @stop_invalid(%struct.file* %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %218

99:                                               ; preds = %91
  %100 = load %struct.file*, %struct.file** %2, align 8
  %101 = getelementptr inbounds %struct.file, %struct.file* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load %struct.file*, %struct.file** %2, align 8
  %106 = getelementptr inbounds %struct.file, %struct.file* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %107, 2147483647
  br i1 %108, label %109, label %112

109:                                              ; preds = %104, %99
  %110 = load %struct.file*, %struct.file** %2, align 8
  %111 = call i32 @stop_invalid(%struct.file* %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %217

112:                                              ; preds = %104
  %113 = load %struct.file*, %struct.file** %2, align 8
  %114 = getelementptr inbounds %struct.file, %struct.file* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.file*, %struct.file** %2, align 8
  %119 = call i32 @stop_invalid(%struct.file* %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %216

120:                                              ; preds = %112
  %121 = load %struct.file*, %struct.file** %2, align 8
  %122 = getelementptr inbounds %struct.file, %struct.file* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.file*, %struct.file** %2, align 8
  %127 = call i32 @stop_invalid(%struct.file* %126, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %215

128:                                              ; preds = %120
  %129 = load %struct.file*, %struct.file** %2, align 8
  %130 = getelementptr inbounds %struct.file, %struct.file* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  switch i32 %131, label %211 [
    i32 129, label %132
    i32 128, label %181
  ]

132:                                              ; preds = %128
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %174, %132
  %134 = load i32, i32* %4, align 4
  %135 = icmp sle i32 %134, 6
  br i1 %135, label %136, label %177

136:                                              ; preds = %133
  %137 = load %struct.file*, %struct.file** %2, align 8
  %138 = getelementptr inbounds %struct.file, %struct.file* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @PNG_PASS_COLS(i32 %139, i32 %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %173

144:                                              ; preds = %136
  %145 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %146 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %147 = call i32 @uarb_set(i32* %146, i32 7)
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @uarb_set(i32* %149, i32 %150)
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @uarb_mult_digit(i32* %145, i32 %147, i32* %148, i32 %151, i32 %152)
  store i32 %153, i32* %9, align 4
  %154 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @uarb_shift(i32* %154, i32 %155, i32 3)
  store i32 %156, i32* %9, align 4
  %157 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @uarb_inc(i32* %157, i32 %158, i32 1)
  store i32 %159, i32* %9, align 4
  %160 = load %struct.file*, %struct.file** %2, align 8
  %161 = getelementptr inbounds %struct.file, %struct.file* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.file*, %struct.file** %2, align 8
  %167 = getelementptr inbounds %struct.file, %struct.file* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @PNG_PASS_ROWS(i32 %168, i32 %169)
  %171 = call i8* @uarb_mult32(i32 %162, i32 %163, i32* %164, i32 %165, i32 %170)
  %172 = ptrtoint i8* %171 to i32
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %144, %136
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %4, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %4, align 4
  br label %133

177:                                              ; preds = %133
  %178 = load i32, i32* %5, align 4
  %179 = load %struct.file*, %struct.file** %2, align 8
  %180 = getelementptr inbounds %struct.file, %struct.file* %179, i32 0, i32 7
  store i32 %178, i32* %180, align 4
  br label %214

181:                                              ; preds = %128
  %182 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %183 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %184 = call i32 @uarb_set(i32* %183, i32 7)
  %185 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %187 = load %struct.file*, %struct.file** %2, align 8
  %188 = getelementptr inbounds %struct.file, %struct.file* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @uarb_set(i32* %186, i32 %189)
  %191 = load i32, i32* %3, align 4
  %192 = call i32 @uarb_mult_digit(i32* %182, i32 %184, i32* %185, i32 %190, i32 %191)
  store i32 %192, i32* %10, align 4
  %193 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @uarb_shift(i32* %193, i32 %194, i32 3)
  store i32 %195, i32* %10, align 4
  %196 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %197 = load i32, i32* %10, align 4
  %198 = call i32 @uarb_inc(i32* %196, i32 %197, i32 1)
  store i32 %198, i32* %10, align 4
  %199 = load %struct.file*, %struct.file** %2, align 8
  %200 = getelementptr inbounds %struct.file, %struct.file* %199, i32 0, i32 8
  %201 = load i32, i32* %200, align 8
  %202 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %203 = load i32, i32* %10, align 4
  %204 = load %struct.file*, %struct.file** %2, align 8
  %205 = getelementptr inbounds %struct.file, %struct.file* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = call i8* @uarb_mult32(i32 %201, i32 0, i32* %202, i32 %203, i32 %206)
  %208 = ptrtoint i8* %207 to i32
  %209 = load %struct.file*, %struct.file** %2, align 8
  %210 = getelementptr inbounds %struct.file, %struct.file* %209, i32 0, i32 7
  store i32 %208, i32* %210, align 4
  br label %214

211:                                              ; preds = %128
  %212 = load %struct.file*, %struct.file** %2, align 8
  %213 = call i32 @stop_invalid(%struct.file* %212, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %214

214:                                              ; preds = %211, %181, %177
  br label %215

215:                                              ; preds = %214, %125
  br label %216

216:                                              ; preds = %215, %117
  br label %217

217:                                              ; preds = %216, %109
  br label %218

218:                                              ; preds = %217, %96
  %219 = load %struct.file*, %struct.file** %2, align 8
  %220 = getelementptr inbounds %struct.file, %struct.file* %219, i32 0, i32 7
  %221 = load i32, i32* %220, align 4
  %222 = icmp sge i32 %221, 1
  br i1 %222, label %223, label %228

223:                                              ; preds = %218
  %224 = load %struct.file*, %struct.file** %2, align 8
  %225 = getelementptr inbounds %struct.file, %struct.file* %224, i32 0, i32 7
  %226 = load i32, i32* %225, align 4
  %227 = icmp sle i32 %226, 5
  br label %228

228:                                              ; preds = %223, %218
  %229 = phi i1 [ false, %218 ], [ %227, %223 ]
  %230 = zext i1 %229 to i32
  %231 = call i32 @assert(i32 %230)
  ret i32 1
}

declare dso_local i32 @stop_invalid(%struct.file*, i8*) #1

declare dso_local i32 @PNG_PASS_COLS(i32, i32) #1

declare dso_local i32 @uarb_mult_digit(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @uarb_set(i32*, i32) #1

declare dso_local i32 @uarb_shift(i32*, i32, i32) #1

declare dso_local i32 @uarb_inc(i32*, i32, i32) #1

declare dso_local i8* @uarb_mult32(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @PNG_PASS_ROWS(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
