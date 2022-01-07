; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_trex_element.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_trex_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i16, i32 }

@OP_NOCAPEXPR = common dso_local global i32 0, align 4
@OP_EXPR = common dso_local global i32 0, align 4
@OP_EOL = common dso_local global i32 0, align 4
@OP_DOT = common dso_local global i32 0, align 4
@TRex_False = common dso_local global i64 0, align 8
@TRex_True = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"number expected\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c", or } expected\00", align 1
@OP_GREEDY = common dso_local global i32 0, align 4
@TREX_SYMBOL_BRANCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @trex_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trex_element(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store i32 -1, i32* %3, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %78 [
    i32 40, label %15
    i32 91, label %53
    i32 131, label %62
    i32 132, label %70
  ]

15:                                               ; preds = %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %17, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 63
  br i1 %24, label %25, label %35

25:                                               ; preds = %15
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %27, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = call i32 @trex_expect(%struct.TYPE_12__* %30, i8 signext 58)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = load i32, i32* @OP_NOCAPEXPR, align 4
  %34 = call i32 @trex_newnode(%struct.TYPE_12__* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %39

35:                                               ; preds = %15
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = load i32, i32* @OP_EXPR, align 4
  %38 = call i32 @trex_newnode(%struct.TYPE_12__* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %25
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = call i32 @trex_list(%struct.TYPE_12__* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i32 %42, i32* %49, align 4
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %3, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %52 = call i32 @trex_expect(%struct.TYPE_12__* %51, i8 signext 41)
  br label %82

53:                                               ; preds = %1
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %55, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %59 = call i32 @trex_class(%struct.TYPE_12__* %58)
  store i32 %59, i32* %3, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %61 = call i32 @trex_expect(%struct.TYPE_12__* %60, i8 signext 93)
  br label %82

62:                                               ; preds = %1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %64, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %68 = load i32, i32* @OP_EOL, align 4
  %69 = call i32 @trex_newnode(%struct.TYPE_12__* %67, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %82

70:                                               ; preds = %1
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %72, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %76 = load i32, i32* @OP_DOT, align 4
  %77 = call i32 @trex_newnode(%struct.TYPE_12__* %75, i32 %76)
  store i32 %77, i32* %3, align 4
  br label %82

78:                                               ; preds = %1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %80 = load i64, i64* @TRex_False, align 8
  %81 = call i32 @trex_charnode(%struct.TYPE_12__* %79, i64 %80)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %70, %62, %53, %39
  %83 = load i64, i64* @TRex_False, align 8
  store i64 %83, i64* %6, align 8
  store i16 0, i16* %7, align 2
  store i16 0, i16* %8, align 2
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %159 [
    i32 129, label %88
    i32 130, label %94
    i32 128, label %100
    i32 123, label %106
  ]

88:                                               ; preds = %82
  store i16 0, i16* %7, align 2
  store i16 -1, i16* %8, align 2
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %90, align 8
  %93 = load i64, i64* @TRex_True, align 8
  store i64 %93, i64* %6, align 8
  br label %159

94:                                               ; preds = %82
  store i16 1, i16* %7, align 2
  store i16 -1, i16* %8, align 2
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %96, align 8
  %99 = load i64, i64* @TRex_True, align 8
  store i64 %99, i64* %6, align 8
  br label %159

100:                                              ; preds = %82
  store i16 0, i16* %7, align 2
  store i16 1, i16* %8, align 2
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %102, align 8
  %105 = load i64, i64* @TRex_True, align 8
  store i64 %105, i64* %6, align 8
  br label %159

106:                                              ; preds = %82
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %108, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @isdigit(i32 %114) #3
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %106
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %119 = call i32 @_SC(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %120 = call i32 @trex_error(%struct.TYPE_12__* %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %106
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %123 = call i64 @trex_parsenumber(%struct.TYPE_12__* %122)
  %124 = trunc i64 %123 to i16
  store i16 %124, i16* %7, align 2
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %127, align 4
  switch i32 %128, label %153 [
    i32 125, label %129
    i32 44, label %135
  ]

129:                                              ; preds = %121
  %130 = load i16, i16* %7, align 2
  store i16 %130, i16* %8, align 2
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %132, align 8
  br label %157

135:                                              ; preds = %121
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %137, align 8
  store i16 -1, i16* %8, align 2
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @isdigit(i32 %143) #3
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %135
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %148 = call i64 @trex_parsenumber(%struct.TYPE_12__* %147)
  %149 = trunc i64 %148 to i16
  store i16 %149, i16* %8, align 2
  br label %150

150:                                              ; preds = %146, %135
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %152 = call i32 @trex_expect(%struct.TYPE_12__* %151, i8 signext 125)
  br label %157

153:                                              ; preds = %121
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %155 = call i32 @_SC(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %156 = call i32 @trex_error(%struct.TYPE_12__* %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %150, %129
  %158 = load i64, i64* @TRex_True, align 8
  store i64 %158, i64* %6, align 8
  br label %159

159:                                              ; preds = %82, %157, %100, %94, %88
  %160 = load i64, i64* %6, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %189

162:                                              ; preds = %159
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %164 = load i32, i32* @OP_GREEDY, align 4
  %165 = call i32 @trex_newnode(%struct.TYPE_12__* %163, i32 %164)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %3, align 4
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  store i32 %166, i32* %173, align 4
  %174 = load i16, i16* %7, align 2
  %175 = zext i16 %174 to i32
  %176 = shl i32 %175, 16
  %177 = load i16, i16* %8, align 2
  %178 = zext i16 %177 to i32
  %179 = or i32 %176, %178
  %180 = trunc i32 %179 to i16
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  store i16 %180, i16* %187, align 4
  %188 = load i32, i32* %9, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %162, %159
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @TREX_SYMBOL_BRANCH, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %231

196:                                              ; preds = %189
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 41
  br i1 %201, label %202, label %231

202:                                              ; preds = %196
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 129
  br i1 %207, label %208, label %231

208:                                              ; preds = %202
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 130
  br i1 %213, label %214, label %231

214:                                              ; preds = %208
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %231

220:                                              ; preds = %214
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %222 = call i32 @trex_element(%struct.TYPE_12__* %221)
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* %10, align 4
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %225, align 8
  %227 = load i32, i32* %3, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 2
  store i32 %223, i32* %230, align 4
  br label %231

231:                                              ; preds = %220, %214, %208, %202, %196, %189
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local i32 @trex_expect(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i32 @trex_newnode(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @trex_list(%struct.TYPE_12__*) #1

declare dso_local i32 @trex_class(%struct.TYPE_12__*) #1

declare dso_local i32 @trex_charnode(%struct.TYPE_12__*, i64) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

declare dso_local i32 @trex_error(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @_SC(i8*) #1

declare dso_local i64 @trex_parsenumber(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
