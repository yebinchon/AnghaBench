; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_localcharset.c_get_charset_aliases.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_localcharset.c_get_charset_aliases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@charset_aliases = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@LIBDIR = common dso_local global i32 0, align 4
@DIRECTORY_SEPARATOR = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@O_RDONLY = common dso_local global i32 0, align 4
@HAVE_WORKING_O_NOFOLLOW = common dso_local global i64 0, align 8
@O_NOFOLLOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_charset_aliases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_charset_aliases() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [51 x i8], align 16
  %14 = alloca [51 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = load i8*, i8** @charset_aliases, align 8
  store i8* %18, i8** %1, align 8
  %19 = load i8*, i8** %1, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %247

21:                                               ; preds = %0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %22 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %22, i8** %2, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %21
  %32 = load i32, i32* @LIBDIR, align 4
  %33 = call i8* @relocate(i32 %32)
  store i8* %33, i8** %2, align 8
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i8*, i8** %2, align 8
  %36 = call i64 @strlen(i8* %35)
  store i64 %36, i64* %5, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @strlen(i8* %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load i8*, i8** %2, align 8
  %43 = load i64, i64* %5, align 8
  %44 = sub i64 %43, 1
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @ISSLASH(i8 signext %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %41, %34
  %51 = phi i1 [ false, %34 ], [ %49, %41 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load i64, i64* %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %53, %55
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %56, %57
  %59 = add i64 %58, 1
  %60 = call i64 @malloc(i64 %59)
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %4, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %87

64:                                               ; preds = %50
  %65 = load i8*, i8** %4, align 8
  %66 = load i8*, i8** %2, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @memcpy(i8* %65, i8* %66, i64 %67)
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load i8, i8* @DIRECTORY_SEPARATOR, align 1
  %73 = load i8*, i8** %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8 %72, i8* %75, align 1
  br label %76

76:                                               ; preds = %71, %64
  %77 = load i8*, i8** %4, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8*, i8** %3, align 8
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %84, 1
  %86 = call i32 @memcpy(i8* %82, i8* %83, i64 %85)
  br label %87

87:                                               ; preds = %76, %50
  %88 = load i8*, i8** %4, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %245

91:                                               ; preds = %87
  %92 = load i8*, i8** %4, align 8
  %93 = load i32, i32* @O_RDONLY, align 4
  %94 = load i64, i64* @HAVE_WORKING_O_NOFOLLOW, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @O_NOFOLLOW, align 4
  br label %99

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 0, %98 ]
  %101 = or i32 %93, %100
  %102 = call i32 @open(i8* %92, i32 %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %242

106:                                              ; preds = %99
  %107 = load i32, i32* %8, align 4
  %108 = call i32* @fdopen(i32 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %108, i32** %9, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @close(i32 %112)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %241

114:                                              ; preds = %106
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  br label %115

115:                                              ; preds = %206, %154, %131, %114
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @getc(i32* %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @EOF, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %229

122:                                              ; preds = %115
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %123, 10
  br i1 %124, label %131, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %12, align 4
  %127 = icmp eq i32 %126, 32
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %12, align 4
  %130 = icmp eq i32 %129, 9
  br i1 %130, label %131, label %132

131:                                              ; preds = %128, %125, %122
  br label %115

132:                                              ; preds = %128
  %133 = load i32, i32* %12, align 4
  %134 = icmp eq i32 %133, 35
  br i1 %134, label %135, label %155

135:                                              ; preds = %132
  br label %136

136:                                              ; preds = %146, %135
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 @getc(i32* %137)
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @EOF, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* %12, align 4
  %145 = icmp eq i32 %144, 10
  br label %146

146:                                              ; preds = %143, %139
  %147 = phi i1 [ true, %139 ], [ %145, %143 ]
  %148 = xor i1 %147, true
  br i1 %148, label %136, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @EOF, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %229

154:                                              ; preds = %149
  br label %115

155:                                              ; preds = %132
  %156 = load i32, i32* %12, align 4
  %157 = load i32*, i32** %9, align 8
  %158 = call i32 @ungetc(i32 %156, i32* %157)
  %159 = load i32*, i32** %9, align 8
  %160 = getelementptr inbounds [51 x i8], [51 x i8]* %13, i64 0, i64 0
  %161 = getelementptr inbounds [51 x i8], [51 x i8]* %14, i64 0, i64 0
  %162 = call i32 @fscanf(i32* %159, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %160, i8* %161)
  %163 = icmp slt i32 %162, 2
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  br label %229

165:                                              ; preds = %155
  %166 = getelementptr inbounds [51 x i8], [51 x i8]* %13, i64 0, i64 0
  %167 = call i64 @strlen(i8* %166)
  store i64 %167, i64* %15, align 8
  %168 = getelementptr inbounds [51 x i8], [51 x i8]* %14, i64 0, i64 0
  %169 = call i64 @strlen(i8* %168)
  store i64 %169, i64* %16, align 8
  %170 = load i8*, i8** %10, align 8
  store i8* %170, i8** %17, align 8
  %171 = load i64, i64* %11, align 8
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %165
  %174 = load i64, i64* %15, align 8
  %175 = add i64 %174, 1
  %176 = load i64, i64* %16, align 8
  %177 = add i64 %175, %176
  %178 = add i64 %177, 1
  store i64 %178, i64* %11, align 8
  %179 = load i64, i64* %11, align 8
  %180 = add i64 %179, 1
  %181 = call i64 @malloc(i64 %180)
  %182 = inttoptr i64 %181 to i8*
  store i8* %182, i8** %10, align 8
  br label %196

183:                                              ; preds = %165
  %184 = load i64, i64* %15, align 8
  %185 = add i64 %184, 1
  %186 = load i64, i64* %16, align 8
  %187 = add i64 %185, %186
  %188 = add i64 %187, 1
  %189 = load i64, i64* %11, align 8
  %190 = add i64 %189, %188
  store i64 %190, i64* %11, align 8
  %191 = load i8*, i8** %10, align 8
  %192 = load i64, i64* %11, align 8
  %193 = add i64 %192, 1
  %194 = call i64 @realloc(i8* %191, i64 %193)
  %195 = inttoptr i64 %194 to i8*
  store i8* %195, i8** %10, align 8
  br label %196

196:                                              ; preds = %183, %173
  %197 = load i8*, i8** %10, align 8
  %198 = icmp eq i8* %197, null
  br i1 %198, label %199, label %206

199:                                              ; preds = %196
  store i64 0, i64* %11, align 8
  %200 = load i8*, i8** %17, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i8*, i8** %17, align 8
  %204 = call i32 @free(i8* %203)
  br label %205

205:                                              ; preds = %202, %199
  br label %229

206:                                              ; preds = %196
  %207 = load i8*, i8** %10, align 8
  %208 = load i64, i64* %11, align 8
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  %210 = load i64, i64* %16, align 8
  %211 = add i64 %210, 1
  %212 = sub i64 0, %211
  %213 = getelementptr inbounds i8, i8* %209, i64 %212
  %214 = load i64, i64* %15, align 8
  %215 = add i64 %214, 1
  %216 = sub i64 0, %215
  %217 = getelementptr inbounds i8, i8* %213, i64 %216
  %218 = getelementptr inbounds [51 x i8], [51 x i8]* %13, i64 0, i64 0
  %219 = call i32 @strcpy(i8* %217, i8* %218)
  %220 = load i8*, i8** %10, align 8
  %221 = load i64, i64* %11, align 8
  %222 = getelementptr inbounds i8, i8* %220, i64 %221
  %223 = load i64, i64* %16, align 8
  %224 = add i64 %223, 1
  %225 = sub i64 0, %224
  %226 = getelementptr inbounds i8, i8* %222, i64 %225
  %227 = getelementptr inbounds [51 x i8], [51 x i8]* %14, i64 0, i64 0
  %228 = call i32 @strcpy(i8* %226, i8* %227)
  br label %115

229:                                              ; preds = %205, %164, %153, %121
  %230 = load i32*, i32** %9, align 8
  %231 = call i32 @fclose(i32* %230)
  %232 = load i64, i64* %11, align 8
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %240

235:                                              ; preds = %229
  %236 = load i8*, i8** %10, align 8
  %237 = load i64, i64* %11, align 8
  %238 = getelementptr inbounds i8, i8* %236, i64 %237
  store i8 0, i8* %238, align 1
  %239 = load i8*, i8** %10, align 8
  store i8* %239, i8** %1, align 8
  br label %240

240:                                              ; preds = %235, %234
  br label %241

241:                                              ; preds = %240, %111
  br label %242

242:                                              ; preds = %241, %105
  %243 = load i8*, i8** %4, align 8
  %244 = call i32 @free(i8* %243)
  br label %245

245:                                              ; preds = %242, %90
  %246 = load i8*, i8** %1, align 8
  store i8* %246, i8** @charset_aliases, align 8
  br label %247

247:                                              ; preds = %245, %0
  %248 = load i8*, i8** %1, align 8
  ret i8* %248
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @relocate(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ISSLASH(i8 signext) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @close(i32) #1

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
