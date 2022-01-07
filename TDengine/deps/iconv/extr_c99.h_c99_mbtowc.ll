; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_c99.h_c99_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_c99.h_c99_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @c99_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c99_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %10, align 1
  %16 = load i8, i8* %10, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp slt i32 %17, 160
  br i1 %18, label %19, label %228

19:                                               ; preds = %4
  %20 = load i8, i8* %10, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 92
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i8, i8* %10, align 1
  %25 = zext i8 %24 to i32
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  store i32 1, i32* %5, align 4
  br label %232

27:                                               ; preds = %19
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 @RET_TOOFEW(i32 0)
  store i32 %31, i32* %5, align 4
  br label %232

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %10, align 1
  %36 = load i8, i8* %10, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 117
  br i1 %38, label %39, label %130

39:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  store i32 2, i32* %12, align 4
  br label %40

40:                                               ; preds = %105, %39
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 6
  br i1 %42, label %43, label %108

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 @RET_TOOFEW(i32 0)
  store i32 %48, i32* %5, align 4
  br label %232

49:                                               ; preds = %43
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* %10, align 1
  %55 = load i8, i8* %10, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp sge i32 %56, 48
  br i1 %57, label %58, label %67

58:                                               ; preds = %49
  %59 = load i8, i8* %10, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp sle i32 %60, 57
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i8, i8* %10, align 1
  %64 = zext i8 %63 to i32
  %65 = sub nsw i32 %64, 48
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %10, align 1
  br label %96

67:                                               ; preds = %58, %49
  %68 = load i8, i8* %10, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp sge i32 %69, 65
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load i8, i8* %10, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp sle i32 %73, 90
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i8, i8* %10, align 1
  %77 = zext i8 %76 to i32
  %78 = sub nsw i32 %77, 55
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %10, align 1
  br label %95

80:                                               ; preds = %71, %67
  %81 = load i8, i8* %10, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp sge i32 %82, 97
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i8, i8* %10, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp sle i32 %86, 122
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i8, i8* %10, align 1
  %90 = zext i8 %89 to i32
  %91 = sub nsw i32 %90, 87
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %10, align 1
  br label %94

93:                                               ; preds = %84, %80
  br label %230

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %75
  br label %96

96:                                               ; preds = %95, %62
  %97 = load i8, i8* %10, align 1
  %98 = zext i8 %97 to i32
  %99 = load i32, i32* %12, align 4
  %100 = sub nsw i32 5, %99
  %101 = mul nsw i32 4, %100
  %102 = shl i32 %98, %101
  %103 = load i32, i32* %11, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %96
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %40

108:                                              ; preds = %40
  %109 = load i32, i32* %11, align 4
  %110 = icmp sge i32 %109, 160
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, i32* %11, align 4
  %113 = icmp sge i32 %112, 55296
  br i1 %113, label %114, label %126

114:                                              ; preds = %111
  %115 = load i32, i32* %11, align 4
  %116 = icmp slt i32 %115, 57344
  br i1 %116, label %117, label %126

117:                                              ; preds = %114, %108
  %118 = load i32, i32* %11, align 4
  %119 = icmp eq i32 %118, 36
  br i1 %119, label %126, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %11, align 4
  %122 = icmp eq i32 %121, 64
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = icmp eq i32 %124, 96
  br i1 %125, label %126, label %129

126:                                              ; preds = %123, %120, %117, %114, %111
  %127 = load i32, i32* %11, align 4
  %128 = load i32*, i32** %7, align 8
  store i32 %127, i32* %128, align 4
  store i32 6, i32* %5, align 4
  br label %232

129:                                              ; preds = %123
  br label %227

130:                                              ; preds = %32
  %131 = load i8, i8* %10, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %132, 85
  br i1 %133, label %134, label %225

134:                                              ; preds = %130
  store i32 0, i32* %11, align 4
  store i32 2, i32* %12, align 4
  br label %135

135:                                              ; preds = %200, %134
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %136, 10
  br i1 %137, label %138, label %203

138:                                              ; preds = %135
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp sle i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = call i32 @RET_TOOFEW(i32 0)
  store i32 %143, i32* %5, align 4
  br label %232

144:                                              ; preds = %138
  %145 = load i8*, i8** %8, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  store i8 %149, i8* %10, align 1
  %150 = load i8, i8* %10, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp sge i32 %151, 48
  br i1 %152, label %153, label %162

153:                                              ; preds = %144
  %154 = load i8, i8* %10, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp sle i32 %155, 57
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load i8, i8* %10, align 1
  %159 = zext i8 %158 to i32
  %160 = sub nsw i32 %159, 48
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %10, align 1
  br label %191

162:                                              ; preds = %153, %144
  %163 = load i8, i8* %10, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp sge i32 %164, 65
  br i1 %165, label %166, label %175

166:                                              ; preds = %162
  %167 = load i8, i8* %10, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp sle i32 %168, 90
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load i8, i8* %10, align 1
  %172 = zext i8 %171 to i32
  %173 = sub nsw i32 %172, 55
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %10, align 1
  br label %190

175:                                              ; preds = %166, %162
  %176 = load i8, i8* %10, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp sge i32 %177, 97
  br i1 %178, label %179, label %188

179:                                              ; preds = %175
  %180 = load i8, i8* %10, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp sle i32 %181, 122
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  %184 = load i8, i8* %10, align 1
  %185 = zext i8 %184 to i32
  %186 = sub nsw i32 %185, 87
  %187 = trunc i32 %186 to i8
  store i8 %187, i8* %10, align 1
  br label %189

188:                                              ; preds = %179, %175
  br label %230

189:                                              ; preds = %183
  br label %190

190:                                              ; preds = %189, %170
  br label %191

191:                                              ; preds = %190, %157
  %192 = load i8, i8* %10, align 1
  %193 = zext i8 %192 to i32
  %194 = load i32, i32* %12, align 4
  %195 = sub nsw i32 9, %194
  %196 = mul nsw i32 4, %195
  %197 = shl i32 %193, %196
  %198 = load i32, i32* %11, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %11, align 4
  br label %200

200:                                              ; preds = %191
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %12, align 4
  br label %135

203:                                              ; preds = %135
  %204 = load i32, i32* %11, align 4
  %205 = icmp sge i32 %204, 160
  br i1 %205, label %206, label %212

206:                                              ; preds = %203
  %207 = load i32, i32* %11, align 4
  %208 = icmp sge i32 %207, 55296
  br i1 %208, label %209, label %221

209:                                              ; preds = %206
  %210 = load i32, i32* %11, align 4
  %211 = icmp slt i32 %210, 57344
  br i1 %211, label %212, label %221

212:                                              ; preds = %209, %203
  %213 = load i32, i32* %11, align 4
  %214 = icmp eq i32 %213, 36
  br i1 %214, label %221, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %11, align 4
  %217 = icmp eq i32 %216, 64
  br i1 %217, label %221, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %11, align 4
  %220 = icmp eq i32 %219, 96
  br i1 %220, label %221, label %224

221:                                              ; preds = %218, %215, %212, %209, %206
  %222 = load i32, i32* %11, align 4
  %223 = load i32*, i32** %7, align 8
  store i32 %222, i32* %223, align 4
  store i32 10, i32* %5, align 4
  br label %232

224:                                              ; preds = %218
  br label %226

225:                                              ; preds = %130
  br label %230

226:                                              ; preds = %224
  br label %227

227:                                              ; preds = %226, %129
  br label %228

228:                                              ; preds = %227, %4
  %229 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %229, i32* %5, align 4
  br label %232

230:                                              ; preds = %225, %188, %93
  %231 = load i32*, i32** %7, align 8
  store i32 92, i32* %231, align 4
  store i32 1, i32* %5, align 4
  br label %232

232:                                              ; preds = %230, %228, %221, %142, %126, %47, %30, %23
  %233 = load i32, i32* %5, align 4
  ret i32 %233
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
