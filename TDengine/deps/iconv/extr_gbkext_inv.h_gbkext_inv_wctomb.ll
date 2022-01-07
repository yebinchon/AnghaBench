; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_gbkext_inv.h_gbkext_inv_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_gbkext_inv.h_gbkext_inv_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i16, i16 }

@gbkext_inv_uni2indx_page02 = common dso_local global %struct.TYPE_10__* null, align 8
@gbkext_inv_uni2indx_page20 = common dso_local global %struct.TYPE_10__* null, align 8
@gbkext_inv_uni2indx_page25 = common dso_local global %struct.TYPE_10__* null, align 8
@gbkext_inv_uni2indx_page30 = common dso_local global %struct.TYPE_10__* null, align 8
@gbkext_inv_uni2indx_page32 = common dso_local global %struct.TYPE_10__* null, align 8
@gbkext_inv_uni2indx_page4e = common dso_local global %struct.TYPE_10__* null, align 8
@gbkext_inv_uni2indx_pagef9 = common dso_local global %struct.TYPE_10__* null, align 8
@gbkext_inv_uni2indx_pagefe = common dso_local global %struct.TYPE_10__* null, align 8
@gbkext_inv_2charset = common dso_local global i16* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @gbkext_inv_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbkext_inv_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  br i1 %15, label %16, label %211

16:                                               ; preds = %4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 512
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 736
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbkext_inv_uni2indx_page02, align 8
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 4
  %26 = sub nsw i32 %25, 32
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i64 %27
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %10, align 8
  br label %127

29:                                               ; preds = %19, %16
  %30 = load i32, i32* %8, align 4
  %31 = icmp sge i32 %30, 8192
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 8896
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbkext_inv_uni2indx_page20, align 8
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %37, 4
  %39 = sub nsw i32 %38, 512
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 %40
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %10, align 8
  br label %126

42:                                               ; preds = %32, %29
  %43 = load i32, i32* %8, align 4
  %44 = icmp sge i32 %43, 9472
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 9744
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbkext_inv_uni2indx_page25, align 8
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %50, 4
  %52 = sub nsw i32 %51, 592
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 %53
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %10, align 8
  br label %125

55:                                               ; preds = %45, %42
  %56 = load i32, i32* %8, align 4
  %57 = icmp sge i32 %56, 12288
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 12544
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbkext_inv_uni2indx_page30, align 8
  %63 = load i32, i32* %8, align 4
  %64 = ashr i32 %63, 4
  %65 = sub nsw i32 %64, 768
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 %66
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %10, align 8
  br label %124

68:                                               ; preds = %58, %55
  %69 = load i32, i32* %8, align 4
  %70 = icmp sge i32 %69, 12800
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 13280
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbkext_inv_uni2indx_page32, align 8
  %76 = load i32, i32* %8, align 4
  %77 = ashr i32 %76, 4
  %78 = sub nsw i32 %77, 800
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %79
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %10, align 8
  br label %123

81:                                               ; preds = %71, %68
  %82 = load i32, i32* %8, align 4
  %83 = icmp sge i32 %82, 19968
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 40880
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbkext_inv_uni2indx_page4e, align 8
  %89 = load i32, i32* %8, align 4
  %90 = ashr i32 %89, 4
  %91 = sub nsw i32 %90, 1248
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i64 %92
  store %struct.TYPE_10__* %93, %struct.TYPE_10__** %10, align 8
  br label %122

94:                                               ; preds = %84, %81
  %95 = load i32, i32* %8, align 4
  %96 = icmp sge i32 %95, 63744
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 64048
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbkext_inv_uni2indx_pagef9, align 8
  %102 = load i32, i32* %8, align 4
  %103 = ashr i32 %102, 4
  %104 = sub nsw i32 %103, 3984
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i64 %105
  store %struct.TYPE_10__* %106, %struct.TYPE_10__** %10, align 8
  br label %121

107:                                              ; preds = %97, %94
  %108 = load i32, i32* %8, align 4
  %109 = icmp sge i32 %108, 65024
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %111, 65520
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbkext_inv_uni2indx_pagefe, align 8
  %115 = load i32, i32* %8, align 4
  %116 = ashr i32 %115, 4
  %117 = sub nsw i32 %116, 4064
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i64 %118
  store %struct.TYPE_10__* %119, %struct.TYPE_10__** %10, align 8
  br label %120

120:                                              ; preds = %113, %110, %107
  br label %121

121:                                              ; preds = %120, %100
  br label %122

122:                                              ; preds = %121, %87
  br label %123

123:                                              ; preds = %122, %74
  br label %124

124:                                              ; preds = %123, %61
  br label %125

125:                                              ; preds = %124, %48
  br label %126

126:                                              ; preds = %125, %35
  br label %127

127:                                              ; preds = %126, %22
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %129 = icmp ne %struct.TYPE_10__* %128, null
  br i1 %129, label %130, label %209

130:                                              ; preds = %127
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i16, i16* %132, align 2
  store i16 %133, i16* %11, align 2
  %134 = load i32, i32* %8, align 4
  %135 = and i32 %134, 15
  store i32 %135, i32* %12, align 4
  %136 = load i16, i16* %11, align 2
  %137 = zext i16 %136 to i32
  %138 = load i32, i32* %12, align 4
  %139 = shl i32 1, %138
  %140 = and i32 %137, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %208

142:                                              ; preds = %130
  %143 = load i32, i32* %12, align 4
  %144 = shl i32 1, %143
  %145 = sub nsw i32 %144, 1
  %146 = load i16, i16* %11, align 2
  %147 = zext i16 %146 to i32
  %148 = and i32 %147, %145
  %149 = trunc i32 %148 to i16
  store i16 %149, i16* %11, align 2
  %150 = load i16, i16* %11, align 2
  %151 = zext i16 %150 to i32
  %152 = and i32 %151, 21845
  %153 = load i16, i16* %11, align 2
  %154 = zext i16 %153 to i32
  %155 = and i32 %154, 43690
  %156 = ashr i32 %155, 1
  %157 = add nsw i32 %152, %156
  %158 = trunc i32 %157 to i16
  store i16 %158, i16* %11, align 2
  %159 = load i16, i16* %11, align 2
  %160 = zext i16 %159 to i32
  %161 = and i32 %160, 13107
  %162 = load i16, i16* %11, align 2
  %163 = zext i16 %162 to i32
  %164 = and i32 %163, 52428
  %165 = ashr i32 %164, 2
  %166 = add nsw i32 %161, %165
  %167 = trunc i32 %166 to i16
  store i16 %167, i16* %11, align 2
  %168 = load i16, i16* %11, align 2
  %169 = zext i16 %168 to i32
  %170 = and i32 %169, 3855
  %171 = load i16, i16* %11, align 2
  %172 = zext i16 %171 to i32
  %173 = and i32 %172, 61680
  %174 = ashr i32 %173, 4
  %175 = add nsw i32 %170, %174
  %176 = trunc i32 %175 to i16
  store i16 %176, i16* %11, align 2
  %177 = load i16, i16* %11, align 2
  %178 = zext i16 %177 to i32
  %179 = and i32 %178, 255
  %180 = load i16, i16* %11, align 2
  %181 = zext i16 %180 to i32
  %182 = ashr i32 %181, 8
  %183 = add nsw i32 %179, %182
  %184 = trunc i32 %183 to i16
  store i16 %184, i16* %11, align 2
  %185 = load i16*, i16** @gbkext_inv_2charset, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = load i16, i16* %187, align 2
  %189 = zext i16 %188 to i32
  %190 = load i16, i16* %11, align 2
  %191 = zext i16 %190 to i32
  %192 = add nsw i32 %189, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i16, i16* %185, i64 %193
  %195 = load i16, i16* %194, align 2
  store i16 %195, i16* %13, align 2
  %196 = load i16, i16* %13, align 2
  %197 = zext i16 %196 to i32
  %198 = ashr i32 %197, 8
  %199 = trunc i32 %198 to i8
  %200 = load i8*, i8** %7, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 0
  store i8 %199, i8* %201, align 1
  %202 = load i16, i16* %13, align 2
  %203 = zext i16 %202 to i32
  %204 = and i32 %203, 255
  %205 = trunc i32 %204 to i8
  %206 = load i8*, i8** %7, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 1
  store i8 %205, i8* %207, align 1
  store i32 2, i32* %5, align 4
  br label %213

208:                                              ; preds = %130
  br label %209

209:                                              ; preds = %208, %127
  %210 = load i32, i32* @RET_ILUNI, align 4
  store i32 %210, i32* %5, align 4
  br label %213

211:                                              ; preds = %4
  %212 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %211, %209, %142
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
