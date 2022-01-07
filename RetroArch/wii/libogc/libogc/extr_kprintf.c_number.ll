; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_kprintf.c_number.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_kprintf.c_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"0123456789abcdefghijklmnopqrstuvwxyz\00", align 1
@LARGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@LEFT = common dso_local global i32 0, align 4
@ZEROPAD = common dso_local global i32 0, align 4
@SIGN = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@SPACE = common dso_local global i32 0, align 4
@SPECIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32, i32, i32, i32)* @number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @number(i8* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca [66 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @LARGE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %24

24:                                               ; preds = %23, %6
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @LEFT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* @ZEROPAD, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %13, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 36
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34
  store i8* null, i8** %7, align 8
  br label %225

41:                                               ; preds = %37
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @ZEROPAD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 48, i32 32
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @SIGN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %41
  %54 = load i64, i64* %9, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  store i8 45, i8* %15, align 1
  %57 = load i64, i64* %9, align 8
  %58 = sub nsw i64 0, %57
  store i64 %58, i64* %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %11, align 4
  br label %79

61:                                               ; preds = %53
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @PLUS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  store i8 43, i8* %15, align 1
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %11, align 4
  br label %78

69:                                               ; preds = %61
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @SPACE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  store i8 32, i8* %15, align 1
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %74, %69
  br label %78

78:                                               ; preds = %77, %66
  br label %79

79:                                               ; preds = %78, %56
  br label %80

80:                                               ; preds = %79, %41
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @SPECIAL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %80
  %86 = load i32, i32* %10, align 4
  %87 = icmp eq i32 %86, 16
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %11, align 4
  %90 = sub nsw i32 %89, 2
  store i32 %90, i32* %11, align 4
  br label %98

91:                                               ; preds = %85
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 8
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %88
  br label %99

99:                                               ; preds = %98, %80
  store i32 0, i32* %18, align 4
  %100 = load i64, i64* %9, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32, i32* %18, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %18, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds [66 x i8], [66 x i8]* %16, i64 0, i64 %105
  store i8 48, i8* %106, align 1
  br label %123

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %111, %107
  %109 = load i64, i64* %9, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %108
  %112 = load i8*, i8** %17, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i64 @do_div(i64 %113, i32 %114)
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = load i32, i32* %18, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %18, align 4
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds [66 x i8], [66 x i8]* %16, i64 0, i64 %120
  store i8 %117, i8* %121, align 1
  br label %108

122:                                              ; preds = %108
  br label %123

123:                                              ; preds = %122, %102
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* %18, align 4
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %127, %123
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %11, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* @ZEROPAD, align 4
  %135 = load i32, i32* @LEFT, align 4
  %136 = add nsw i32 %134, %135
  %137 = and i32 %133, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %144, %139
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %11, align 4
  %143 = icmp sgt i32 %141, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i8*, i8** %8, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %8, align 8
  store i8 32, i8* %145, align 1
  br label %140

147:                                              ; preds = %140
  br label %148

148:                                              ; preds = %147, %129
  %149 = load i8, i8* %15, align 1
  %150 = icmp ne i8 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i8, i8* %15, align 1
  %153 = load i8*, i8** %8, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %8, align 8
  store i8 %152, i8* %153, align 1
  br label %155

155:                                              ; preds = %151, %148
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* @SPECIAL, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %179

160:                                              ; preds = %155
  %161 = load i32, i32* %10, align 4
  %162 = icmp eq i32 %161, 8
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i8*, i8** %8, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %8, align 8
  store i8 48, i8* %164, align 1
  br label %178

166:                                              ; preds = %160
  %167 = load i32, i32* %10, align 4
  %168 = icmp eq i32 %167, 16
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load i8*, i8** %8, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %8, align 8
  store i8 48, i8* %170, align 1
  %172 = load i8*, i8** %17, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 33
  %174 = load i8, i8* %173, align 1
  %175 = load i8*, i8** %8, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %8, align 8
  store i8 %174, i8* %175, align 1
  br label %177

177:                                              ; preds = %169, %166
  br label %178

178:                                              ; preds = %177, %163
  br label %179

179:                                              ; preds = %178, %155
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* @LEFT, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %194, label %184

184:                                              ; preds = %179
  br label %185

185:                                              ; preds = %189, %184
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %11, align 4
  %188 = icmp sgt i32 %186, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load i8, i8* %14, align 1
  %191 = load i8*, i8** %8, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %8, align 8
  store i8 %190, i8* %191, align 1
  br label %185

193:                                              ; preds = %185
  br label %194

194:                                              ; preds = %193, %179
  br label %195

195:                                              ; preds = %200, %194
  %196 = load i32, i32* %18, align 4
  %197 = load i32, i32* %12, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %12, align 4
  %199 = icmp slt i32 %196, %197
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load i8*, i8** %8, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %8, align 8
  store i8 48, i8* %201, align 1
  br label %195

203:                                              ; preds = %195
  br label %204

204:                                              ; preds = %208, %203
  %205 = load i32, i32* %18, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %18, align 4
  %207 = icmp sgt i32 %205, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %204
  %209 = load i32, i32* %18, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [66 x i8], [66 x i8]* %16, i64 0, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = load i8*, i8** %8, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %8, align 8
  store i8 %212, i8* %213, align 1
  br label %204

215:                                              ; preds = %204
  br label %216

216:                                              ; preds = %220, %215
  %217 = load i32, i32* %11, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %11, align 4
  %219 = icmp sgt i32 %217, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = load i8*, i8** %8, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %8, align 8
  store i8 32, i8* %221, align 1
  br label %216

223:                                              ; preds = %216
  %224 = load i8*, i8** %8, align 8
  store i8* %224, i8** %7, align 8
  br label %225

225:                                              ; preds = %223, %40
  %226 = load i8*, i8** %7, align 8
  ret i8* %226
}

declare dso_local i64 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
