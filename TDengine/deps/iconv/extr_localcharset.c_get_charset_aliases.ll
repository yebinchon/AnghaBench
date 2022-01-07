; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_localcharset.c_get_charset_aliases.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_localcharset.c_get_charset_aliases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@charset_aliases = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@LIBDIR = common dso_local global i32 0, align 4
@DIRECTORY_SEPARATOR = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_charset_aliases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_charset_aliases() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [51 x i8], align 16
  %13 = alloca [51 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = load i8*, i8** @charset_aliases, align 8
  store i8* %17, i8** %1, align 8
  %18 = load i8*, i8** %1, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %229

20:                                               ; preds = %0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %21 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %21, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %20
  %31 = load i32, i32* @LIBDIR, align 4
  %32 = call i8* @relocate(i32 %31)
  store i8* %32, i8** %3, align 8
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @strlen(i8* %34)
  store i64 %35, i64* %6, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @strlen(i8* %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i8*, i8** %3, align 8
  %42 = load i64, i64* %6, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @ISSLASH(i8 signext %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %40, %33
  %50 = phi i1 [ false, %33 ], [ %48, %40 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load i64, i64* %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %52, %54
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %55, %56
  %58 = add i64 %57, 1
  %59 = call i64 @malloc(i64 %58)
  %60 = inttoptr i64 %59 to i8*
  store i8* %60, i8** %5, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %86

63:                                               ; preds = %49
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @memcpy(i8* %64, i8* %65, i64 %66)
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load i8, i8* @DIRECTORY_SEPARATOR, align 1
  %72 = load i8*, i8** %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 %71, i8* %74, align 1
  br label %75

75:                                               ; preds = %70, %63
  %76 = load i8*, i8** %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8*, i8** %4, align 8
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %83, 1
  %85 = call i32 @memcpy(i8* %81, i8* %82, i64 %84)
  br label %86

86:                                               ; preds = %75, %49
  %87 = load i8*, i8** %5, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load i8*, i8** %5, align 8
  %91 = call i32* @fopen(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %91, i32** %2, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %89, %86
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %221

94:                                               ; preds = %89
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  br label %95

95:                                               ; preds = %186, %134, %111, %94
  %96 = load i32*, i32** %2, align 8
  %97 = call i32 @getc(i32* %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @EOF, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %209

102:                                              ; preds = %95
  %103 = load i32, i32* %11, align 4
  %104 = icmp eq i32 %103, 10
  br i1 %104, label %111, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %106, 32
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %11, align 4
  %110 = icmp eq i32 %109, 9
  br i1 %110, label %111, label %112

111:                                              ; preds = %108, %105, %102
  br label %95

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, 35
  br i1 %114, label %115, label %135

115:                                              ; preds = %112
  br label %116

116:                                              ; preds = %126, %115
  %117 = load i32*, i32** %2, align 8
  %118 = call i32 @getc(i32* %117)
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @EOF, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %11, align 4
  %125 = icmp eq i32 %124, 10
  br label %126

126:                                              ; preds = %123, %119
  %127 = phi i1 [ true, %119 ], [ %125, %123 ]
  %128 = xor i1 %127, true
  br i1 %128, label %116, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @EOF, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %209

134:                                              ; preds = %129
  br label %95

135:                                              ; preds = %112
  %136 = load i32, i32* %11, align 4
  %137 = load i32*, i32** %2, align 8
  %138 = call i32 @ungetc(i32 %136, i32* %137)
  %139 = load i32*, i32** %2, align 8
  %140 = getelementptr inbounds [51 x i8], [51 x i8]* %12, i64 0, i64 0
  %141 = getelementptr inbounds [51 x i8], [51 x i8]* %13, i64 0, i64 0
  %142 = call i32 @fscanf(i32* %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %140, i8* %141)
  %143 = icmp slt i32 %142, 2
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %209

145:                                              ; preds = %135
  %146 = getelementptr inbounds [51 x i8], [51 x i8]* %12, i64 0, i64 0
  %147 = call i64 @strlen(i8* %146)
  store i64 %147, i64* %14, align 8
  %148 = getelementptr inbounds [51 x i8], [51 x i8]* %13, i64 0, i64 0
  %149 = call i64 @strlen(i8* %148)
  store i64 %149, i64* %15, align 8
  %150 = load i8*, i8** %9, align 8
  store i8* %150, i8** %16, align 8
  %151 = load i64, i64* %10, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %145
  %154 = load i64, i64* %14, align 8
  %155 = add i64 %154, 1
  %156 = load i64, i64* %15, align 8
  %157 = add i64 %155, %156
  %158 = add i64 %157, 1
  store i64 %158, i64* %10, align 8
  %159 = load i64, i64* %10, align 8
  %160 = add i64 %159, 1
  %161 = call i64 @malloc(i64 %160)
  %162 = inttoptr i64 %161 to i8*
  store i8* %162, i8** %9, align 8
  br label %176

163:                                              ; preds = %145
  %164 = load i64, i64* %14, align 8
  %165 = add i64 %164, 1
  %166 = load i64, i64* %15, align 8
  %167 = add i64 %165, %166
  %168 = add i64 %167, 1
  %169 = load i64, i64* %10, align 8
  %170 = add i64 %169, %168
  store i64 %170, i64* %10, align 8
  %171 = load i8*, i8** %9, align 8
  %172 = load i64, i64* %10, align 8
  %173 = add i64 %172, 1
  %174 = call i64 @realloc(i8* %171, i64 %173)
  %175 = inttoptr i64 %174 to i8*
  store i8* %175, i8** %9, align 8
  br label %176

176:                                              ; preds = %163, %153
  %177 = load i8*, i8** %9, align 8
  %178 = icmp eq i8* %177, null
  br i1 %178, label %179, label %186

179:                                              ; preds = %176
  store i64 0, i64* %10, align 8
  %180 = load i8*, i8** %16, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i8*, i8** %16, align 8
  %184 = call i32 @free(i8* %183)
  br label %185

185:                                              ; preds = %182, %179
  br label %209

186:                                              ; preds = %176
  %187 = load i8*, i8** %9, align 8
  %188 = load i64, i64* %10, align 8
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  %190 = load i64, i64* %15, align 8
  %191 = add i64 %190, 1
  %192 = sub i64 0, %191
  %193 = getelementptr inbounds i8, i8* %189, i64 %192
  %194 = load i64, i64* %14, align 8
  %195 = add i64 %194, 1
  %196 = sub i64 0, %195
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  %198 = getelementptr inbounds [51 x i8], [51 x i8]* %12, i64 0, i64 0
  %199 = call i32 @strcpy(i8* %197, i8* %198)
  %200 = load i8*, i8** %9, align 8
  %201 = load i64, i64* %10, align 8
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  %203 = load i64, i64* %15, align 8
  %204 = add i64 %203, 1
  %205 = sub i64 0, %204
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  %207 = getelementptr inbounds [51 x i8], [51 x i8]* %13, i64 0, i64 0
  %208 = call i32 @strcpy(i8* %206, i8* %207)
  br label %95

209:                                              ; preds = %185, %144, %133, %101
  %210 = load i32*, i32** %2, align 8
  %211 = call i32 @fclose(i32* %210)
  %212 = load i64, i64* %10, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %220

215:                                              ; preds = %209
  %216 = load i8*, i8** %9, align 8
  %217 = load i64, i64* %10, align 8
  %218 = getelementptr inbounds i8, i8* %216, i64 %217
  store i8 0, i8* %218, align 1
  %219 = load i8*, i8** %9, align 8
  store i8* %219, i8** %1, align 8
  br label %220

220:                                              ; preds = %215, %214
  br label %221

221:                                              ; preds = %220, %93
  %222 = load i8*, i8** %5, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i8*, i8** %5, align 8
  %226 = call i32 @free(i8* %225)
  br label %227

227:                                              ; preds = %224, %221
  %228 = load i8*, i8** %1, align 8
  store i8* %228, i8** @charset_aliases, align 8
  br label %229

229:                                              ; preds = %227, %0
  %230 = load i8*, i8** %1, align 8
  ret i8* %230
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @relocate(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ISSLASH(i8 signext) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i32 @fscanf(i32*, i8*, i8*, i8*) #1

declare dso_local i64 @realloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
