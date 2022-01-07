; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_java.h_java_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_java.h_java_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @java_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @java_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %10, align 1
  %17 = load i8, i8* %10, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %18, 92
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i8, i8* %10, align 1
  %22 = zext i8 %21 to i32
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  store i32 1, i32* %5, align 4
  br label %229

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @RET_TOOFEW(i32 0)
  store i32 %28, i32* %5, align 4
  br label %229

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 117
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %227

36:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  store i32 2, i32* %13, align 4
  br label %37

37:                                               ; preds = %102, %36
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 6
  br i1 %39, label %40, label %105

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 @RET_TOOFEW(i32 0)
  store i32 %45, i32* %5, align 4
  br label %229

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %10, align 1
  %52 = load i8, i8* %10, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp sge i32 %53, 48
  br i1 %54, label %55, label %64

55:                                               ; preds = %46
  %56 = load i8, i8* %10, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp sle i32 %57, 57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i8, i8* %10, align 1
  %61 = zext i8 %60 to i32
  %62 = sub nsw i32 %61, 48
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %10, align 1
  br label %93

64:                                               ; preds = %55, %46
  %65 = load i8, i8* %10, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp sge i32 %66, 65
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i8, i8* %10, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp sle i32 %70, 90
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i8, i8* %10, align 1
  %74 = zext i8 %73 to i32
  %75 = sub nsw i32 %74, 55
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %10, align 1
  br label %92

77:                                               ; preds = %68, %64
  %78 = load i8, i8* %10, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp sge i32 %79, 97
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i8, i8* %10, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp sle i32 %83, 122
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i8, i8* %10, align 1
  %87 = zext i8 %86 to i32
  %88 = sub nsw i32 %87, 87
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %10, align 1
  br label %91

90:                                               ; preds = %81, %77
  br label %227

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91, %72
  br label %93

93:                                               ; preds = %92, %59
  %94 = load i8, i8* %10, align 1
  %95 = zext i8 %94 to i32
  %96 = load i32, i32* %13, align 4
  %97 = sub nsw i32 5, %96
  %98 = mul nsw i32 4, %97
  %99 = shl i32 %95, %98
  %100 = load i32, i32* %11, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %37

105:                                              ; preds = %37
  %106 = load i32, i32* %11, align 4
  %107 = icmp sge i32 %106, 55296
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %109, 57344
  br i1 %110, label %114, label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %11, align 4
  %113 = load i32*, i32** %7, align 8
  store i32 %112, i32* %113, align 4
  store i32 6, i32* %5, align 4
  br label %229

114:                                              ; preds = %108
  %115 = load i32, i32* %11, align 4
  %116 = icmp sge i32 %115, 56320
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %227

118:                                              ; preds = %114
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 7
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32 @RET_TOOFEW(i32 0)
  store i32 %122, i32* %5, align 4
  br label %229

123:                                              ; preds = %118
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 6
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp ne i32 %127, 92
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %227

130:                                              ; preds = %123
  %131 = load i32, i32* %9, align 4
  %132 = icmp slt i32 %131, 8
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 @RET_TOOFEW(i32 0)
  store i32 %134, i32* %5, align 4
  br label %229

135:                                              ; preds = %130
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 7
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp ne i32 %139, 117
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %227

142:                                              ; preds = %135
  store i32 0, i32* %12, align 4
  store i32 8, i32* %13, align 4
  br label %143

143:                                              ; preds = %208, %142
  %144 = load i32, i32* %13, align 4
  %145 = icmp slt i32 %144, 12
  br i1 %145, label %146, label %211

146:                                              ; preds = %143
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp sle i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = call i32 @RET_TOOFEW(i32 0)
  store i32 %151, i32* %5, align 4
  br label %229

152:                                              ; preds = %146
  %153 = load i8*, i8** %8, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i8, i8* %156, align 1
  store i8 %157, i8* %10, align 1
  %158 = load i8, i8* %10, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp sge i32 %159, 48
  br i1 %160, label %161, label %170

161:                                              ; preds = %152
  %162 = load i8, i8* %10, align 1
  %163 = zext i8 %162 to i32
  %164 = icmp sle i32 %163, 57
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = load i8, i8* %10, align 1
  %167 = zext i8 %166 to i32
  %168 = sub nsw i32 %167, 48
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %10, align 1
  br label %199

170:                                              ; preds = %161, %152
  %171 = load i8, i8* %10, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp sge i32 %172, 65
  br i1 %173, label %174, label %183

174:                                              ; preds = %170
  %175 = load i8, i8* %10, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp sle i32 %176, 90
  br i1 %177, label %178, label %183

178:                                              ; preds = %174
  %179 = load i8, i8* %10, align 1
  %180 = zext i8 %179 to i32
  %181 = sub nsw i32 %180, 55
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %10, align 1
  br label %198

183:                                              ; preds = %174, %170
  %184 = load i8, i8* %10, align 1
  %185 = zext i8 %184 to i32
  %186 = icmp sge i32 %185, 97
  br i1 %186, label %187, label %196

187:                                              ; preds = %183
  %188 = load i8, i8* %10, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp sle i32 %189, 122
  br i1 %190, label %191, label %196

191:                                              ; preds = %187
  %192 = load i8, i8* %10, align 1
  %193 = zext i8 %192 to i32
  %194 = sub nsw i32 %193, 87
  %195 = trunc i32 %194 to i8
  store i8 %195, i8* %10, align 1
  br label %197

196:                                              ; preds = %187, %183
  br label %227

197:                                              ; preds = %191
  br label %198

198:                                              ; preds = %197, %178
  br label %199

199:                                              ; preds = %198, %165
  %200 = load i8, i8* %10, align 1
  %201 = zext i8 %200 to i32
  %202 = load i32, i32* %13, align 4
  %203 = sub nsw i32 11, %202
  %204 = mul nsw i32 4, %203
  %205 = shl i32 %201, %204
  %206 = load i32, i32* %12, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %12, align 4
  br label %208

208:                                              ; preds = %199
  %209 = load i32, i32* %13, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %13, align 4
  br label %143

211:                                              ; preds = %143
  %212 = load i32, i32* %12, align 4
  %213 = icmp sge i32 %212, 56320
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i32, i32* %12, align 4
  %216 = icmp slt i32 %215, 57344
  br i1 %216, label %218, label %217

217:                                              ; preds = %214, %211
  br label %227

218:                                              ; preds = %214
  %219 = load i32, i32* %11, align 4
  %220 = sub nsw i32 %219, 55296
  %221 = shl i32 %220, 10
  %222 = add nsw i32 65536, %221
  %223 = load i32, i32* %12, align 4
  %224 = sub nsw i32 %223, 56320
  %225 = add nsw i32 %222, %224
  %226 = load i32*, i32** %7, align 8
  store i32 %225, i32* %226, align 4
  store i32 12, i32* %5, align 4
  br label %229

227:                                              ; preds = %217, %196, %141, %129, %117, %90, %35
  %228 = load i32*, i32** %7, align 8
  store i32 92, i32* %228, align 4
  store i32 1, i32* %5, align 4
  br label %229

229:                                              ; preds = %227, %218, %150, %133, %121, %111, %44, %27, %20
  %230 = load i32, i32* %5, align 4
  ret i32 %230
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
