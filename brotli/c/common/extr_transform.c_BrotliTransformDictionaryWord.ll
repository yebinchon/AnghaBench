; ModuleID = '/home/carl/AnghaBench/brotli/c/common/extr_transform.c_BrotliTransformDictionaryWord.c'
source_filename = "/home/carl/AnghaBench/brotli/c/common/extr_transform.c_BrotliTransformDictionaryWord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@BROTLI_TRANSFORM_OMIT_LAST_9 = common dso_local global i32 0, align 4
@BROTLI_TRANSFORM_OMIT_FIRST_1 = common dso_local global i32 0, align 4
@BROTLI_TRANSFORM_OMIT_FIRST_9 = common dso_local global i32 0, align 4
@BROTLI_TRANSFORM_UPPERCASE_FIRST = common dso_local global i32 0, align 4
@BROTLI_TRANSFORM_UPPERCASE_ALL = common dso_local global i32 0, align 4
@BROTLI_TRANSFORM_SHIFT_FIRST = common dso_local global i32 0, align 4
@BROTLI_TRANSFORM_SHIFT_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BrotliTransformDictionaryWord(i32* %0, i32* %1, i32 %2, %struct.TYPE_6__* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32* @BROTLI_TRANSFORM_PREFIX(%struct.TYPE_6__* %26, i32 %27)
  store i32* %28, i32** %12, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @BROTLI_TRANSFORM_TYPE(%struct.TYPE_6__* %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32* @BROTLI_TRANSFORM_SUFFIX(%struct.TYPE_6__* %32, i32 %33)
  store i32* %34, i32** %14, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %12, align 8
  %37 = load i32, i32* %35, align 4
  store i32 %37, i32* %15, align 4
  br label %38

38:                                               ; preds = %42, %5
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %15, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %12, align 8
  %45 = load i32, i32* %43, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %45, i32* %50, align 4
  br label %38

51:                                               ; preds = %38
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* @BROTLI_TRANSFORM_OMIT_LAST_9, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %81

60:                                               ; preds = %51
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @BROTLI_TRANSFORM_OMIT_FIRST_1, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* @BROTLI_TRANSFORM_OMIT_FIRST_9, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* @BROTLI_TRANSFORM_OMIT_FIRST_1, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sub nsw i32 %69, %71
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %7, align 8
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %68, %64, %60
  br label %81

81:                                               ; preds = %80, %56
  br label %82

82:                                               ; preds = %86, %81
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %17, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 %92, i32* %97, align 4
  br label %82

98:                                               ; preds = %82
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* @BROTLI_TRANSFORM_UPPERCASE_FIRST, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %8, align 4
  %106 = sub nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = call i32 @ToUpperCase(i32* %108)
  br label %217

110:                                              ; preds = %98
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* @BROTLI_TRANSFORM_UPPERCASE_ALL, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %135

114:                                              ; preds = %110
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %8, align 4
  %118 = sub nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  store i32* %120, i32** %19, align 8
  br label %121

121:                                              ; preds = %124, %114
  %122 = load i32, i32* %8, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load i32*, i32** %19, align 8
  %126 = call i32 @ToUpperCase(i32* %125)
  store i32 %126, i32* %20, align 4
  %127 = load i32, i32* %20, align 4
  %128 = load i32*, i32** %19, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %19, align 8
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* %8, align 4
  %133 = sub nsw i32 %132, %131
  store i32 %133, i32* %8, align 4
  br label %121

134:                                              ; preds = %121
  br label %216

135:                                              ; preds = %110
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* @BROTLI_TRANSFORM_SHIFT_FIRST, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %168

139:                                              ; preds = %135
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = mul nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = mul nsw i32 %151, 2
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %150, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 8
  %158 = add i32 %147, %157
  store i32 %158, i32* %21, align 4
  %159 = load i32*, i32** %6, align 8
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %8, align 4
  %162 = sub nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %159, i64 %163
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %21, align 4
  %167 = call i32 @Shift(i32* %164, i32 %165, i32 %166)
  br label %215

168:                                              ; preds = %135
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* @BROTLI_TRANSFORM_SHIFT_ALL, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %214

172:                                              ; preds = %168
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = mul nsw i32 %176, 2
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = mul nsw i32 %184, 2
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %183, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = shl i32 %189, 8
  %191 = add i32 %180, %190
  store i32 %191, i32* %22, align 4
  %192 = load i32*, i32** %6, align 8
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* %8, align 4
  %195 = sub nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %192, i64 %196
  store i32* %197, i32** %23, align 8
  br label %198

198:                                              ; preds = %201, %172
  %199 = load i32, i32* %8, align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %213

201:                                              ; preds = %198
  %202 = load i32*, i32** %23, align 8
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* %22, align 4
  %205 = call i32 @Shift(i32* %202, i32 %203, i32 %204)
  store i32 %205, i32* %24, align 4
  %206 = load i32, i32* %24, align 4
  %207 = load i32*, i32** %23, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  store i32* %209, i32** %23, align 8
  %210 = load i32, i32* %24, align 4
  %211 = load i32, i32* %8, align 4
  %212 = sub nsw i32 %211, %210
  store i32 %212, i32* %8, align 4
  br label %198

213:                                              ; preds = %198
  br label %214

214:                                              ; preds = %213, %168
  br label %215

215:                                              ; preds = %214, %139
  br label %216

216:                                              ; preds = %215, %134
  br label %217

217:                                              ; preds = %216, %102
  %218 = load i32*, i32** %14, align 8
  %219 = getelementptr inbounds i32, i32* %218, i32 1
  store i32* %219, i32** %14, align 8
  %220 = load i32, i32* %218, align 4
  store i32 %220, i32* %25, align 4
  br label %221

221:                                              ; preds = %225, %217
  %222 = load i32, i32* %25, align 4
  %223 = add nsw i32 %222, -1
  store i32 %223, i32* %25, align 4
  %224 = icmp ne i32 %222, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %221
  %226 = load i32*, i32** %14, align 8
  %227 = getelementptr inbounds i32, i32* %226, i32 1
  store i32* %227, i32** %14, align 8
  %228 = load i32, i32* %226, align 4
  %229 = load i32*, i32** %6, align 8
  %230 = load i32, i32* %11, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %11, align 4
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i32, i32* %229, i64 %232
  store i32 %228, i32* %233, align 4
  br label %221

234:                                              ; preds = %221
  %235 = load i32, i32* %11, align 4
  ret i32 %235
}

declare dso_local i32* @BROTLI_TRANSFORM_PREFIX(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @BROTLI_TRANSFORM_TYPE(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @BROTLI_TRANSFORM_SUFFIX(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ToUpperCase(i32*) #1

declare dso_local i32 @Shift(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
