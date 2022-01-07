; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_sjis.h_sjis_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_sjis.h_sjis_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @sjis_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sjis_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca [2 x i8], align 1
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
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = load i8, i8* %10, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp sge i32 %23, 161
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i8, i8* %10, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp sle i32 %27, 223
  br i1 %28, label %29, label %35

29:                                               ; preds = %25, %4
  %30 = load i32, i32* %6, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @jisx0201_mbtowc(i32 %30, i32* %31, i8* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %194

35:                                               ; preds = %25, %21
  %36 = load i8, i8* %10, align 1
  store i8 %36, i8* %11, align 1
  %37 = load i8, i8* %11, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sge i32 %38, 129
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i8, i8* %11, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sle i32 %42, 159
  br i1 %43, label %52, label %44

44:                                               ; preds = %40, %35
  %45 = load i8, i8* %11, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp sge i32 %46, 224
  br i1 %47, label %48, label %137

48:                                               ; preds = %44
  %49 = load i8, i8* %11, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp sle i32 %50, 234
  br i1 %51, label %52, label %137

52:                                               ; preds = %48, %40
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 2
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 @RET_TOOFEW(i32 0)
  store i32 %56, i32* %5, align 4
  br label %194

57:                                               ; preds = %52
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %12, align 1
  %61 = load i8, i8* %12, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp sge i32 %62, 64
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i8, i8* %12, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp sle i32 %66, 126
  br i1 %67, label %76, label %68

68:                                               ; preds = %64, %57
  %69 = load i8, i8* %12, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp sge i32 %70, 128
  br i1 %71, label %72, label %136

72:                                               ; preds = %68
  %73 = load i8, i8* %12, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp sle i32 %74, 252
  br i1 %75, label %76, label %136

76:                                               ; preds = %72, %64
  %77 = load i8, i8* %11, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp slt i32 %78, 224
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i8, i8* %11, align 1
  %82 = zext i8 %81 to i32
  %83 = sub nsw i32 %82, 129
  br label %88

84:                                               ; preds = %76
  %85 = load i8, i8* %11, align 1
  %86 = zext i8 %85 to i32
  %87 = sub nsw i32 %86, 193
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i32 [ %83, %80 ], [ %87, %84 ]
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %13, align 1
  %91 = load i8, i8* %12, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp slt i32 %92, 128
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i8, i8* %12, align 1
  %96 = zext i8 %95 to i32
  %97 = sub nsw i32 %96, 64
  br label %102

98:                                               ; preds = %88
  %99 = load i8, i8* %12, align 1
  %100 = zext i8 %99 to i32
  %101 = sub nsw i32 %100, 65
  br label %102

102:                                              ; preds = %98, %94
  %103 = phi i32 [ %97, %94 ], [ %101, %98 ]
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %14, align 1
  %105 = load i8, i8* %13, align 1
  %106 = zext i8 %105 to i32
  %107 = mul nsw i32 2, %106
  %108 = load i8, i8* %14, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp slt i32 %109, 94
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 0, i32 1
  %113 = add nsw i32 %107, %112
  %114 = add nsw i32 %113, 33
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  store i8 %115, i8* %116, align 1
  %117 = load i8, i8* %14, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp slt i32 %118, 94
  br i1 %119, label %120, label %123

120:                                              ; preds = %102
  %121 = load i8, i8* %14, align 1
  %122 = zext i8 %121 to i32
  br label %127

123:                                              ; preds = %102
  %124 = load i8, i8* %14, align 1
  %125 = zext i8 %124 to i32
  %126 = sub nsw i32 %125, 94
  br label %127

127:                                              ; preds = %123, %120
  %128 = phi i32 [ %122, %120 ], [ %126, %123 ]
  %129 = add nsw i32 %128, 33
  %130 = trunc i32 %129 to i8
  %131 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 1
  store i8 %130, i8* %131, align 1
  %132 = load i32, i32* %6, align 4
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  %135 = call i32 @jisx0208_mbtowc(i32 %132, i32* %133, i8* %134, i32 2)
  store i32 %135, i32* %5, align 4
  br label %194

136:                                              ; preds = %72, %68
  br label %192

137:                                              ; preds = %48, %44
  %138 = load i8, i8* %11, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp sge i32 %139, 240
  br i1 %140, label %141, label %191

141:                                              ; preds = %137
  %142 = load i8, i8* %11, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp sle i32 %143, 249
  br i1 %144, label %145, label %191

145:                                              ; preds = %141
  %146 = load i32, i32* %9, align 4
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = call i32 @RET_TOOFEW(i32 0)
  store i32 %149, i32* %5, align 4
  br label %194

150:                                              ; preds = %145
  %151 = load i8*, i8** %8, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i8, i8* %152, align 1
  store i8 %153, i8* %12, align 1
  %154 = load i8, i8* %12, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp sge i32 %155, 64
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = load i8, i8* %12, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp sle i32 %159, 126
  br i1 %160, label %169, label %161

161:                                              ; preds = %157, %150
  %162 = load i8, i8* %12, align 1
  %163 = zext i8 %162 to i32
  %164 = icmp sge i32 %163, 128
  br i1 %164, label %165, label %190

165:                                              ; preds = %161
  %166 = load i8, i8* %12, align 1
  %167 = zext i8 %166 to i32
  %168 = icmp sle i32 %167, 252
  br i1 %168, label %169, label %190

169:                                              ; preds = %165, %157
  %170 = load i8, i8* %11, align 1
  %171 = zext i8 %170 to i32
  %172 = sub nsw i32 %171, 240
  %173 = mul nsw i32 188, %172
  %174 = add nsw i32 57344, %173
  %175 = load i8, i8* %12, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp slt i32 %176, 128
  br i1 %177, label %178, label %182

178:                                              ; preds = %169
  %179 = load i8, i8* %12, align 1
  %180 = zext i8 %179 to i32
  %181 = sub nsw i32 %180, 64
  br label %186

182:                                              ; preds = %169
  %183 = load i8, i8* %12, align 1
  %184 = zext i8 %183 to i32
  %185 = sub nsw i32 %184, 65
  br label %186

186:                                              ; preds = %182, %178
  %187 = phi i32 [ %181, %178 ], [ %185, %182 ]
  %188 = add nsw i32 %174, %187
  %189 = load i32*, i32** %7, align 8
  store i32 %188, i32* %189, align 4
  store i32 2, i32* %5, align 4
  br label %194

190:                                              ; preds = %165, %161
  br label %191

191:                                              ; preds = %190, %141, %137
  br label %192

192:                                              ; preds = %191, %136
  %193 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %192, %186, %148, %127, %55, %29
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local i32 @jisx0201_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @jisx0208_mbtowc(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
