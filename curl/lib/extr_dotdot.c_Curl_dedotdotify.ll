; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_dotdot.c_Curl_dedotdotify.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_dotdot.c_Curl_dedotdotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"/./\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"/../\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"/..\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Curl_dedotdotify(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %4, align 8
  %17 = add i64 %16, 1
  %18 = call i8* @malloc(i64 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %206

22:                                               ; preds = %1
  %23 = load i8*, i8** %7, align 8
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %3, align 8
  %25 = call i8* @strdup(i8* %24)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @free(i8* %29)
  store i8* null, i8** %2, align 8
  br label %206

31:                                               ; preds = %22
  %32 = load i8*, i8** %5, align 8
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %7, align 8
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i8*, i8** %5, align 8
  store i8* %40, i8** %2, align 8
  br label %206

41:                                               ; preds = %31
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* @strchr(i8* %42, i8 signext 63)
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i8*, i8** %10, align 8
  store i8 0, i8* %47, align 1
  br label %48

48:                                               ; preds = %46, %41
  br label %49

49:                                               ; preds = %178, %48
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @strncmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %50, i32 2)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  store i8* %55, i8** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = sub i64 %56, 2
  store i64 %57, i64* %6, align 8
  br label %177

58:                                               ; preds = %49
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %59, i32 3)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  store i8* %64, i8** %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = sub i64 %65, 3
  store i64 %66, i64* %6, align 8
  br label %176

67:                                               ; preds = %58
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %68, i32 3)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  store i8* %73, i8** %5, align 8
  %74 = load i64, i64* %6, align 8
  %75 = sub i64 %74, 2
  store i64 %75, i64* %6, align 8
  br label %175

76:                                               ; preds = %67
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  store i8 47, i8* %82, align 1
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = sub i64 %85, 1
  store i64 %86, i64* %6, align 8
  br label %174

87:                                               ; preds = %76
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %88, i32 4)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %111, label %91

91:                                               ; preds = %87
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 3
  store i8* %93, i8** %5, align 8
  %94 = load i64, i64* %6, align 8
  %95 = sub i64 %94, 3
  store i64 %95, i64* %6, align 8
  br label %96

96:                                               ; preds = %108, %91
  %97 = load i8*, i8** %8, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = icmp ugt i8* %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 -1
  store i8* %102, i8** %8, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 47
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %109

108:                                              ; preds = %100
  br label %96

109:                                              ; preds = %107, %96
  %110 = load i8*, i8** %8, align 8
  store i8 0, i8* %110, align 1
  br label %173

111:                                              ; preds = %87
  %112 = load i8*, i8** %5, align 8
  %113 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %137, label %115

115:                                              ; preds = %111
  %116 = load i8*, i8** %5, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  store i8 47, i8* %117, align 1
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  store i8* %119, i8** %5, align 8
  %120 = load i64, i64* %6, align 8
  %121 = sub i64 %120, 2
  store i64 %121, i64* %6, align 8
  br label %122

122:                                              ; preds = %134, %115
  %123 = load i8*, i8** %8, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = icmp ugt i8* %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load i8*, i8** %8, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 -1
  store i8* %128, i8** %8, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 47
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %135

134:                                              ; preds = %126
  br label %122

135:                                              ; preds = %133, %122
  %136 = load i8*, i8** %8, align 8
  store i8 0, i8* %136, align 1
  br label %172

137:                                              ; preds = %111
  %138 = load i8*, i8** %5, align 8
  %139 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i8*, i8** %5, align 8
  %143 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %141, %137
  %146 = load i8*, i8** %5, align 8
  store i8 0, i8* %146, align 1
  %147 = load i8*, i8** %7, align 8
  store i8 0, i8* %147, align 1
  br label %171

148:                                              ; preds = %141
  br label %149

149:                                              ; preds = %167, %148
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %5, align 8
  %152 = load i8, i8* %150, align 1
  %153 = load i8*, i8** %8, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %8, align 8
  store i8 %152, i8* %153, align 1
  %155 = load i64, i64* %6, align 8
  %156 = add i64 %155, -1
  store i64 %156, i64* %6, align 8
  br label %157

157:                                              ; preds = %149
  %158 = load i8*, i8** %5, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load i8*, i8** %5, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 47
  br label %167

167:                                              ; preds = %162, %157
  %168 = phi i1 [ false, %157 ], [ %166, %162 ]
  br i1 %168, label %149, label %169

169:                                              ; preds = %167
  %170 = load i8*, i8** %8, align 8
  store i8 0, i8* %170, align 1
  br label %171

171:                                              ; preds = %169, %145
  br label %172

172:                                              ; preds = %171, %135
  br label %173

173:                                              ; preds = %172, %109
  br label %174

174:                                              ; preds = %173, %80
  br label %175

175:                                              ; preds = %174, %71
  br label %176

176:                                              ; preds = %175, %62
  br label %177

177:                                              ; preds = %176, %53
  br label %178

178:                                              ; preds = %177
  %179 = load i8*, i8** %5, align 8
  %180 = load i8, i8* %179, align 1
  %181 = icmp ne i8 %180, 0
  br i1 %181, label %49, label %182

182:                                              ; preds = %178
  %183 = load i8*, i8** %10, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %202

185:                                              ; preds = %182
  %186 = load i8*, i8** %10, align 8
  %187 = load i8*, i8** %9, align 8
  %188 = ptrtoint i8* %186 to i64
  %189 = ptrtoint i8* %187 to i64
  %190 = sub i64 %188, %189
  store i64 %190, i64* %12, align 8
  %191 = load i8*, i8** %3, align 8
  %192 = load i64, i64* %12, align 8
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  %194 = call i64 @strlen(i8* %193)
  store i64 %194, i64* %11, align 8
  %195 = load i8*, i8** %8, align 8
  %196 = load i8*, i8** %3, align 8
  %197 = load i64, i64* %12, align 8
  %198 = getelementptr inbounds i8, i8* %196, i64 %197
  %199 = load i64, i64* %11, align 8
  %200 = add i64 %199, 1
  %201 = call i32 @memcpy(i8* %195, i8* %198, i64 %200)
  br label %202

202:                                              ; preds = %185, %182
  %203 = load i8*, i8** %9, align 8
  %204 = call i32 @free(i8* %203)
  %205 = load i8*, i8** %7, align 8
  store i8* %205, i8** %2, align 8
  br label %206

206:                                              ; preds = %202, %37, %28, %21
  %207 = load i8*, i8** %2, align 8
  ret i8* %207
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
