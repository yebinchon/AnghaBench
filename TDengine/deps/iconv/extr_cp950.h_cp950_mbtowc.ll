; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp950.h_cp950_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp950.h_cp950_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp950_2uni_pagea1 = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @cp950_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp950_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %10, align 1
  %18 = load i8, i8* %10, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp slt i32 %19, 128
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ascii_mbtowc(i32 %22, i32* %23, i8* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %188

27:                                               ; preds = %4
  %28 = load i8, i8* %10, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sge i32 %29, 129
  br i1 %30, label %31, label %186

31:                                               ; preds = %27
  %32 = load i8, i8* %10, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp slt i32 %33, 255
  br i1 %34, label %35, label %186

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @RET_TOOFEW(i32 0)
  store i32 %39, i32* %5, align 4
  br label %188

40:                                               ; preds = %35
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %11, align 1
  %44 = load i8, i8* %11, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp sge i32 %45, 64
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i8, i8* %11, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp slt i32 %49, 127
  br i1 %50, label %59, label %51

51:                                               ; preds = %47, %40
  %52 = load i8, i8* %11, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp sge i32 %53, 161
  br i1 %54, label %55, label %170

55:                                               ; preds = %51
  %56 = load i8, i8* %11, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp slt i32 %57, 255
  br i1 %58, label %59, label %170

59:                                               ; preds = %55, %47
  %60 = load i8, i8* %10, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp sge i32 %61, 161
  br i1 %62, label %63, label %148

63:                                               ; preds = %59
  %64 = load i8, i8* %10, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp slt i32 %65, 163
  br i1 %66, label %67, label %94

67:                                               ; preds = %63
  %68 = load i8, i8* %10, align 1
  %69 = zext i8 %68 to i32
  %70 = sub nsw i32 %69, 161
  %71 = mul nsw i32 157, %70
  %72 = load i8, i8* %11, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* %11, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp sge i32 %75, 161
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 98, i32 64
  %79 = sub nsw i32 %73, %78
  %80 = add nsw i32 %71, %79
  store i32 %80, i32* %12, align 4
  %81 = load i16*, i16** @cp950_2uni_pagea1, align 8
  %82 = load i32, i32* %12, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i16, i16* %81, i64 %83
  %85 = load i16, i16* %84, align 2
  store i16 %85, i16* %13, align 2
  %86 = load i16, i16* %13, align 2
  %87 = zext i16 %86 to i32
  %88 = icmp ne i32 %87, 65533
  br i1 %88, label %89, label %93

89:                                               ; preds = %67
  %90 = load i16, i16* %13, align 2
  %91 = zext i16 %90 to i32
  %92 = load i32*, i32** %7, align 8
  store i32 %91, i32* %92, align 4
  store i32 2, i32* %5, align 4
  br label %188

93:                                               ; preds = %67
  br label %94

94:                                               ; preds = %93, %63
  %95 = load i8, i8* %10, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %96, 198
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i8, i8* %11, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp sge i32 %100, 161
  br i1 %101, label %117, label %102

102:                                              ; preds = %98, %94
  %103 = load i8, i8* %10, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 199
  br i1 %105, label %117, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %6, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 @big5_mbtowc(i32 %107, i32* %108, i8* %109, i32 2)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @RET_ILSEQ, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %5, align 4
  br label %188

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116, %102, %98
  %118 = load i8, i8* %10, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %119, 163
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load i8, i8* %11, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %123, 225
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32*, i32** %7, align 8
  store i32 8364, i32* %126, align 4
  store i32 2, i32* %5, align 4
  br label %188

127:                                              ; preds = %121, %117
  %128 = load i8, i8* %10, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp sge i32 %129, 250
  br i1 %130, label %131, label %147

131:                                              ; preds = %127
  %132 = load i8, i8* %10, align 1
  %133 = zext i8 %132 to i32
  %134 = sub nsw i32 %133, 250
  %135 = mul nsw i32 157, %134
  %136 = add nsw i32 57344, %135
  %137 = load i8, i8* %11, align 1
  %138 = zext i8 %137 to i32
  %139 = load i8, i8* %11, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp sge i32 %140, 161
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 98, i32 64
  %144 = sub nsw i32 %138, %143
  %145 = add nsw i32 %136, %144
  %146 = load i32*, i32** %7, align 8
  store i32 %145, i32* %146, align 4
  store i32 2, i32* %5, align 4
  br label %188

147:                                              ; preds = %127
  br label %169

148:                                              ; preds = %59
  %149 = load i8, i8* %10, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp sge i32 %150, 142
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 56088, i32 61112
  %154 = load i8, i8* %10, align 1
  %155 = zext i8 %154 to i32
  %156 = sub nsw i32 %155, 129
  %157 = mul nsw i32 157, %156
  %158 = add nsw i32 %153, %157
  %159 = load i8, i8* %11, align 1
  %160 = zext i8 %159 to i32
  %161 = load i8, i8* %11, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp sge i32 %162, 161
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 98, i32 64
  %166 = sub nsw i32 %160, %165
  %167 = add nsw i32 %158, %166
  %168 = load i32*, i32** %7, align 8
  store i32 %167, i32* %168, align 4
  store i32 2, i32* %5, align 4
  br label %188

169:                                              ; preds = %147
  br label %170

170:                                              ; preds = %169, %55, %51
  %171 = load i8, i8* %10, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp eq i32 %172, 249
  br i1 %173, label %174, label %185

174:                                              ; preds = %170
  %175 = load i32, i32* %6, align 4
  %176 = load i32*, i32** %7, align 8
  %177 = load i8*, i8** %8, align 8
  %178 = call i32 @cp950ext_mbtowc(i32 %175, i32* %176, i8* %177, i32 2)
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* @RET_ILSEQ, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %174
  %183 = load i32, i32* %15, align 4
  store i32 %183, i32* %5, align 4
  br label %188

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %184, %170
  br label %186

186:                                              ; preds = %185, %31, %27
  %187 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %186, %182, %148, %131, %125, %114, %89, %38, %21
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @ascii_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @big5_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @cp950ext_mbtowc(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
