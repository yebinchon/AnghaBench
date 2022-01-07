; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_johab_hangul.h_johab_hangul_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_johab_hangul.h_johab_hangul_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jamo_initial_index = common dso_local global i32* null, align 8
@jamo_medial_index = common dso_local global i32* null, align 8
@jamo_final_index = common dso_local global i32* null, align 8
@fill = common dso_local global i32 0, align 4
@jamo_final_notinitial = common dso_local global i8* null, align 8
@NONE = common dso_local global i8 0, align 1
@jamo_medial = common dso_local global i8* null, align 8
@FILL = common dso_local global i8 0, align 1
@jamo_initial = common dso_local global i8* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @johab_hangul_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @johab_hangul_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %10, align 1
  %25 = load i8, i8* %10, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sge i32 %26, 132
  br i1 %27, label %28, label %197

28:                                               ; preds = %4
  %29 = load i8, i8* %10, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sle i32 %30, 211
  br i1 %31, label %32, label %197

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = icmp sge i32 %33, 2
  br i1 %34, label %35, label %195

35:                                               ; preds = %32
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %11, align 1
  %39 = load i8, i8* %11, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp sge i32 %40, 65
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i8, i8* %11, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp slt i32 %44, 127
  br i1 %45, label %54, label %46

46:                                               ; preds = %42, %35
  %47 = load i8, i8* %11, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp sge i32 %48, 129
  br i1 %49, label %50, label %193

50:                                               ; preds = %46
  %51 = load i8, i8* %11, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp slt i32 %52, 255
  br i1 %53, label %54, label %193

54:                                               ; preds = %50, %42
  %55 = load i8, i8* %10, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 8
  %58 = load i8, i8* %11, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %57, %59
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = lshr i32 %61, 10
  %63 = and i32 %62, 31
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %12, align 4
  %65 = lshr i32 %64, 5
  %66 = and i32 %65, 31
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %12, align 4
  %68 = and i32 %67, 31
  store i32 %68, i32* %15, align 4
  %69 = load i32*, i32** @jamo_initial_index, align 8
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %16, align 4
  %74 = load i32*, i32** @jamo_medial_index, align 8
  %75 = load i32, i32* %14, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %17, align 4
  %79 = load i32*, i32** @jamo_final_index, align 8
  %80 = load i32, i32* %15, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %192

86:                                               ; preds = %54
  %87 = load i32, i32* %17, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %192

89:                                               ; preds = %86
  %90 = load i32, i32* %18, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %192

92:                                               ; preds = %89
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* @fill, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %146

96:                                               ; preds = %92
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* @fill, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %96
  %101 = load i8*, i8** @jamo_final_notinitial, align 8
  %102 = load i32, i32* %15, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  store i8 %105, i8* %19, align 1
  %106 = load i8, i8* %19, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* @NONE, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp ne i32 %107, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %100
  %112 = load i8, i8* %19, align 1
  %113 = zext i8 %112 to i32
  %114 = add nsw i32 12592, %113
  %115 = load i32*, i32** %7, align 8
  store i32 %114, i32* %115, align 4
  store i32 2, i32* %5, align 4
  br label %199

116:                                              ; preds = %100
  br label %145

117:                                              ; preds = %96
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* @fill, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %144

121:                                              ; preds = %117
  %122 = load i8*, i8** @jamo_medial, align 8
  %123 = load i32, i32* %14, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  store i8 %126, i8* %20, align 1
  %127 = load i8, i8* %20, align 1
  %128 = zext i8 %127 to i32
  %129 = load i8, i8* @NONE, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %121
  %133 = load i8, i8* %20, align 1
  %134 = zext i8 %133 to i32
  %135 = load i8, i8* @FILL, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp ne i32 %134, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load i8, i8* %20, align 1
  %140 = zext i8 %139 to i32
  %141 = add nsw i32 12592, %140
  %142 = load i32*, i32** %7, align 8
  store i32 %141, i32* %142, align 4
  store i32 2, i32* %5, align 4
  br label %199

143:                                              ; preds = %132, %121
  br label %144

144:                                              ; preds = %143, %117
  br label %145

145:                                              ; preds = %144, %116
  br label %191

146:                                              ; preds = %92
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* @fill, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %178

150:                                              ; preds = %146
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* @fill, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %177

154:                                              ; preds = %150
  %155 = load i8*, i8** @jamo_initial, align 8
  %156 = load i32, i32* %13, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  store i8 %159, i8* %21, align 1
  %160 = load i8, i8* %21, align 1
  %161 = zext i8 %160 to i32
  %162 = load i8, i8* @NONE, align 1
  %163 = zext i8 %162 to i32
  %164 = icmp ne i32 %161, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %154
  %166 = load i8, i8* %21, align 1
  %167 = zext i8 %166 to i32
  %168 = load i8, i8* @FILL, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp ne i32 %167, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %165
  %172 = load i8, i8* %21, align 1
  %173 = zext i8 %172 to i32
  %174 = add nsw i32 12592, %173
  %175 = load i32*, i32** %7, align 8
  store i32 %174, i32* %175, align 4
  store i32 2, i32* %5, align 4
  br label %199

176:                                              ; preds = %165, %154
  br label %177

177:                                              ; preds = %176, %150
  br label %190

178:                                              ; preds = %146
  %179 = load i32, i32* %16, align 4
  %180 = sub nsw i32 %179, 1
  %181 = mul nsw i32 %180, 21
  %182 = load i32, i32* %17, align 4
  %183 = sub nsw i32 %182, 1
  %184 = add nsw i32 %181, %183
  %185 = mul nsw i32 %184, 28
  %186 = add nsw i32 44032, %185
  %187 = load i32, i32* %18, align 4
  %188 = add nsw i32 %186, %187
  %189 = load i32*, i32** %7, align 8
  store i32 %188, i32* %189, align 4
  store i32 2, i32* %5, align 4
  br label %199

190:                                              ; preds = %177
  br label %191

191:                                              ; preds = %190, %145
  br label %192

192:                                              ; preds = %191, %89, %86, %54
  br label %193

193:                                              ; preds = %192, %50, %46
  %194 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %194, i32* %5, align 4
  br label %199

195:                                              ; preds = %32
  %196 = call i32 @RET_TOOFEW(i32 0)
  store i32 %196, i32* %5, align 4
  br label %199

197:                                              ; preds = %28, %4
  %198 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %197, %195, %193, %178, %171, %138, %111
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
