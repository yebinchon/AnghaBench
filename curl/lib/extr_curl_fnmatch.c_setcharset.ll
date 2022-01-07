; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_curl_fnmatch.c_setcharset.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_curl_fnmatch.c_setcharset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@CURLFNM_CHSET_SIZE = common dso_local global i32 0, align 4
@SETCHARSET_FAIL = common dso_local global i32 0, align 4
@SETCHARSET_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CURLFNM_NEGATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @setcharset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setcharset(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 130, i32* %6, align 4
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @CURLFNM_CHSET_SIZE, align 4
  %13 = call i32 @memset(i8* %11, i32 0, i32 %12)
  br label %14

14:                                               ; preds = %186, %2
  %15 = load i8**, i8*** %4, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %8, align 1
  %18 = load i8, i8* %8, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @SETCHARSET_FAIL, align 4
  store i32 %21, i32* %3, align 4
  br label %189

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %186 [
    i32 130, label %24
    i32 129, label %138
    i32 128, label %172
  ]

24:                                               ; preds = %22
  %25 = load i8, i8* %8, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 93
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @SETCHARSET_OK, align 4
  store i32 %32, i32* %3, align 4
  br label %189

33:                                               ; preds = %28
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %7, align 4
  store i32 129, i32* %6, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %8, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8 1, i8* %38, align 1
  %39 = load i8**, i8*** %4, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %39, align 8
  br label %137

42:                                               ; preds = %24
  %43 = load i8, i8* %8, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 91
  br i1 %45, label %46, label %72

46:                                               ; preds = %42
  %47 = load i8**, i8*** %4, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %9, align 8
  %52 = load i8, i8* %50, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 58
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @parsekeyword(i8** %9, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8*, i8** %9, align 8
  %61 = load i8**, i8*** %4, align 8
  store i8* %60, i8** %61, align 8
  br label %70

62:                                               ; preds = %55, %46
  %63 = load i8*, i8** %5, align 8
  %64 = load i8, i8* %8, align 1
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8 1, i8* %66, align 1
  %67 = load i8**, i8*** %4, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %67, align 8
  br label %70

70:                                               ; preds = %62, %59
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %7, align 4
  br label %136

72:                                               ; preds = %42
  %73 = load i8, i8* %8, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 94
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i8, i8* %8, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 33
  br i1 %79, label %80, label %109

80:                                               ; preds = %76, %72
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %100, label %83

83:                                               ; preds = %80
  %84 = load i8*, i8** %5, align 8
  %85 = load i64, i64* @CURLFNM_NEGATE, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load i8*, i8** %5, align 8
  %91 = load i8, i8* %8, align 1
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  store i8 1, i8* %93, align 1
  %94 = load i32, i32* @TRUE, align 4
  store i32 %94, i32* %7, align 4
  br label %99

95:                                               ; preds = %83
  %96 = load i8*, i8** %5, align 8
  %97 = load i64, i64* @CURLFNM_NEGATE, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8 1, i8* %98, align 1
  br label %99

99:                                               ; preds = %95, %89
  br label %105

100:                                              ; preds = %80
  %101 = load i8*, i8** %5, align 8
  %102 = load i8, i8* %8, align 1
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  store i8 1, i8* %104, align 1
  br label %105

105:                                              ; preds = %100, %99
  %106 = load i8**, i8*** %4, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %106, align 8
  br label %135

109:                                              ; preds = %76
  %110 = load i8, i8* %8, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 92
  br i1 %112, label %113, label %129

113:                                              ; preds = %109
  %114 = load i8**, i8*** %4, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %114, align 8
  %117 = load i8, i8* %116, align 1
  store i8 %117, i8* %8, align 1
  %118 = load i8, i8* %8, align 1
  %119 = icmp ne i8 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load i8**, i8*** %4, align 8
  %122 = load i8*, i8** %5, align 8
  %123 = call i32 @setcharorrange(i8** %121, i8* %122)
  br label %127

124:                                              ; preds = %113
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 92
  store i8 1, i8* %126, align 1
  br label %127

127:                                              ; preds = %124, %120
  %128 = load i32, i32* @TRUE, align 4
  store i32 %128, i32* %7, align 4
  br label %134

129:                                              ; preds = %109
  %130 = load i8**, i8*** %4, align 8
  %131 = load i8*, i8** %5, align 8
  %132 = call i32 @setcharorrange(i8** %130, i8* %131)
  %133 = load i32, i32* @TRUE, align 4
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %129, %127
  br label %135

135:                                              ; preds = %134, %105
  br label %136

136:                                              ; preds = %135, %70
  br label %137

137:                                              ; preds = %136, %33
  br label %186

138:                                              ; preds = %22
  %139 = load i8, i8* %8, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp eq i32 %140, 91
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  store i32 128, i32* %6, align 4
  %143 = load i8*, i8** %5, align 8
  %144 = load i8, i8* %8, align 1
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  store i8 1, i8* %146, align 1
  %147 = load i8**, i8*** %4, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %147, align 8
  br label %171

150:                                              ; preds = %138
  %151 = load i8, i8* %8, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 93
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load i32, i32* @SETCHARSET_OK, align 4
  store i32 %155, i32* %3, align 4
  br label %189

156:                                              ; preds = %150
  %157 = load i8, i8* %8, align 1
  %158 = call i32 @ISPRINT(i8 zeroext %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %156
  %161 = load i8*, i8** %5, align 8
  %162 = load i8, i8* %8, align 1
  %163 = zext i8 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  store i8 1, i8* %164, align 1
  %165 = load i8**, i8*** %4, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %165, align 8
  store i32 130, i32* %6, align 4
  br label %169

168:                                              ; preds = %156
  br label %187

169:                                              ; preds = %160
  br label %170

170:                                              ; preds = %169
  br label %171

171:                                              ; preds = %170, %142
  br label %186

172:                                              ; preds = %22
  %173 = load i8, i8* %8, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp eq i32 %174, 93
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = load i32, i32* @SETCHARSET_OK, align 4
  store i32 %177, i32* %3, align 4
  br label %189

178:                                              ; preds = %172
  store i32 130, i32* %6, align 4
  %179 = load i8*, i8** %5, align 8
  %180 = load i8, i8* %8, align 1
  %181 = zext i8 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  store i8 1, i8* %182, align 1
  %183 = load i8**, i8*** %4, align 8
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %185, i8** %183, align 8
  br label %186

186:                                              ; preds = %22, %178, %171, %137
  br label %14

187:                                              ; preds = %168
  %188 = load i32, i32* @SETCHARSET_FAIL, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %187, %176, %154, %31, %20
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @parsekeyword(i8**, i8*) #1

declare dso_local i32 @setcharorrange(i8**, i8*) #1

declare dso_local i32 @ISPRINT(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
