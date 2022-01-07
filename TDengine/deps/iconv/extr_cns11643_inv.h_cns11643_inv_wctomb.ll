; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cns11643_inv.h_cns11643_inv_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cns11643_inv.h_cns11643_inv_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i16, i64 }

@cns11643_inv_uni2indx_page00 = common dso_local global %struct.TYPE_11__* null, align 8
@cns11643_inv_uni2indx_page02 = common dso_local global %struct.TYPE_11__* null, align 8
@cns11643_inv_uni2indx_page20 = common dso_local global %struct.TYPE_11__* null, align 8
@cns11643_inv_uni2indx_page24 = common dso_local global %struct.TYPE_11__* null, align 8
@cns11643_inv_uni2indx_page30 = common dso_local global %struct.TYPE_11__* null, align 8
@cns11643_inv_uni2indx_pagefa = common dso_local global %struct.TYPE_11__* null, align 8
@cns11643_inv_uni2indx_pagefe = common dso_local global %struct.TYPE_11__* null, align 8
@cns11643_inv_uni2indx_page200 = common dso_local global %struct.TYPE_11__* null, align 8
@cns11643_inv_uni2indx_page2f8 = common dso_local global %struct.TYPE_11__* null, align 8
@cns11643_inv_2charset = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cns11643_inv_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cns11643_inv_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sge i32 %13, 2
  br i1 %14, label %15, label %236

15:                                               ; preds = %4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cns11643_inv_uni2indx_page00, align 8
  %23 = load i32, i32* %8, align 4
  %24 = ashr i32 %23, 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i64 %25
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %10, align 8
  br label %139

27:                                               ; preds = %18, %15
  %28 = load i32, i32* %8, align 4
  %29 = icmp sge i32 %28, 512
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 976
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cns11643_inv_uni2indx_page02, align 8
  %35 = load i32, i32* %8, align 4
  %36 = ashr i32 %35, 4
  %37 = sub nsw i32 %36, 32
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 %38
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %10, align 8
  br label %138

40:                                               ; preds = %30, %27
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %41, 8192
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 8896
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cns11643_inv_uni2indx_page20, align 8
  %48 = load i32, i32* %8, align 4
  %49 = ashr i32 %48, 4
  %50 = sub nsw i32 %49, 512
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %51
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %10, align 8
  br label %137

53:                                               ; preds = %43, %40
  %54 = load i32, i32* %8, align 4
  %55 = icmp sge i32 %54, 9216
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 9808
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cns11643_inv_uni2indx_page24, align 8
  %61 = load i32, i32* %8, align 4
  %62 = ashr i32 %61, 4
  %63 = sub nsw i32 %62, 576
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i64 %64
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %10, align 8
  br label %136

66:                                               ; preds = %56, %53
  %67 = load i32, i32* %8, align 4
  %68 = icmp sge i32 %67, 12288
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 40880
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cns11643_inv_uni2indx_page30, align 8
  %74 = load i32, i32* %8, align 4
  %75 = ashr i32 %74, 4
  %76 = sub nsw i32 %75, 768
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i64 %77
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %10, align 8
  br label %135

79:                                               ; preds = %69, %66
  %80 = load i32, i32* %8, align 4
  %81 = icmp sge i32 %80, 64000
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 64048
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cns11643_inv_uni2indx_pagefa, align 8
  %87 = load i32, i32* %8, align 4
  %88 = ashr i32 %87, 4
  %89 = sub nsw i32 %88, 4000
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i64 %90
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %10, align 8
  br label %134

92:                                               ; preds = %82, %79
  %93 = load i32, i32* %8, align 4
  %94 = icmp sge i32 %93, 65024
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 65520
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cns11643_inv_uni2indx_pagefe, align 8
  %100 = load i32, i32* %8, align 4
  %101 = ashr i32 %100, 4
  %102 = sub nsw i32 %101, 4064
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i64 %103
  store %struct.TYPE_11__* %104, %struct.TYPE_11__** %10, align 8
  br label %133

105:                                              ; preds = %95, %92
  %106 = load i32, i32* %8, align 4
  %107 = icmp sge i32 %106, 131072
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 173792
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cns11643_inv_uni2indx_page200, align 8
  %113 = load i32, i32* %8, align 4
  %114 = ashr i32 %113, 4
  %115 = sub nsw i32 %114, 8192
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i64 %116
  store %struct.TYPE_11__* %117, %struct.TYPE_11__** %10, align 8
  br label %132

118:                                              ; preds = %108, %105
  %119 = load i32, i32* %8, align 4
  %120 = icmp sge i32 %119, 194560
  br i1 %120, label %121, label %131

121:                                              ; preds = %118
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %122, 195104
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cns11643_inv_uni2indx_page2f8, align 8
  %126 = load i32, i32* %8, align 4
  %127 = ashr i32 %126, 4
  %128 = sub nsw i32 %127, 12160
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i64 %129
  store %struct.TYPE_11__* %130, %struct.TYPE_11__** %10, align 8
  br label %131

131:                                              ; preds = %124, %121, %118
  br label %132

132:                                              ; preds = %131, %111
  br label %133

133:                                              ; preds = %132, %98
  br label %134

134:                                              ; preds = %133, %85
  br label %135

135:                                              ; preds = %134, %72
  br label %136

136:                                              ; preds = %135, %59
  br label %137

137:                                              ; preds = %136, %46
  br label %138

138:                                              ; preds = %137, %33
  br label %139

139:                                              ; preds = %138, %21
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %141 = icmp ne %struct.TYPE_11__* %140, null
  br i1 %141, label %142, label %234

142:                                              ; preds = %139
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i16, i16* %144, align 8
  store i16 %145, i16* %11, align 2
  %146 = load i32, i32* %8, align 4
  %147 = and i32 %146, 15
  store i32 %147, i32* %12, align 4
  %148 = load i16, i16* %11, align 2
  %149 = zext i16 %148 to i32
  %150 = load i32, i32* %12, align 4
  %151 = shl i32 1, %150
  %152 = and i32 %149, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %233

154:                                              ; preds = %142
  %155 = load i32, i32* %12, align 4
  %156 = shl i32 1, %155
  %157 = sub nsw i32 %156, 1
  %158 = load i16, i16* %11, align 2
  %159 = zext i16 %158 to i32
  %160 = and i32 %159, %157
  %161 = trunc i32 %160 to i16
  store i16 %161, i16* %11, align 2
  %162 = load i16, i16* %11, align 2
  %163 = zext i16 %162 to i32
  %164 = and i32 %163, 21845
  %165 = load i16, i16* %11, align 2
  %166 = zext i16 %165 to i32
  %167 = and i32 %166, 43690
  %168 = ashr i32 %167, 1
  %169 = add nsw i32 %164, %168
  %170 = trunc i32 %169 to i16
  store i16 %170, i16* %11, align 2
  %171 = load i16, i16* %11, align 2
  %172 = zext i16 %171 to i32
  %173 = and i32 %172, 13107
  %174 = load i16, i16* %11, align 2
  %175 = zext i16 %174 to i32
  %176 = and i32 %175, 52428
  %177 = ashr i32 %176, 2
  %178 = add nsw i32 %173, %177
  %179 = trunc i32 %178 to i16
  store i16 %179, i16* %11, align 2
  %180 = load i16, i16* %11, align 2
  %181 = zext i16 %180 to i32
  %182 = and i32 %181, 3855
  %183 = load i16, i16* %11, align 2
  %184 = zext i16 %183 to i32
  %185 = and i32 %184, 61680
  %186 = ashr i32 %185, 4
  %187 = add nsw i32 %182, %186
  %188 = trunc i32 %187 to i16
  store i16 %188, i16* %11, align 2
  %189 = load i16, i16* %11, align 2
  %190 = zext i16 %189 to i32
  %191 = and i32 %190, 255
  %192 = load i16, i16* %11, align 2
  %193 = zext i16 %192 to i32
  %194 = ashr i32 %193, 8
  %195 = add nsw i32 %191, %194
  %196 = trunc i32 %195 to i16
  store i16 %196, i16* %11, align 2
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i16, i16* %11, align 2
  %201 = zext i16 %200 to i64
  %202 = add nsw i64 %201, %199
  %203 = trunc i64 %202 to i16
  store i16 %203, i16* %11, align 2
  %204 = load i8*, i8** @cns11643_inv_2charset, align 8
  %205 = load i16, i16* %11, align 2
  %206 = zext i16 %205 to i32
  %207 = mul nsw i32 3, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %204, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = load i8*, i8** %7, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 0
  store i8 %210, i8* %212, align 1
  %213 = load i8*, i8** @cns11643_inv_2charset, align 8
  %214 = load i16, i16* %11, align 2
  %215 = zext i16 %214 to i32
  %216 = mul nsw i32 3, %215
  %217 = add nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %213, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = load i8*, i8** %7, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  store i8 %220, i8* %222, align 1
  %223 = load i8*, i8** @cns11643_inv_2charset, align 8
  %224 = load i16, i16* %11, align 2
  %225 = zext i16 %224 to i32
  %226 = mul nsw i32 3, %225
  %227 = add nsw i32 %226, 2
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %223, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = load i8*, i8** %7, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 2
  store i8 %230, i8* %232, align 1
  store i32 3, i32* %5, align 4
  br label %238

233:                                              ; preds = %142
  br label %234

234:                                              ; preds = %233, %139
  %235 = load i32, i32* @RET_ILUNI, align 4
  store i32 %235, i32* %5, align 4
  br label %238

236:                                              ; preds = %4
  %237 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %237, i32* %5, align 4
  br label %238

238:                                              ; preds = %236, %234, %154
  %239 = load i32, i32* %5, align 4
  ret i32 %239
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
