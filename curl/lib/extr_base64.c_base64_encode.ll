; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_base64.c_base64_encode.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_base64.c_base64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }

@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%c%c==\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%c%c%c=\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%c%c%c%c\00", align 1
@CURLE_OK = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.Curl_easy*, i8*, i64, i8**, i64*)* @base64_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @base64_encode(i8* %0, %struct.Curl_easy* %1, i8* %2, i64 %3, i8** %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.Curl_easy*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [3 x i8], align 1
  %16 = alloca [4 x i8], align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.Curl_easy* %1, %struct.Curl_easy** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8** %4, i8*** %12, align 8
  store i64* %5, i64** %13, align 8
  store i8* null, i8** %21, align 8
  %23 = load i8*, i8** %10, align 8
  store i8* %23, i8** %22, align 8
  %24 = load i8**, i8*** %12, align 8
  store i8* null, i8** %24, align 8
  %25 = load i64*, i64** %13, align 8
  store i64 0, i64* %25, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = load i8*, i8** %22, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %11, align 8
  br label %31

31:                                               ; preds = %28, %6
  %32 = load i64, i64* %11, align 8
  %33 = mul i64 %32, 4
  %34 = udiv i64 %33, 3
  %35 = add i64 %34, 4
  %36 = call i8* @malloc(i64 %35)
  store i8* %36, i8** %19, align 8
  store i8* %36, i8** %20, align 8
  %37 = load i8*, i8** %19, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %31
  %40 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %40, i64* %7, align 8
  br label %208

41:                                               ; preds = %31
  %42 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %43 = load i8*, i8** %22, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i64 @Curl_convert_clone(%struct.Curl_easy* %42, i8* %43, i64 %44, i8** %21)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i8*, i8** %19, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i64, i64* %14, align 8
  store i64 %51, i64* %7, align 8
  br label %208

52:                                               ; preds = %41
  %53 = load i8*, i8** %21, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i8*, i8** %21, align 8
  store i8* %56, i8** %22, align 8
  br label %57

57:                                               ; preds = %55, %52
  br label %58

58:                                               ; preds = %195, %57
  %59 = load i64, i64* %11, align 8
  %60 = icmp ugt i64 %59, 0
  br i1 %60, label %61, label %198

61:                                               ; preds = %58
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %62

62:                                               ; preds = %85, %61
  %63 = load i32, i32* %17, align 4
  %64 = icmp slt i32 %63, 3
  br i1 %64, label %65, label %88

65:                                               ; preds = %62
  %66 = load i64, i64* %11, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load i32, i32* %18, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %18, align 4
  %71 = load i8*, i8** %22, align 8
  %72 = load i8, i8* %71, align 1
  %73 = load i32, i32* %17, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 %74
  store i8 %72, i8* %75, align 1
  %76 = load i8*, i8** %22, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %22, align 8
  %78 = load i64, i64* %11, align 8
  %79 = add i64 %78, -1
  store i64 %79, i64* %11, align 8
  br label %84

80:                                               ; preds = %65
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 %82
  store i8 0, i8* %83, align 1
  br label %84

84:                                               ; preds = %80, %68
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %17, align 4
  br label %62

88:                                               ; preds = %62
  %89 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %91, 252
  %93 = ashr i32 %92, 2
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 0
  store i8 %94, i8* %95, align 1
  %96 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 3
  %100 = shl i32 %99, 4
  %101 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %103, 240
  %105 = ashr i32 %104, 4
  %106 = or i32 %100, %105
  %107 = trunc i32 %106 to i8
  %108 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 1
  store i8 %107, i8* %108, align 1
  %109 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = and i32 %111, 15
  %113 = shl i32 %112, 2
  %114 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 2
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, 192
  %118 = ashr i32 %117, 6
  %119 = or i32 %113, %118
  %120 = trunc i32 %119 to i8
  %121 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 2
  store i8 %120, i8* %121, align 1
  %122 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 2
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, 63
  %126 = trunc i32 %125 to i8
  %127 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 3
  store i8 %126, i8* %127, align 1
  %128 = load i32, i32* %18, align 4
  switch i32 %128, label %166 [
    i32 1, label %129
    i32 2, label %144
  ]

129:                                              ; preds = %88
  %130 = load i8*, i8** %19, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds i8, i8* %131, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = load i8*, i8** %8, align 8
  %138 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 1
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = call i32 (i8*, i32, i8*, i8, i8, ...) @msnprintf(i8* %130, i32 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 signext %136, i8 signext %142)
  br label %195

144:                                              ; preds = %88
  %145 = load i8*, i8** %19, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 1
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i64
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = load i8*, i8** %8, align 8
  %159 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 2
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i64
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = call i32 (i8*, i32, i8*, i8, i8, ...) @msnprintf(i8* %145, i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8 signext %151, i8 signext %157, i32 %164)
  br label %195

166:                                              ; preds = %88
  %167 = load i8*, i8** %19, align 8
  %168 = load i8*, i8** %8, align 8
  %169 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 0
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i64
  %172 = getelementptr inbounds i8, i8* %168, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = load i8*, i8** %8, align 8
  %175 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 1
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i64
  %178 = getelementptr inbounds i8, i8* %174, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = load i8*, i8** %8, align 8
  %181 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 2
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i64
  %184 = getelementptr inbounds i8, i8* %180, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = load i8*, i8** %8, align 8
  %188 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 3
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i64
  %191 = getelementptr inbounds i8, i8* %187, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = call i32 (i8*, i32, i8*, i8, i8, ...) @msnprintf(i8* %167, i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8 signext %173, i8 signext %179, i32 %186, i32 %193)
  br label %195

195:                                              ; preds = %166, %144, %129
  %196 = load i8*, i8** %19, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 4
  store i8* %197, i8** %19, align 8
  br label %58

198:                                              ; preds = %58
  %199 = load i8*, i8** %19, align 8
  store i8 0, i8* %199, align 1
  %200 = load i8*, i8** %20, align 8
  %201 = load i8**, i8*** %12, align 8
  store i8* %200, i8** %201, align 8
  %202 = load i8*, i8** %21, align 8
  %203 = call i32 @free(i8* %202)
  %204 = load i8*, i8** %20, align 8
  %205 = call i64 @strlen(i8* %204)
  %206 = load i64*, i64** %13, align 8
  store i64 %205, i64* %206, align 8
  %207 = load i64, i64* @CURLE_OK, align 8
  store i64 %207, i64* %7, align 8
  br label %208

208:                                              ; preds = %198, %48, %39
  %209 = load i64, i64* %7, align 8
  ret i64 %209
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @Curl_convert_clone(%struct.Curl_easy*, i8*, i64, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @msnprintf(i8*, i32, i8*, i8 signext, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
