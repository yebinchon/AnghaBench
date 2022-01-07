; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_ksc5601.h_ksc5601_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_ksc5601.h_ksc5601_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i16, i16 }

@ksc5601_uni2indx_page00 = common dso_local global %struct.TYPE_9__* null, align 8
@ksc5601_uni2indx_page20 = common dso_local global %struct.TYPE_9__* null, align 8
@ksc5601_uni2indx_page30 = common dso_local global %struct.TYPE_9__* null, align 8
@ksc5601_uni2indx_page4e = common dso_local global %struct.TYPE_9__* null, align 8
@ksc5601_uni2indx_pageac = common dso_local global %struct.TYPE_9__* null, align 8
@ksc5601_uni2indx_pagef9 = common dso_local global %struct.TYPE_9__* null, align 8
@ksc5601_uni2indx_pageff = common dso_local global %struct.TYPE_9__* null, align 8
@ksc5601_2charset = common dso_local global i16* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @ksc5601_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksc5601_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sge i32 %14, 2
  br i1 %15, label %16, label %196

16:                                               ; preds = %4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 1120
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ksc5601_uni2indx_page00, align 8
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %26
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %10, align 8
  br label %112

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %29, 8192
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 9840
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ksc5601_uni2indx_page20, align 8
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 4
  %38 = sub nsw i32 %37, 512
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 %39
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %10, align 8
  br label %111

41:                                               ; preds = %31, %28
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 12288
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 13280
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ksc5601_uni2indx_page30, align 8
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 4
  %51 = sub nsw i32 %50, 768
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %52
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %10, align 8
  br label %110

54:                                               ; preds = %44, %41
  %55 = load i32, i32* %8, align 4
  %56 = icmp sge i32 %55, 19968
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 40864
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ksc5601_uni2indx_page4e, align 8
  %62 = load i32, i32* %8, align 4
  %63 = ashr i32 %62, 4
  %64 = sub nsw i32 %63, 1248
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 %65
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %10, align 8
  br label %109

67:                                               ; preds = %57, %54
  %68 = load i32, i32* %8, align 4
  %69 = icmp sge i32 %68, 44032
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 55200
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ksc5601_uni2indx_pageac, align 8
  %75 = load i32, i32* %8, align 4
  %76 = ashr i32 %75, 4
  %77 = sub nsw i32 %76, 2752
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 %78
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %10, align 8
  br label %108

80:                                               ; preds = %70, %67
  %81 = load i32, i32* %8, align 4
  %82 = icmp sge i32 %81, 63744
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 64016
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ksc5601_uni2indx_pagef9, align 8
  %88 = load i32, i32* %8, align 4
  %89 = ashr i32 %88, 4
  %90 = sub nsw i32 %89, 3984
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %91
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %10, align 8
  br label %107

93:                                               ; preds = %83, %80
  %94 = load i32, i32* %8, align 4
  %95 = icmp sge i32 %94, 65280
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 65520
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ksc5601_uni2indx_pageff, align 8
  %101 = load i32, i32* %8, align 4
  %102 = ashr i32 %101, 4
  %103 = sub nsw i32 %102, 4080
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %104
  store %struct.TYPE_9__* %105, %struct.TYPE_9__** %10, align 8
  br label %106

106:                                              ; preds = %99, %96, %93
  br label %107

107:                                              ; preds = %106, %86
  br label %108

108:                                              ; preds = %107, %73
  br label %109

109:                                              ; preds = %108, %60
  br label %110

110:                                              ; preds = %109, %47
  br label %111

111:                                              ; preds = %110, %34
  br label %112

112:                                              ; preds = %111, %22
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %114 = icmp ne %struct.TYPE_9__* %113, null
  br i1 %114, label %115, label %194

115:                                              ; preds = %112
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i16, i16* %117, align 2
  store i16 %118, i16* %11, align 2
  %119 = load i32, i32* %8, align 4
  %120 = and i32 %119, 15
  store i32 %120, i32* %12, align 4
  %121 = load i16, i16* %11, align 2
  %122 = zext i16 %121 to i32
  %123 = load i32, i32* %12, align 4
  %124 = shl i32 1, %123
  %125 = and i32 %122, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %193

127:                                              ; preds = %115
  %128 = load i32, i32* %12, align 4
  %129 = shl i32 1, %128
  %130 = sub nsw i32 %129, 1
  %131 = load i16, i16* %11, align 2
  %132 = zext i16 %131 to i32
  %133 = and i32 %132, %130
  %134 = trunc i32 %133 to i16
  store i16 %134, i16* %11, align 2
  %135 = load i16, i16* %11, align 2
  %136 = zext i16 %135 to i32
  %137 = and i32 %136, 21845
  %138 = load i16, i16* %11, align 2
  %139 = zext i16 %138 to i32
  %140 = and i32 %139, 43690
  %141 = ashr i32 %140, 1
  %142 = add nsw i32 %137, %141
  %143 = trunc i32 %142 to i16
  store i16 %143, i16* %11, align 2
  %144 = load i16, i16* %11, align 2
  %145 = zext i16 %144 to i32
  %146 = and i32 %145, 13107
  %147 = load i16, i16* %11, align 2
  %148 = zext i16 %147 to i32
  %149 = and i32 %148, 52428
  %150 = ashr i32 %149, 2
  %151 = add nsw i32 %146, %150
  %152 = trunc i32 %151 to i16
  store i16 %152, i16* %11, align 2
  %153 = load i16, i16* %11, align 2
  %154 = zext i16 %153 to i32
  %155 = and i32 %154, 3855
  %156 = load i16, i16* %11, align 2
  %157 = zext i16 %156 to i32
  %158 = and i32 %157, 61680
  %159 = ashr i32 %158, 4
  %160 = add nsw i32 %155, %159
  %161 = trunc i32 %160 to i16
  store i16 %161, i16* %11, align 2
  %162 = load i16, i16* %11, align 2
  %163 = zext i16 %162 to i32
  %164 = and i32 %163, 255
  %165 = load i16, i16* %11, align 2
  %166 = zext i16 %165 to i32
  %167 = ashr i32 %166, 8
  %168 = add nsw i32 %164, %167
  %169 = trunc i32 %168 to i16
  store i16 %169, i16* %11, align 2
  %170 = load i16*, i16** @ksc5601_2charset, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i16, i16* %172, align 2
  %174 = zext i16 %173 to i32
  %175 = load i16, i16* %11, align 2
  %176 = zext i16 %175 to i32
  %177 = add nsw i32 %174, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i16, i16* %170, i64 %178
  %180 = load i16, i16* %179, align 2
  store i16 %180, i16* %13, align 2
  %181 = load i16, i16* %13, align 2
  %182 = zext i16 %181 to i32
  %183 = ashr i32 %182, 8
  %184 = trunc i32 %183 to i8
  %185 = load i8*, i8** %7, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 0
  store i8 %184, i8* %186, align 1
  %187 = load i16, i16* %13, align 2
  %188 = zext i16 %187 to i32
  %189 = and i32 %188, 255
  %190 = trunc i32 %189 to i8
  %191 = load i8*, i8** %7, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  store i8 %190, i8* %192, align 1
  store i32 2, i32* %5, align 4
  br label %198

193:                                              ; preds = %115
  br label %194

194:                                              ; preds = %193, %112
  %195 = load i32, i32* @RET_ILUNI, align 4
  store i32 %195, i32* %5, align 4
  br label %198

196:                                              ; preds = %4
  %197 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %197, i32* %5, align 4
  br label %198

198:                                              ; preds = %196, %194, %127
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
