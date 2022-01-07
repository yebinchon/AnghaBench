; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp932.h_cp932_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp932.h_cp932_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @cp932_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp932_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
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
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ascii_mbtowc(i32 %22, i32* %23, i8* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %231

27:                                               ; preds = %4
  %28 = load i8, i8* %10, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sge i32 %29, 161
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i8, i8* %10, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp sle i32 %33, 223
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @jisx0201_mbtowc(i32 %36, i32* %37, i8* %38, i32 %39)
  store i32 %40, i32* %5, align 4
  br label %231

41:                                               ; preds = %31, %27
  %42 = load i8, i8* %10, align 1
  store i8 %42, i8* %11, align 1
  %43 = load i8, i8* %11, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp sge i32 %44, 129
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i8, i8* %11, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp sle i32 %48, 159
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i8, i8* %11, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %52, 135
  br i1 %53, label %62, label %54

54:                                               ; preds = %50, %46, %41
  %55 = load i8, i8* %11, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp sge i32 %56, 224
  br i1 %57, label %58, label %147

58:                                               ; preds = %54
  %59 = load i8, i8* %11, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp sle i32 %60, 234
  br i1 %61, label %62, label %147

62:                                               ; preds = %58, %50
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 @RET_TOOFEW(i32 0)
  store i32 %66, i32* %5, align 4
  br label %231

67:                                               ; preds = %62
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* %12, align 1
  %71 = load i8, i8* %12, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp sge i32 %72, 64
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i8, i8* %12, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp sle i32 %76, 126
  br i1 %77, label %86, label %78

78:                                               ; preds = %74, %67
  %79 = load i8, i8* %12, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp sge i32 %80, 128
  br i1 %81, label %82, label %146

82:                                               ; preds = %78
  %83 = load i8, i8* %12, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp sle i32 %84, 252
  br i1 %85, label %86, label %146

86:                                               ; preds = %82, %74
  %87 = load i8, i8* %11, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp slt i32 %88, 224
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i8, i8* %11, align 1
  %92 = zext i8 %91 to i32
  %93 = sub nsw i32 %92, 129
  br label %98

94:                                               ; preds = %86
  %95 = load i8, i8* %11, align 1
  %96 = zext i8 %95 to i32
  %97 = sub nsw i32 %96, 193
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i32 [ %93, %90 ], [ %97, %94 ]
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %13, align 1
  %101 = load i8, i8* %12, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp slt i32 %102, 128
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i8, i8* %12, align 1
  %106 = zext i8 %105 to i32
  %107 = sub nsw i32 %106, 64
  br label %112

108:                                              ; preds = %98
  %109 = load i8, i8* %12, align 1
  %110 = zext i8 %109 to i32
  %111 = sub nsw i32 %110, 65
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi i32 [ %107, %104 ], [ %111, %108 ]
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %14, align 1
  %115 = load i8, i8* %13, align 1
  %116 = zext i8 %115 to i32
  %117 = mul nsw i32 2, %116
  %118 = load i8, i8* %14, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp slt i32 %119, 94
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 0, i32 1
  %123 = add nsw i32 %117, %122
  %124 = add nsw i32 %123, 33
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  store i8 %125, i8* %126, align 1
  %127 = load i8, i8* %14, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp slt i32 %128, 94
  br i1 %129, label %130, label %133

130:                                              ; preds = %112
  %131 = load i8, i8* %14, align 1
  %132 = zext i8 %131 to i32
  br label %137

133:                                              ; preds = %112
  %134 = load i8, i8* %14, align 1
  %135 = zext i8 %134 to i32
  %136 = sub nsw i32 %135, 94
  br label %137

137:                                              ; preds = %133, %130
  %138 = phi i32 [ %132, %130 ], [ %136, %133 ]
  %139 = add nsw i32 %138, 33
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 1
  store i8 %140, i8* %141, align 1
  %142 = load i32, i32* %6, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  %145 = call i32 @jisx0208_mbtowc(i32 %142, i32* %143, i8* %144, i32 2)
  store i32 %145, i32* %5, align 4
  br label %231

146:                                              ; preds = %82, %78
  br label %229

147:                                              ; preds = %58, %54
  %148 = load i8, i8* %11, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %149, 135
  br i1 %150, label %163, label %151

151:                                              ; preds = %147
  %152 = load i8, i8* %11, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp sge i32 %153, 237
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i8, i8* %11, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp sle i32 %157, 238
  br i1 %158, label %163, label %159

159:                                              ; preds = %155, %151
  %160 = load i8, i8* %11, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp sge i32 %161, 250
  br i1 %162, label %163, label %173

163:                                              ; preds = %159, %155, %147
  %164 = load i32, i32* %9, align 4
  %165 = icmp slt i32 %164, 2
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = call i32 @RET_TOOFEW(i32 0)
  store i32 %167, i32* %5, align 4
  br label %231

168:                                              ; preds = %163
  %169 = load i32, i32* %6, align 4
  %170 = load i32*, i32** %7, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = call i32 @cp932ext_mbtowc(i32 %169, i32* %170, i8* %171, i32 2)
  store i32 %172, i32* %5, align 4
  br label %231

173:                                              ; preds = %159
  %174 = load i8, i8* %11, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp sge i32 %175, 240
  br i1 %176, label %177, label %227

177:                                              ; preds = %173
  %178 = load i8, i8* %11, align 1
  %179 = zext i8 %178 to i32
  %180 = icmp sle i32 %179, 249
  br i1 %180, label %181, label %227

181:                                              ; preds = %177
  %182 = load i32, i32* %9, align 4
  %183 = icmp slt i32 %182, 2
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = call i32 @RET_TOOFEW(i32 0)
  store i32 %185, i32* %5, align 4
  br label %231

186:                                              ; preds = %181
  %187 = load i8*, i8** %8, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 1
  %189 = load i8, i8* %188, align 1
  store i8 %189, i8* %12, align 1
  %190 = load i8, i8* %12, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp sge i32 %191, 64
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = load i8, i8* %12, align 1
  %195 = zext i8 %194 to i32
  %196 = icmp sle i32 %195, 126
  br i1 %196, label %205, label %197

197:                                              ; preds = %193, %186
  %198 = load i8, i8* %12, align 1
  %199 = zext i8 %198 to i32
  %200 = icmp sge i32 %199, 128
  br i1 %200, label %201, label %226

201:                                              ; preds = %197
  %202 = load i8, i8* %12, align 1
  %203 = zext i8 %202 to i32
  %204 = icmp sle i32 %203, 252
  br i1 %204, label %205, label %226

205:                                              ; preds = %201, %193
  %206 = load i8, i8* %11, align 1
  %207 = zext i8 %206 to i32
  %208 = sub nsw i32 %207, 240
  %209 = mul nsw i32 188, %208
  %210 = add nsw i32 57344, %209
  %211 = load i8, i8* %12, align 1
  %212 = zext i8 %211 to i32
  %213 = icmp slt i32 %212, 128
  br i1 %213, label %214, label %218

214:                                              ; preds = %205
  %215 = load i8, i8* %12, align 1
  %216 = zext i8 %215 to i32
  %217 = sub nsw i32 %216, 64
  br label %222

218:                                              ; preds = %205
  %219 = load i8, i8* %12, align 1
  %220 = zext i8 %219 to i32
  %221 = sub nsw i32 %220, 65
  br label %222

222:                                              ; preds = %218, %214
  %223 = phi i32 [ %217, %214 ], [ %221, %218 ]
  %224 = add nsw i32 %210, %223
  %225 = load i32*, i32** %7, align 8
  store i32 %224, i32* %225, align 4
  store i32 2, i32* %5, align 4
  br label %231

226:                                              ; preds = %201, %197
  br label %227

227:                                              ; preds = %226, %177, %173
  br label %228

228:                                              ; preds = %227
  br label %229

229:                                              ; preds = %228, %146
  %230 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %230, i32* %5, align 4
  br label %231

231:                                              ; preds = %229, %222, %184, %168, %166, %137, %65, %35, %21
  %232 = load i32, i32* %5, align 4
  ret i32 %232
}

declare dso_local i32 @ascii_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @jisx0201_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @jisx0208_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @cp932ext_mbtowc(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
