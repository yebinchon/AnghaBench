; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_urlapi.c_concat_url.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_urlapi.c_concat_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"//\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @concat_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @concat_url(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @strdup(i8* %18)
  store i8* %19, i8** %13, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %231

23:                                               ; preds = %2
  %24 = load i8*, i8** %13, align 8
  %25 = call i8* @strstr(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %13, align 8
  store i8* %29, i8** %7, align 8
  br label %33

30:                                               ; preds = %23
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  store i8* %32, i8** %7, align 8
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 47, %37
  br i1 %38, label %39, label %130

39:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 63)
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 63
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load i8*, i8** %7, align 8
  %54 = call i8* @strrchr(i8* %53, i8 signext 47)
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i8*, i8** %8, align 8
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %57, %52
  br label %60

60:                                               ; preds = %59, %46
  %61 = load i8*, i8** %7, align 8
  %62 = call i8* @strchr(i8* %61, i8 signext 47)
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %67, i8** %7, align 8
  br label %69

68:                                               ; preds = %60
  store i8* null, i8** %7, align 8
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i8*, i8** %11, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 46
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 47
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i8*, i8** %11, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  store i8* %83, i8** %11, align 8
  br label %84

84:                                               ; preds = %81, %75, %69
  br label %85

85:                                               ; preds = %105, %84
  %86 = load i8*, i8** %11, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 46
  br i1 %90, label %91, label %103

91:                                               ; preds = %85
  %92 = load i8*, i8** %11, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 46
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i8*, i8** %11, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 47
  br label %103

103:                                              ; preds = %97, %91, %85
  %104 = phi i1 [ false, %91 ], [ false, %85 ], [ %102, %97 ]
  br i1 %104, label %105, label %110

105:                                              ; preds = %103
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  %108 = load i8*, i8** %11, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 3
  store i8* %109, i8** %11, align 8
  br label %85

110:                                              ; preds = %103
  %111 = load i8*, i8** %7, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  br label %114

114:                                              ; preds = %127, %113
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %14, align 4
  %117 = icmp ne i32 %115, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %114
  %119 = load i8*, i8** %7, align 8
  %120 = call i8* @strrchr(i8* %119, i8 signext 47)
  store i8* %120, i8** %8, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i8*, i8** %8, align 8
  store i8 0, i8* %124, align 1
  br label %127

125:                                              ; preds = %118
  %126 = load i8*, i8** %7, align 8
  store i8 0, i8* %126, align 1
  br label %128

127:                                              ; preds = %123
  br label %114

128:                                              ; preds = %125, %114
  br label %129

129:                                              ; preds = %128, %110
  br label %169

130:                                              ; preds = %33
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 47
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load i8*, i8** %7, align 8
  store i8 0, i8* %137, align 1
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 2
  store i8* %139, i8** %11, align 8
  %140 = load i32, i32* @TRUE, align 4
  store i32 %140, i32* %10, align 4
  br label %168

141:                                              ; preds = %130
  %142 = load i8*, i8** %7, align 8
  %143 = call i8* @strchr(i8* %142, i8 signext 47)
  store i8* %143, i8** %8, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %159

146:                                              ; preds = %141
  %147 = load i8*, i8** %7, align 8
  %148 = call i8* @strchr(i8* %147, i8 signext 63)
  store i8* %148, i8** %15, align 8
  %149 = load i8*, i8** %15, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load i8*, i8** %15, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = icmp ult i8* %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i8*, i8** %15, align 8
  store i8* %156, i8** %8, align 8
  br label %157

157:                                              ; preds = %155, %151, %146
  %158 = load i8*, i8** %8, align 8
  store i8 0, i8* %158, align 1
  br label %167

159:                                              ; preds = %141
  %160 = load i8*, i8** %7, align 8
  %161 = call i8* @strchr(i8* %160, i8 signext 63)
  store i8* %161, i8** %8, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load i8*, i8** %8, align 8
  store i8 0, i8* %165, align 1
  br label %166

166:                                              ; preds = %164, %159
  br label %167

167:                                              ; preds = %166, %157
  br label %168

168:                                              ; preds = %167, %136
  br label %169

169:                                              ; preds = %168, %129
  %170 = load i8*, i8** %11, align 8
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = call i64 @strlen_url(i8* %170, i32 %174)
  store i64 %175, i64* %9, align 8
  %176 = load i8*, i8** %13, align 8
  %177 = call i64 @strlen(i8* %176)
  store i64 %177, i64* %12, align 8
  %178 = load i64, i64* %12, align 8
  %179 = add i64 %178, 1
  %180 = load i64, i64* %9, align 8
  %181 = add i64 %179, %180
  %182 = add i64 %181, 1
  %183 = call i8* @malloc(i64 %182)
  store i8* %183, i8** %6, align 8
  %184 = load i8*, i8** %6, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %169
  %187 = load i8*, i8** %13, align 8
  %188 = call i32 @free(i8* %187)
  store i8* null, i8** %3, align 8
  br label %231

189:                                              ; preds = %169
  %190 = load i8*, i8** %6, align 8
  %191 = load i8*, i8** %13, align 8
  %192 = load i64, i64* %12, align 8
  %193 = call i32 @memcpy(i8* %190, i8* %191, i64 %192)
  %194 = load i8*, i8** %11, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 0
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 47, %197
  br i1 %198, label %212, label %199

199:                                              ; preds = %189
  %200 = load i8*, i8** %7, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  %203 = load i8*, i8** %7, align 8
  %204 = load i8, i8* %203, align 1
  %205 = icmp ne i8 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %202, %199
  %207 = load i8*, i8** %11, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 0
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 63, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %206, %202, %189
  br label %218

213:                                              ; preds = %206
  %214 = load i8*, i8** %6, align 8
  %215 = load i64, i64* %12, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %12, align 8
  %217 = getelementptr inbounds i8, i8* %214, i64 %215
  store i8 47, i8* %217, align 1
  br label %218

218:                                              ; preds = %213, %212
  %219 = load i8*, i8** %6, align 8
  %220 = load i64, i64* %12, align 8
  %221 = getelementptr inbounds i8, i8* %219, i64 %220
  %222 = load i8*, i8** %11, align 8
  %223 = load i32, i32* %10, align 4
  %224 = icmp ne i32 %223, 0
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  %227 = call i32 @strcpy_url(i8* %221, i8* %222, i32 %226)
  %228 = load i8*, i8** %13, align 8
  %229 = call i32 @free(i8* %228)
  %230 = load i8*, i8** %6, align 8
  store i8* %230, i8** %3, align 8
  br label %231

231:                                              ; preds = %218, %186, %22
  %232 = load i8*, i8** %3, align 8
  ret i8* %232
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strlen_url(i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @strcpy_url(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
