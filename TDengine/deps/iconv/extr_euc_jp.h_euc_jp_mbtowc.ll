; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_euc_jp.h_euc_jp_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_euc_jp.h_euc_jp_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @euc_jp_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @euc_jp_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca [2 x i8], align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca [2 x i8], align 1
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %10, align 1
  %23 = load i8, i8* %10, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp slt i32 %24, 128
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @ascii_mbtowc(i32 %27, i32* %28, i8* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %238

32:                                               ; preds = %4
  %33 = load i8, i8* %10, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp sge i32 %34, 161
  br i1 %35, label %36, label %101

36:                                               ; preds = %32
  %37 = load i8, i8* %10, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp slt i32 %38, 255
  br i1 %39, label %40, label %101

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @RET_TOOFEW(i32 0)
  store i32 %44, i32* %5, align 4
  br label %238

45:                                               ; preds = %40
  %46 = load i8, i8* %10, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp slt i32 %47, 245
  br i1 %48, label %49, label %77

49:                                               ; preds = %45
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  store i8 %52, i8* %11, align 1
  %53 = load i8, i8* %11, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp sge i32 %54, 161
  br i1 %55, label %56, label %75

56:                                               ; preds = %49
  %57 = load i8, i8* %11, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp slt i32 %58, 255
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load i8, i8* %10, align 1
  %62 = zext i8 %61 to i32
  %63 = sub nsw i32 %62, 128
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 %64, i8* %65, align 1
  %66 = load i8, i8* %11, align 1
  %67 = zext i8 %66 to i32
  %68 = sub nsw i32 %67, 128
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  store i8 %69, i8* %70, align 1
  %71 = load i32, i32* %6, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %74 = call i32 @jisx0208_mbtowc(i32 %71, i32* %72, i8* %73, i32 2)
  store i32 %74, i32* %5, align 4
  br label %238

75:                                               ; preds = %56, %49
  %76 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %76, i32* %5, align 4
  br label %238

77:                                               ; preds = %45
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  store i8 %80, i8* %13, align 1
  %81 = load i8, i8* %13, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp sge i32 %82, 161
  br i1 %83, label %84, label %99

84:                                               ; preds = %77
  %85 = load i8, i8* %13, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp slt i32 %86, 255
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i8, i8* %10, align 1
  %90 = zext i8 %89 to i32
  %91 = sub nsw i32 %90, 245
  %92 = mul nsw i32 94, %91
  %93 = add nsw i32 57344, %92
  %94 = load i8, i8* %13, align 1
  %95 = zext i8 %94 to i32
  %96 = sub nsw i32 %95, 161
  %97 = add nsw i32 %93, %96
  %98 = load i32*, i32** %7, align 8
  store i32 %97, i32* %98, align 4
  store i32 2, i32* %5, align 4
  br label %238

99:                                               ; preds = %84, %77
  %100 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %100, i32* %5, align 4
  br label %238

101:                                              ; preds = %36, %32
  %102 = load i8, i8* %10, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 142
  br i1 %104, label %105, label %142

105:                                              ; preds = %101
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %106, 2
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 @RET_TOOFEW(i32 0)
  store i32 %109, i32* %5, align 4
  br label %238

110:                                              ; preds = %105
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i8, i8* %112, align 1
  store i8 %113, i8* %14, align 1
  %114 = load i8, i8* %14, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp sge i32 %115, 161
  br i1 %116, label %117, label %140

117:                                              ; preds = %110
  %118 = load i8, i8* %14, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp slt i32 %119, 224
  br i1 %120, label %121, label %140

121:                                              ; preds = %117
  %122 = load i32, i32* %6, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = load i32, i32* %9, align 4
  %127 = sub nsw i32 %126, 1
  %128 = call i32 @jisx0201_mbtowc(i32 %122, i32* %123, i8* %125, i32 %127)
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @RET_ILSEQ, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %121
  %133 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %133, i32* %5, align 4
  br label %238

134:                                              ; preds = %121
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 1
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = call i32 (...) @abort() #3
  unreachable

139:                                              ; preds = %134
  store i32 2, i32* %5, align 4
  br label %238

140:                                              ; preds = %117, %110
  %141 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %141, i32* %5, align 4
  br label %238

142:                                              ; preds = %101
  %143 = load i8, i8* %10, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %144, 143
  br i1 %145, label %146, label %236

146:                                              ; preds = %142
  %147 = load i32, i32* %9, align 4
  %148 = icmp slt i32 %147, 2
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = call i32 @RET_TOOFEW(i32 0)
  store i32 %150, i32* %5, align 4
  br label %238

151:                                              ; preds = %146
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = load i8, i8* %153, align 1
  store i8 %154, i8* %16, align 1
  %155 = load i8, i8* %16, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp sge i32 %156, 161
  br i1 %157, label %158, label %234

158:                                              ; preds = %151
  %159 = load i8, i8* %16, align 1
  %160 = zext i8 %159 to i32
  %161 = icmp slt i32 %160, 255
  br i1 %161, label %162, label %234

162:                                              ; preds = %158
  %163 = load i32, i32* %9, align 4
  %164 = icmp slt i32 %163, 3
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = call i32 @RET_TOOFEW(i32 0)
  store i32 %166, i32* %5, align 4
  br label %238

167:                                              ; preds = %162
  %168 = load i8, i8* %16, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp slt i32 %169, 245
  br i1 %170, label %171, label %210

171:                                              ; preds = %167
  %172 = load i8*, i8** %8, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 2
  %174 = load i8, i8* %173, align 1
  store i8 %174, i8* %17, align 1
  %175 = load i8, i8* %17, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp sge i32 %176, 161
  br i1 %177, label %178, label %208

178:                                              ; preds = %171
  %179 = load i8, i8* %17, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp slt i32 %180, 255
  br i1 %181, label %182, label %208

182:                                              ; preds = %178
  %183 = load i8, i8* %16, align 1
  %184 = zext i8 %183 to i32
  %185 = sub nsw i32 %184, 128
  %186 = trunc i32 %185 to i8
  %187 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 0
  store i8 %186, i8* %187, align 1
  %188 = load i8, i8* %17, align 1
  %189 = zext i8 %188 to i32
  %190 = sub nsw i32 %189, 128
  %191 = trunc i32 %190 to i8
  %192 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 1
  store i8 %191, i8* %192, align 1
  %193 = load i32, i32* %6, align 4
  %194 = load i32*, i32** %7, align 8
  %195 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 0
  %196 = call i32 @jisx0212_mbtowc(i32 %193, i32* %194, i8* %195, i32 2)
  store i32 %196, i32* %19, align 4
  %197 = load i32, i32* %19, align 4
  %198 = load i32, i32* @RET_ILSEQ, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %182
  %201 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %201, i32* %5, align 4
  br label %238

202:                                              ; preds = %182
  %203 = load i32, i32* %19, align 4
  %204 = icmp ne i32 %203, 2
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = call i32 (...) @abort() #3
  unreachable

207:                                              ; preds = %202
  store i32 3, i32* %5, align 4
  br label %238

208:                                              ; preds = %178, %171
  %209 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %209, i32* %5, align 4
  br label %238

210:                                              ; preds = %167
  %211 = load i8*, i8** %8, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 2
  %213 = load i8, i8* %212, align 1
  store i8 %213, i8* %20, align 1
  %214 = load i8, i8* %20, align 1
  %215 = zext i8 %214 to i32
  %216 = icmp sge i32 %215, 161
  br i1 %216, label %217, label %232

217:                                              ; preds = %210
  %218 = load i8, i8* %20, align 1
  %219 = zext i8 %218 to i32
  %220 = icmp slt i32 %219, 255
  br i1 %220, label %221, label %232

221:                                              ; preds = %217
  %222 = load i8, i8* %16, align 1
  %223 = zext i8 %222 to i32
  %224 = sub nsw i32 %223, 245
  %225 = mul nsw i32 94, %224
  %226 = add nsw i32 58284, %225
  %227 = load i8, i8* %20, align 1
  %228 = zext i8 %227 to i32
  %229 = sub nsw i32 %228, 161
  %230 = add nsw i32 %226, %229
  %231 = load i32*, i32** %7, align 8
  store i32 %230, i32* %231, align 4
  store i32 3, i32* %5, align 4
  br label %238

232:                                              ; preds = %217, %210
  %233 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %233, i32* %5, align 4
  br label %238

234:                                              ; preds = %158, %151
  %235 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %235, i32* %5, align 4
  br label %238

236:                                              ; preds = %142
  %237 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %237, i32* %5, align 4
  br label %238

238:                                              ; preds = %236, %234, %232, %221, %208, %207, %200, %165, %149, %140, %139, %132, %108, %99, %88, %75, %60, %43, %26
  %239 = load i32, i32* %5, align 4
  ret i32 %239
}

declare dso_local i32 @ascii_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @jisx0208_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @jisx0201_mbtowc(i32, i32*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @jisx0212_mbtowc(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
