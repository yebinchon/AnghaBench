; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_big5.h_big5_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_big5.h_big5_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i16, i16 }

@big5_uni2indx_page00 = common dso_local global %struct.TYPE_10__* null, align 8
@big5_uni2indx_page02 = common dso_local global %struct.TYPE_10__* null, align 8
@big5_uni2indx_page20 = common dso_local global %struct.TYPE_10__* null, align 8
@big5_uni2indx_page24 = common dso_local global %struct.TYPE_10__* null, align 8
@big5_uni2indx_page30 = common dso_local global %struct.TYPE_10__* null, align 8
@big5_uni2indx_page4e = common dso_local global %struct.TYPE_10__* null, align 8
@big5_uni2indx_pagefa = common dso_local global %struct.TYPE_10__* null, align 8
@big5_uni2indx_pagefe = common dso_local global %struct.TYPE_10__* null, align 8
@big5_2charset = common dso_local global i16* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @big5_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @big5_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sge i32 %14, 2
  br i1 %15, label %16, label %210

16:                                               ; preds = %4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 256
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @big5_uni2indx_page00, align 8
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i64 %26
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %10, align 8
  br label %126

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %29, 512
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 1120
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** @big5_uni2indx_page02, align 8
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 4
  %38 = sub nsw i32 %37, 32
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %39
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %10, align 8
  br label %125

41:                                               ; preds = %31, %28
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 8192
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 8896
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** @big5_uni2indx_page20, align 8
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 4
  %51 = sub nsw i32 %50, 512
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i64 %52
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %10, align 8
  br label %124

54:                                               ; preds = %44, %41
  %55 = load i32, i32* %8, align 4
  %56 = icmp sge i32 %55, 9216
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 9808
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** @big5_uni2indx_page24, align 8
  %62 = load i32, i32* %8, align 4
  %63 = ashr i32 %62, 4
  %64 = sub nsw i32 %63, 576
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i64 %65
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %10, align 8
  br label %123

67:                                               ; preds = %57, %54
  %68 = load i32, i32* %8, align 4
  %69 = icmp sge i32 %68, 12288
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 13280
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** @big5_uni2indx_page30, align 8
  %75 = load i32, i32* %8, align 4
  %76 = ashr i32 %75, 4
  %77 = sub nsw i32 %76, 768
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i64 %78
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %10, align 8
  br label %122

80:                                               ; preds = %70, %67
  %81 = load i32, i32* %8, align 4
  %82 = icmp sge i32 %81, 19968
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 40880
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** @big5_uni2indx_page4e, align 8
  %88 = load i32, i32* %8, align 4
  %89 = ashr i32 %88, 4
  %90 = sub nsw i32 %89, 1248
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 %91
  store %struct.TYPE_10__* %92, %struct.TYPE_10__** %10, align 8
  br label %121

93:                                               ; preds = %83, %80
  %94 = load i32, i32* %8, align 4
  %95 = icmp sge i32 %94, 64000
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 64016
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** @big5_uni2indx_pagefa, align 8
  %101 = load i32, i32* %8, align 4
  %102 = ashr i32 %101, 4
  %103 = sub nsw i32 %102, 4000
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i64 %104
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %10, align 8
  br label %120

106:                                              ; preds = %96, %93
  %107 = load i32, i32* %8, align 4
  %108 = icmp sge i32 %107, 65024
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %110, 65392
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** @big5_uni2indx_pagefe, align 8
  %114 = load i32, i32* %8, align 4
  %115 = ashr i32 %114, 4
  %116 = sub nsw i32 %115, 4064
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i64 %117
  store %struct.TYPE_10__* %118, %struct.TYPE_10__** %10, align 8
  br label %119

119:                                              ; preds = %112, %109, %106
  br label %120

120:                                              ; preds = %119, %99
  br label %121

121:                                              ; preds = %120, %86
  br label %122

122:                                              ; preds = %121, %73
  br label %123

123:                                              ; preds = %122, %60
  br label %124

124:                                              ; preds = %123, %47
  br label %125

125:                                              ; preds = %124, %34
  br label %126

126:                                              ; preds = %125, %22
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %128 = icmp ne %struct.TYPE_10__* %127, null
  br i1 %128, label %129, label %208

129:                                              ; preds = %126
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i16, i16* %131, align 2
  store i16 %132, i16* %11, align 2
  %133 = load i32, i32* %8, align 4
  %134 = and i32 %133, 15
  store i32 %134, i32* %12, align 4
  %135 = load i16, i16* %11, align 2
  %136 = zext i16 %135 to i32
  %137 = load i32, i32* %12, align 4
  %138 = shl i32 1, %137
  %139 = and i32 %136, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %207

141:                                              ; preds = %129
  %142 = load i32, i32* %12, align 4
  %143 = shl i32 1, %142
  %144 = sub nsw i32 %143, 1
  %145 = load i16, i16* %11, align 2
  %146 = zext i16 %145 to i32
  %147 = and i32 %146, %144
  %148 = trunc i32 %147 to i16
  store i16 %148, i16* %11, align 2
  %149 = load i16, i16* %11, align 2
  %150 = zext i16 %149 to i32
  %151 = and i32 %150, 21845
  %152 = load i16, i16* %11, align 2
  %153 = zext i16 %152 to i32
  %154 = and i32 %153, 43690
  %155 = ashr i32 %154, 1
  %156 = add nsw i32 %151, %155
  %157 = trunc i32 %156 to i16
  store i16 %157, i16* %11, align 2
  %158 = load i16, i16* %11, align 2
  %159 = zext i16 %158 to i32
  %160 = and i32 %159, 13107
  %161 = load i16, i16* %11, align 2
  %162 = zext i16 %161 to i32
  %163 = and i32 %162, 52428
  %164 = ashr i32 %163, 2
  %165 = add nsw i32 %160, %164
  %166 = trunc i32 %165 to i16
  store i16 %166, i16* %11, align 2
  %167 = load i16, i16* %11, align 2
  %168 = zext i16 %167 to i32
  %169 = and i32 %168, 3855
  %170 = load i16, i16* %11, align 2
  %171 = zext i16 %170 to i32
  %172 = and i32 %171, 61680
  %173 = ashr i32 %172, 4
  %174 = add nsw i32 %169, %173
  %175 = trunc i32 %174 to i16
  store i16 %175, i16* %11, align 2
  %176 = load i16, i16* %11, align 2
  %177 = zext i16 %176 to i32
  %178 = and i32 %177, 255
  %179 = load i16, i16* %11, align 2
  %180 = zext i16 %179 to i32
  %181 = ashr i32 %180, 8
  %182 = add nsw i32 %178, %181
  %183 = trunc i32 %182 to i16
  store i16 %183, i16* %11, align 2
  %184 = load i16*, i16** @big5_2charset, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  %187 = load i16, i16* %186, align 2
  %188 = zext i16 %187 to i32
  %189 = load i16, i16* %11, align 2
  %190 = zext i16 %189 to i32
  %191 = add nsw i32 %188, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i16, i16* %184, i64 %192
  %194 = load i16, i16* %193, align 2
  store i16 %194, i16* %13, align 2
  %195 = load i16, i16* %13, align 2
  %196 = zext i16 %195 to i32
  %197 = ashr i32 %196, 8
  %198 = trunc i32 %197 to i8
  %199 = load i8*, i8** %7, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 0
  store i8 %198, i8* %200, align 1
  %201 = load i16, i16* %13, align 2
  %202 = zext i16 %201 to i32
  %203 = and i32 %202, 255
  %204 = trunc i32 %203 to i8
  %205 = load i8*, i8** %7, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 1
  store i8 %204, i8* %206, align 1
  store i32 2, i32* %5, align 4
  br label %212

207:                                              ; preds = %129
  br label %208

208:                                              ; preds = %207, %126
  %209 = load i32, i32* @RET_ILUNI, align 4
  store i32 %209, i32* %5, align 4
  br label %212

210:                                              ; preds = %4
  %211 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %210, %208, %141
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
