; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_hkscs1999.h_hkscs1999_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_hkscs1999.h_hkscs1999_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hkscs1999_2uni_page88 = common dso_local global i16* null, align 8
@hkscs1999_2uni_upages = common dso_local global i16* null, align 8
@hkscs1999_2uni_page8d = common dso_local global i16* null, align 8
@hkscs1999_2uni_pagec6 = common dso_local global i16* null, align 8
@hkscs1999_2uni_pagef9 = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @hkscs1999_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hkscs1999_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %10, align 1
  %18 = load i8, i8* %10, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp sge i32 %19, 136
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i8, i8* %10, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp sle i32 %23, 139
  br i1 %24, label %49, label %25

25:                                               ; preds = %21, %4
  %26 = load i8, i8* %10, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp sge i32 %27, 141
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i8, i8* %10, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp sle i32 %31, 160
  br i1 %32, label %49, label %33

33:                                               ; preds = %29, %25
  %34 = load i8, i8* %10, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp sge i32 %35, 198
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8, i8* %10, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp sle i32 %39, 200
  br i1 %40, label %49, label %41

41:                                               ; preds = %37, %33
  %42 = load i8, i8* %10, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp sge i32 %43, 249
  br i1 %44, label %45, label %198

45:                                               ; preds = %41
  %46 = load i8, i8* %10, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp sle i32 %47, 254
  br i1 %48, label %49, label %198

49:                                               ; preds = %45, %37, %29, %21
  %50 = load i32, i32* %9, align 4
  %51 = icmp sge i32 %50, 2
  br i1 %51, label %52, label %196

52:                                               ; preds = %49
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %11, align 1
  %56 = load i8, i8* %11, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp sge i32 %57, 64
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i8, i8* %11, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp slt i32 %61, 127
  br i1 %62, label %71, label %63

63:                                               ; preds = %59, %52
  %64 = load i8, i8* %11, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp sge i32 %65, 161
  br i1 %66, label %67, label %194

67:                                               ; preds = %63
  %68 = load i8, i8* %11, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp slt i32 %69, 255
  br i1 %70, label %71, label %194

71:                                               ; preds = %67, %59
  %72 = load i8, i8* %10, align 1
  %73 = zext i8 %72 to i32
  %74 = sub nsw i32 %73, 128
  %75 = mul nsw i32 157, %74
  %76 = load i8, i8* %11, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* %11, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp sge i32 %79, 161
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 98, i32 64
  %83 = sub nsw i32 %77, %82
  %84 = add nsw i32 %75, %83
  store i32 %84, i32* %12, align 4
  store i32 65533, i32* %13, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ult i32 %85, 2041
  br i1 %86, label %87, label %110

87:                                               ; preds = %71
  %88 = load i32, i32* %12, align 4
  %89 = icmp ult i32 %88, 1883
  br i1 %89, label %90, label %109

90:                                               ; preds = %87
  %91 = load i16*, i16** @hkscs1999_2uni_page88, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sub i32 %92, 1256
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i16, i16* %91, i64 %94
  %96 = load i16, i16* %95, align 2
  store i16 %96, i16* %14, align 2
  %97 = load i16*, i16** @hkscs1999_2uni_upages, align 8
  %98 = load i16, i16* %14, align 2
  %99 = zext i16 %98 to i32
  %100 = ashr i32 %99, 6
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i16, i16* %97, i64 %101
  %103 = load i16, i16* %102, align 2
  %104 = zext i16 %103 to i32
  %105 = load i16, i16* %14, align 2
  %106 = zext i16 %105 to i32
  %107 = and i32 %106, 63
  %108 = or i32 %104, %107
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %90, %87
  br label %187

110:                                              ; preds = %71
  %111 = load i32, i32* %12, align 4
  %112 = icmp ult i32 %111, 10990
  br i1 %112, label %113, label %136

113:                                              ; preds = %110
  %114 = load i32, i32* %12, align 4
  %115 = icmp ult i32 %114, 5181
  br i1 %115, label %116, label %135

116:                                              ; preds = %113
  %117 = load i16*, i16** @hkscs1999_2uni_page8d, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sub i32 %118, 2041
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i16, i16* %117, i64 %120
  %122 = load i16, i16* %121, align 2
  store i16 %122, i16* %14, align 2
  %123 = load i16*, i16** @hkscs1999_2uni_upages, align 8
  %124 = load i16, i16* %14, align 2
  %125 = zext i16 %124 to i32
  %126 = ashr i32 %125, 6
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i16, i16* %123, i64 %127
  %129 = load i16, i16* %128, align 2
  %130 = zext i16 %129 to i32
  %131 = load i16, i16* %14, align 2
  %132 = zext i16 %131 to i32
  %133 = and i32 %132, 63
  %134 = or i32 %130, %133
  store i32 %134, i32* %13, align 4
  br label %135

135:                                              ; preds = %116, %113
  br label %186

136:                                              ; preds = %110
  %137 = load i32, i32* %12, align 4
  %138 = icmp ult i32 %137, 18997
  br i1 %138, label %139, label %162

139:                                              ; preds = %136
  %140 = load i32, i32* %12, align 4
  %141 = icmp ult i32 %140, 11461
  br i1 %141, label %142, label %161

142:                                              ; preds = %139
  %143 = load i16*, i16** @hkscs1999_2uni_pagec6, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sub i32 %144, 10990
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i16, i16* %143, i64 %146
  %148 = load i16, i16* %147, align 2
  store i16 %148, i16* %14, align 2
  %149 = load i16*, i16** @hkscs1999_2uni_upages, align 8
  %150 = load i16, i16* %14, align 2
  %151 = zext i16 %150 to i32
  %152 = ashr i32 %151, 6
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i16, i16* %149, i64 %153
  %155 = load i16, i16* %154, align 2
  %156 = zext i16 %155 to i32
  %157 = load i16, i16* %14, align 2
  %158 = zext i16 %157 to i32
  %159 = and i32 %158, 63
  %160 = or i32 %156, %159
  store i32 %160, i32* %13, align 4
  br label %161

161:                                              ; preds = %142, %139
  br label %185

162:                                              ; preds = %136
  %163 = load i32, i32* %12, align 4
  %164 = icmp ult i32 %163, 19939
  br i1 %164, label %165, label %184

165:                                              ; preds = %162
  %166 = load i16*, i16** @hkscs1999_2uni_pagef9, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sub i32 %167, 18997
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i16, i16* %166, i64 %169
  %171 = load i16, i16* %170, align 2
  store i16 %171, i16* %14, align 2
  %172 = load i16*, i16** @hkscs1999_2uni_upages, align 8
  %173 = load i16, i16* %14, align 2
  %174 = zext i16 %173 to i32
  %175 = ashr i32 %174, 6
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i16, i16* %172, i64 %176
  %178 = load i16, i16* %177, align 2
  %179 = zext i16 %178 to i32
  %180 = load i16, i16* %14, align 2
  %181 = zext i16 %180 to i32
  %182 = and i32 %181, 63
  %183 = or i32 %179, %182
  store i32 %183, i32* %13, align 4
  br label %184

184:                                              ; preds = %165, %162
  br label %185

185:                                              ; preds = %184, %161
  br label %186

186:                                              ; preds = %185, %135
  br label %187

187:                                              ; preds = %186, %109
  %188 = load i32, i32* %13, align 4
  %189 = icmp ne i32 %188, 65533
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32, i32* %13, align 4
  %192 = load i32*, i32** %7, align 8
  store i32 %191, i32* %192, align 4
  store i32 2, i32* %5, align 4
  br label %200

193:                                              ; preds = %187
  br label %194

194:                                              ; preds = %193, %67, %63
  %195 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %195, i32* %5, align 4
  br label %200

196:                                              ; preds = %49
  %197 = call i32 @RET_TOOFEW(i32 0)
  store i32 %197, i32* %5, align 4
  br label %200

198:                                              ; preds = %45, %41
  %199 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %199, i32* %5, align 4
  br label %200

200:                                              ; preds = %198, %196, %194, %190
  %201 = load i32, i32* %5, align 4
  ret i32 %201
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
