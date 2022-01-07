; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_isoir165ext.h_isoir165ext_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_isoir165ext.h_isoir165ext_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i16, i16 }

@isoir165ext_uni2indx_page00 = common dso_local global %struct.TYPE_12__* null, align 8
@isoir165ext_uni2indx_page03 = common dso_local global %struct.TYPE_12__* null, align 8
@isoir165ext_uni2indx_page1e = common dso_local global %struct.TYPE_12__* null, align 8
@isoir165ext_uni2indx_page30 = common dso_local global %struct.TYPE_12__* null, align 8
@isoir165ext_uni2indx_page32 = common dso_local global %struct.TYPE_12__* null, align 8
@isoir165ext_uni2indx_page4e = common dso_local global %struct.TYPE_12__* null, align 8
@isoir165ext_uni2indx_page7e = common dso_local global %struct.TYPE_12__* null, align 8
@isoir165ext_uni2indx_page94 = common dso_local global %struct.TYPE_12__* null, align 8
@isoir165ext_uni2indx_page9e = common dso_local global %struct.TYPE_12__* null, align 8
@isoir165ext_uni2indx_pageff = common dso_local global %struct.TYPE_12__* null, align 8
@isoir165ext_2charset = common dso_local global i16* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @isoir165ext_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isoir165ext_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sge i32 %14, 2
  br i1 %15, label %16, label %238

16:                                               ; preds = %4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 512
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** @isoir165ext_uni2indx_page00, align 8
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i64 %26
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %10, align 8
  br label %154

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %29, 768
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 960
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** @isoir165ext_uni2indx_page03, align 8
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 4
  %38 = sub nsw i32 %37, 48
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i64 %39
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %10, align 8
  br label %153

41:                                               ; preds = %31, %28
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 7680
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 8128
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** @isoir165ext_uni2indx_page1e, align 8
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 4
  %51 = sub nsw i32 %50, 480
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i64 %52
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %10, align 8
  br label %152

54:                                               ; preds = %44, %41
  %55 = load i32, i32* %8, align 4
  %56 = icmp sge i32 %55, 12288
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 12352
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** @isoir165ext_uni2indx_page30, align 8
  %62 = load i32, i32* %8, align 4
  %63 = ashr i32 %62, 4
  %64 = sub nsw i32 %63, 768
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i64 %65
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %10, align 8
  br label %151

67:                                               ; preds = %57, %54
  %68 = load i32, i32* %8, align 4
  %69 = icmp sge i32 %68, 12800
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 13312
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** @isoir165ext_uni2indx_page32, align 8
  %75 = load i32, i32* %8, align 4
  %76 = ashr i32 %75, 4
  %77 = sub nsw i32 %76, 800
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 %78
  store %struct.TYPE_12__* %79, %struct.TYPE_12__** %10, align 8
  br label %150

80:                                               ; preds = %70, %67
  %81 = load i32, i32* %8, align 4
  %82 = icmp sge i32 %81, 19968
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 32000
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** @isoir165ext_uni2indx_page4e, align 8
  %88 = load i32, i32* %8, align 4
  %89 = ashr i32 %88, 4
  %90 = sub nsw i32 %89, 1248
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i64 %91
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %10, align 8
  br label %149

93:                                               ; preds = %83, %80
  %94 = load i32, i32* %8, align 4
  %95 = icmp sge i32 %94, 32256
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 37584
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** @isoir165ext_uni2indx_page7e, align 8
  %101 = load i32, i32* %8, align 4
  %102 = ashr i32 %101, 4
  %103 = sub nsw i32 %102, 2016
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 %104
  store %struct.TYPE_12__* %105, %struct.TYPE_12__** %10, align 8
  br label %148

106:                                              ; preds = %96, %93
  %107 = load i32, i32* %8, align 4
  %108 = icmp sge i32 %107, 37888
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %110, 40176
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** @isoir165ext_uni2indx_page94, align 8
  %114 = load i32, i32* %8, align 4
  %115 = ashr i32 %114, 4
  %116 = sub nsw i32 %115, 2368
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i64 %117
  store %struct.TYPE_12__* %118, %struct.TYPE_12__** %10, align 8
  br label %147

119:                                              ; preds = %109, %106
  %120 = load i32, i32* %8, align 4
  %121 = icmp sge i32 %120, 40448
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %123, 40848
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** @isoir165ext_uni2indx_page9e, align 8
  %127 = load i32, i32* %8, align 4
  %128 = ashr i32 %127, 4
  %129 = sub nsw i32 %128, 2528
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i64 %130
  store %struct.TYPE_12__* %131, %struct.TYPE_12__** %10, align 8
  br label %146

132:                                              ; preds = %122, %119
  %133 = load i32, i32* %8, align 4
  %134 = icmp sge i32 %133, 65280
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %136, 65360
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** @isoir165ext_uni2indx_pageff, align 8
  %140 = load i32, i32* %8, align 4
  %141 = ashr i32 %140, 4
  %142 = sub nsw i32 %141, 4080
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i64 %143
  store %struct.TYPE_12__* %144, %struct.TYPE_12__** %10, align 8
  br label %145

145:                                              ; preds = %138, %135, %132
  br label %146

146:                                              ; preds = %145, %125
  br label %147

147:                                              ; preds = %146, %112
  br label %148

148:                                              ; preds = %147, %99
  br label %149

149:                                              ; preds = %148, %86
  br label %150

150:                                              ; preds = %149, %73
  br label %151

151:                                              ; preds = %150, %60
  br label %152

152:                                              ; preds = %151, %47
  br label %153

153:                                              ; preds = %152, %34
  br label %154

154:                                              ; preds = %153, %22
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %156 = icmp ne %struct.TYPE_12__* %155, null
  br i1 %156, label %157, label %236

157:                                              ; preds = %154
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i16, i16* %159, align 2
  store i16 %160, i16* %11, align 2
  %161 = load i32, i32* %8, align 4
  %162 = and i32 %161, 15
  store i32 %162, i32* %12, align 4
  %163 = load i16, i16* %11, align 2
  %164 = zext i16 %163 to i32
  %165 = load i32, i32* %12, align 4
  %166 = shl i32 1, %165
  %167 = and i32 %164, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %235

169:                                              ; preds = %157
  %170 = load i32, i32* %12, align 4
  %171 = shl i32 1, %170
  %172 = sub nsw i32 %171, 1
  %173 = load i16, i16* %11, align 2
  %174 = zext i16 %173 to i32
  %175 = and i32 %174, %172
  %176 = trunc i32 %175 to i16
  store i16 %176, i16* %11, align 2
  %177 = load i16, i16* %11, align 2
  %178 = zext i16 %177 to i32
  %179 = and i32 %178, 21845
  %180 = load i16, i16* %11, align 2
  %181 = zext i16 %180 to i32
  %182 = and i32 %181, 43690
  %183 = ashr i32 %182, 1
  %184 = add nsw i32 %179, %183
  %185 = trunc i32 %184 to i16
  store i16 %185, i16* %11, align 2
  %186 = load i16, i16* %11, align 2
  %187 = zext i16 %186 to i32
  %188 = and i32 %187, 13107
  %189 = load i16, i16* %11, align 2
  %190 = zext i16 %189 to i32
  %191 = and i32 %190, 52428
  %192 = ashr i32 %191, 2
  %193 = add nsw i32 %188, %192
  %194 = trunc i32 %193 to i16
  store i16 %194, i16* %11, align 2
  %195 = load i16, i16* %11, align 2
  %196 = zext i16 %195 to i32
  %197 = and i32 %196, 3855
  %198 = load i16, i16* %11, align 2
  %199 = zext i16 %198 to i32
  %200 = and i32 %199, 61680
  %201 = ashr i32 %200, 4
  %202 = add nsw i32 %197, %201
  %203 = trunc i32 %202 to i16
  store i16 %203, i16* %11, align 2
  %204 = load i16, i16* %11, align 2
  %205 = zext i16 %204 to i32
  %206 = and i32 %205, 255
  %207 = load i16, i16* %11, align 2
  %208 = zext i16 %207 to i32
  %209 = ashr i32 %208, 8
  %210 = add nsw i32 %206, %209
  %211 = trunc i32 %210 to i16
  store i16 %211, i16* %11, align 2
  %212 = load i16*, i16** @isoir165ext_2charset, align 8
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 1
  %215 = load i16, i16* %214, align 2
  %216 = zext i16 %215 to i32
  %217 = load i16, i16* %11, align 2
  %218 = zext i16 %217 to i32
  %219 = add nsw i32 %216, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i16, i16* %212, i64 %220
  %222 = load i16, i16* %221, align 2
  store i16 %222, i16* %13, align 2
  %223 = load i16, i16* %13, align 2
  %224 = zext i16 %223 to i32
  %225 = ashr i32 %224, 8
  %226 = trunc i32 %225 to i8
  %227 = load i8*, i8** %7, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 0
  store i8 %226, i8* %228, align 1
  %229 = load i16, i16* %13, align 2
  %230 = zext i16 %229 to i32
  %231 = and i32 %230, 255
  %232 = trunc i32 %231 to i8
  %233 = load i8*, i8** %7, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 1
  store i8 %232, i8* %234, align 1
  store i32 2, i32* %5, align 4
  br label %240

235:                                              ; preds = %157
  br label %236

236:                                              ; preds = %235, %154
  %237 = load i32, i32* @RET_ILUNI, align 4
  store i32 %237, i32* %5, align 4
  br label %240

238:                                              ; preds = %4
  %239 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %239, i32* %5, align 4
  br label %240

240:                                              ; preds = %238, %236, %169
  %241 = load i32, i32* %5, align 4
  ret i32 %241
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
