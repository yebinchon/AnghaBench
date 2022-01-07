; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/gen/extr_bootargs.c_getval.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/gen/extr_bootargs.c_getval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@STR = common dso_local global i32 0, align 4
@NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64 (i8)*, i64)* @getval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getval(i8* %0, i64* %1, i64 (i8)* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64 (i8)*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 (i8)* %2, i64 (i8)** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 1, i32* %13, align 4
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %14, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 61
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* %14, align 8
  br label %24

24:                                               ; preds = %20, %4
  %25 = load i64, i64* %14, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %232

30:                                               ; preds = %27, %24
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 45
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  store i32 -1, i32* %13, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %6, align 8
  %41 = load i8, i8* %39, align 1
  %42 = sext i8 %41 to i32
  %43 = sub nsw i32 %42, 48
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %11, align 8
  store i64 10, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %38
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  switch i32 %50, label %65 [
    i32 120, label %51
    i32 98, label %54
    i32 48, label %57
    i32 49, label %57
    i32 50, label %57
    i32 51, label %57
    i32 52, label %57
    i32 53, label %57
    i32 54, label %57
    i32 55, label %57
  ]

51:                                               ; preds = %47
  store i64 16, i64* %10, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  br label %74

54:                                               ; preds = %47
  store i64 2, i64* %10, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  br label %74

57:                                               ; preds = %47, %47, %47, %47, %47, %47, %47, %47
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = sub nsw i32 %60, 48
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %11, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %6, align 8
  store i64 8, i64* %10, align 8
  br label %74

65:                                               ; preds = %47
  %66 = load i64 (i8)*, i64 (i8)** %8, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i8, i8* %67, align 1
  %69 = call i64 %66(i8 signext %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @STR, align 4
  store i32 %72, i32* %5, align 4
  br label %235

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %57, %54, %51
  br label %82

75:                                               ; preds = %38
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %10, align 8
  %78 = icmp uge i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @STR, align 4
  store i32 %80, i32* %5, align 4
  br label %235

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %74
  br label %83

83:                                               ; preds = %204, %82
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %6, align 8
  %86 = load i8, i8* %84, align 1
  store i8 %86, i8* %12, align 1
  %87 = load i64 (i8)*, i64 (i8)** %8, align 8
  %88 = load i8, i8* %12, align 1
  %89 = call i64 %87(i8 signext %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %212

92:                                               ; preds = %83
  %93 = load i64, i64* %10, align 8
  %94 = icmp ule i64 %93, 10
  br i1 %94, label %95, label %111

95:                                               ; preds = %92
  %96 = load i8, i8* %12, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp sge i32 %97, 48
  br i1 %98, label %99, label %111

99:                                               ; preds = %95
  %100 = load i8, i8* %12, align 1
  %101 = zext i8 %100 to i64
  %102 = load i64, i64* %10, align 8
  %103 = sub i64 10, %102
  %104 = sub i64 57, %103
  %105 = icmp ule i64 %101, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load i8, i8* %12, align 1
  %108 = zext i8 %107 to i32
  %109 = sub nsw i32 %108, 48
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %12, align 1
  br label %197

111:                                              ; preds = %99, %95, %92
  %112 = load i64, i64* %10, align 8
  %113 = icmp eq i64 %112, 16
  br i1 %113, label %114, label %127

114:                                              ; preds = %111
  %115 = load i8, i8* %12, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp sge i32 %116, 48
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load i8, i8* %12, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp sle i32 %120, 57
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load i8, i8* %12, align 1
  %124 = zext i8 %123 to i32
  %125 = sub nsw i32 %124, 48
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %12, align 1
  br label %196

127:                                              ; preds = %118, %114, %111
  %128 = load i64, i64* %10, align 8
  %129 = icmp eq i64 %128, 16
  br i1 %129, label %130, label %143

130:                                              ; preds = %127
  %131 = load i8, i8* %12, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp sge i32 %132, 97
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = load i8, i8* %12, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp sle i32 %136, 102
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load i8, i8* %12, align 1
  %140 = zext i8 %139 to i32
  %141 = sub nsw i32 %140, 87
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %12, align 1
  br label %195

143:                                              ; preds = %134, %130, %127
  %144 = load i64, i64* %10, align 8
  %145 = icmp eq i64 %144, 16
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  %147 = load i8, i8* %12, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp sge i32 %148, 65
  br i1 %149, label %150, label %159

150:                                              ; preds = %146
  %151 = load i8, i8* %12, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp sle i32 %152, 70
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load i8, i8* %12, align 1
  %156 = zext i8 %155 to i32
  %157 = sub nsw i32 %156, 55
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %12, align 1
  br label %194

159:                                              ; preds = %150, %146, %143
  %160 = load i8, i8* %12, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %161, 107
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  %164 = load i8, i8* %12, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp eq i32 %165, 75
  br i1 %166, label %167, label %170

167:                                              ; preds = %163, %159
  %168 = load i32, i32* %13, align 4
  %169 = mul nsw i32 %168, 1024
  store i32 %169, i32* %13, align 4
  br label %212

170:                                              ; preds = %163
  %171 = load i8, i8* %12, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp eq i32 %172, 109
  br i1 %173, label %178, label %174

174:                                              ; preds = %170
  %175 = load i8, i8* %12, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp eq i32 %176, 77
  br i1 %177, label %178, label %181

178:                                              ; preds = %174, %170
  %179 = load i32, i32* %13, align 4
  %180 = mul nsw i32 %179, 1048576
  store i32 %180, i32* %13, align 4
  br label %212

181:                                              ; preds = %174
  %182 = load i8, i8* %12, align 1
  %183 = zext i8 %182 to i32
  %184 = icmp eq i32 %183, 103
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = load i8, i8* %12, align 1
  %187 = zext i8 %186 to i32
  %188 = icmp eq i32 %187, 71
  br i1 %188, label %189, label %192

189:                                              ; preds = %185, %181
  %190 = load i32, i32* %13, align 4
  %191 = mul nsw i32 %190, 1073741824
  store i32 %191, i32* %13, align 4
  br label %212

192:                                              ; preds = %185
  %193 = load i32, i32* @STR, align 4
  store i32 %193, i32* %5, align 4
  br label %235

194:                                              ; preds = %154
  br label %195

195:                                              ; preds = %194, %138
  br label %196

196:                                              ; preds = %195, %122
  br label %197

197:                                              ; preds = %196, %106
  %198 = load i8, i8* %12, align 1
  %199 = zext i8 %198 to i64
  %200 = load i64, i64* %10, align 8
  %201 = icmp uge i64 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %197
  %203 = load i32, i32* @STR, align 4
  store i32 %203, i32* %5, align 4
  br label %235

204:                                              ; preds = %197
  %205 = load i64, i64* %10, align 8
  %206 = load i64, i64* %11, align 8
  %207 = mul i64 %206, %205
  store i64 %207, i64* %11, align 8
  %208 = load i8, i8* %12, align 1
  %209 = zext i8 %208 to i64
  %210 = load i64, i64* %11, align 8
  %211 = add i64 %210, %209
  store i64 %211, i64* %11, align 8
  br label %83

212:                                              ; preds = %189, %178, %167, %91
  %213 = load i64 (i8)*, i64 (i8)** %8, align 8
  %214 = load i8, i8* %12, align 1
  %215 = call i64 %213(i8 signext %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %225, label %217

217:                                              ; preds = %212
  %218 = load i64 (i8)*, i64 (i8)** %8, align 8
  %219 = load i8*, i8** %6, align 8
  %220 = load i8, i8* %219, align 1
  %221 = call i64 %218(i8 signext %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %217
  %224 = load i32, i32* @STR, align 4
  store i32 %224, i32* %5, align 4
  br label %235

225:                                              ; preds = %217, %212
  %226 = load i64, i64* %11, align 8
  %227 = load i32, i32* %13, align 4
  %228 = sext i32 %227 to i64
  %229 = mul i64 %226, %228
  %230 = load i64*, i64** %7, align 8
  store i64 %229, i64* %230, align 8
  %231 = load i32, i32* @NUM, align 4
  store i32 %231, i32* %5, align 4
  br label %235

232:                                              ; preds = %27
  %233 = load i64*, i64** %7, align 8
  store i64 1, i64* %233, align 8
  %234 = load i32, i32* @NUM, align 4
  store i32 %234, i32* %5, align 4
  br label %235

235:                                              ; preds = %232, %225, %223, %202, %192, %79, %71
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
