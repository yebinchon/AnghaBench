; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1560.c_checkparts.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1560.c_checkparts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.part = type { i8*, i32, i64, i32 }

@CURLUPART_SCHEME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"scheme\00", align 1
@CURLUPART_USER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@CURLUPART_PASSWORD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@CURLUPART_OPTIONS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@CURLUPART_HOST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@CURLUPART_PORT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@CURLUPART_PATH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@CURLUPART_QUERY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@CURLUPART_FRAGMENT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"fragment\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"in: %s\0Awanted: %s\0Agot:    %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32)* @checkparts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkparts(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [256 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [10 x %struct.part], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  store i8* %18, i8** %13, align 8
  store i64 256, i64* %14, align 8
  %19 = getelementptr inbounds [10 x %struct.part], [10 x %struct.part]* %15, i64 0, i64 0
  %20 = getelementptr inbounds %struct.part, %struct.part* %19, i32 0, i32 0
  %21 = load i32, i32* @CURLUPART_SCHEME, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %20, align 16
  %24 = getelementptr inbounds %struct.part, %struct.part* %19, i32 0, i32 1
  store i32 ptrtoint ([7 x i8]* @.str to i32), i32* %24, align 8
  %25 = getelementptr inbounds %struct.part, %struct.part* %19, i32 0, i32 2
  store i64 0, i64* %25, align 16
  %26 = getelementptr inbounds %struct.part, %struct.part* %19, i32 0, i32 3
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.part, %struct.part* %19, i64 1
  %28 = getelementptr inbounds %struct.part, %struct.part* %27, i32 0, i32 0
  %29 = load i32, i32* @CURLUPART_USER, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %28, align 16
  %32 = getelementptr inbounds %struct.part, %struct.part* %27, i32 0, i32 1
  store i32 ptrtoint ([5 x i8]* @.str.1 to i32), i32* %32, align 8
  %33 = getelementptr inbounds %struct.part, %struct.part* %27, i32 0, i32 2
  store i64 0, i64* %33, align 16
  %34 = getelementptr inbounds %struct.part, %struct.part* %27, i32 0, i32 3
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.part, %struct.part* %27, i64 1
  %36 = getelementptr inbounds %struct.part, %struct.part* %35, i32 0, i32 0
  %37 = load i32, i32* @CURLUPART_PASSWORD, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %36, align 16
  %40 = getelementptr inbounds %struct.part, %struct.part* %35, i32 0, i32 1
  store i32 ptrtoint ([9 x i8]* @.str.2 to i32), i32* %40, align 8
  %41 = getelementptr inbounds %struct.part, %struct.part* %35, i32 0, i32 2
  store i64 0, i64* %41, align 16
  %42 = getelementptr inbounds %struct.part, %struct.part* %35, i32 0, i32 3
  store i32 0, i32* %42, align 8
  %43 = getelementptr inbounds %struct.part, %struct.part* %35, i64 1
  %44 = getelementptr inbounds %struct.part, %struct.part* %43, i32 0, i32 0
  %45 = load i32, i32* @CURLUPART_OPTIONS, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %44, align 16
  %48 = getelementptr inbounds %struct.part, %struct.part* %43, i32 0, i32 1
  store i32 ptrtoint ([8 x i8]* @.str.3 to i32), i32* %48, align 8
  %49 = getelementptr inbounds %struct.part, %struct.part* %43, i32 0, i32 2
  store i64 0, i64* %49, align 16
  %50 = getelementptr inbounds %struct.part, %struct.part* %43, i32 0, i32 3
  store i32 0, i32* %50, align 8
  %51 = getelementptr inbounds %struct.part, %struct.part* %43, i64 1
  %52 = getelementptr inbounds %struct.part, %struct.part* %51, i32 0, i32 0
  %53 = load i32, i32* @CURLUPART_HOST, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %52, align 16
  %56 = getelementptr inbounds %struct.part, %struct.part* %51, i32 0, i32 1
  store i32 ptrtoint ([5 x i8]* @.str.4 to i32), i32* %56, align 8
  %57 = getelementptr inbounds %struct.part, %struct.part* %51, i32 0, i32 2
  store i64 0, i64* %57, align 16
  %58 = getelementptr inbounds %struct.part, %struct.part* %51, i32 0, i32 3
  store i32 0, i32* %58, align 8
  %59 = getelementptr inbounds %struct.part, %struct.part* %51, i64 1
  %60 = getelementptr inbounds %struct.part, %struct.part* %59, i32 0, i32 0
  %61 = load i32, i32* @CURLUPART_PORT, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %60, align 16
  %64 = getelementptr inbounds %struct.part, %struct.part* %59, i32 0, i32 1
  store i32 ptrtoint ([5 x i8]* @.str.5 to i32), i32* %64, align 8
  %65 = getelementptr inbounds %struct.part, %struct.part* %59, i32 0, i32 2
  store i64 0, i64* %65, align 16
  %66 = getelementptr inbounds %struct.part, %struct.part* %59, i32 0, i32 3
  store i32 0, i32* %66, align 8
  %67 = getelementptr inbounds %struct.part, %struct.part* %59, i64 1
  %68 = getelementptr inbounds %struct.part, %struct.part* %67, i32 0, i32 0
  %69 = load i32, i32* @CURLUPART_PATH, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %68, align 16
  %72 = getelementptr inbounds %struct.part, %struct.part* %67, i32 0, i32 1
  store i32 ptrtoint ([5 x i8]* @.str.6 to i32), i32* %72, align 8
  %73 = getelementptr inbounds %struct.part, %struct.part* %67, i32 0, i32 2
  store i64 0, i64* %73, align 16
  %74 = getelementptr inbounds %struct.part, %struct.part* %67, i32 0, i32 3
  store i32 0, i32* %74, align 8
  %75 = getelementptr inbounds %struct.part, %struct.part* %67, i64 1
  %76 = getelementptr inbounds %struct.part, %struct.part* %75, i32 0, i32 0
  %77 = load i32, i32* @CURLUPART_QUERY, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  store i8* %79, i8** %76, align 16
  %80 = getelementptr inbounds %struct.part, %struct.part* %75, i32 0, i32 1
  store i32 ptrtoint ([6 x i8]* @.str.7 to i32), i32* %80, align 8
  %81 = getelementptr inbounds %struct.part, %struct.part* %75, i32 0, i32 2
  store i64 0, i64* %81, align 16
  %82 = getelementptr inbounds %struct.part, %struct.part* %75, i32 0, i32 3
  store i32 0, i32* %82, align 8
  %83 = getelementptr inbounds %struct.part, %struct.part* %75, i64 1
  %84 = getelementptr inbounds %struct.part, %struct.part* %83, i32 0, i32 0
  %85 = load i32, i32* @CURLUPART_FRAGMENT, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  store i8* %87, i8** %84, align 16
  %88 = getelementptr inbounds %struct.part, %struct.part* %83, i32 0, i32 1
  store i32 ptrtoint ([9 x i8]* @.str.8 to i32), i32* %88, align 8
  %89 = getelementptr inbounds %struct.part, %struct.part* %83, i32 0, i32 2
  store i64 0, i64* %89, align 16
  %90 = getelementptr inbounds %struct.part, %struct.part* %83, i32 0, i32 3
  store i32 0, i32* %90, align 8
  %91 = getelementptr inbounds %struct.part, %struct.part* %83, i64 1
  %92 = bitcast %struct.part* %91 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %92, i8 0, i64 32, i1 false)
  %93 = getelementptr inbounds %struct.part, %struct.part* %91, i32 0, i32 1
  store i32 0, i32* %93, align 8
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %94, align 16
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %150, %4
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [10 x %struct.part], [10 x %struct.part]* %15, i64 0, i64 %97
  %99 = getelementptr inbounds %struct.part, %struct.part* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 16
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %153

102:                                              ; preds = %95
  store i8* null, i8** %16, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [10 x %struct.part], [10 x %struct.part]* %15, i64 0, i64 %105
  %107 = getelementptr inbounds %struct.part, %struct.part* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i64 @curl_url_get(i32* %103, i32 %108, i8** %16, i32 %109)
  store i64 %110, i64* %11, align 8
  %111 = load i64, i64* %11, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %102
  %114 = load i8*, i8** %16, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load i8*, i8** %13, align 8
  %118 = load i64, i64* %14, align 8
  %119 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %120 = load i8, i8* %119, align 16
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %125 = load i8*, i8** %16, align 8
  %126 = call i32 (i8*, i64, i8*, i8*, ...) @msnprintf(i8* %117, i64 %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %124, i8* %125)
  br label %139

127:                                              ; preds = %113, %102
  %128 = load i8*, i8** %13, align 8
  %129 = load i64, i64* %14, align 8
  %130 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %131 = load i8, i8* %130, align 16
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %136 = load i64, i64* %11, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 (i8*, i64, i8*, i8*, ...) @msnprintf(i8* %128, i64 %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %135, i32 %137)
  br label %139

139:                                              ; preds = %127, %116
  %140 = load i8*, i8** %13, align 8
  %141 = call i64 @strlen(i8* %140)
  store i64 %141, i64* %17, align 8
  %142 = load i64, i64* %17, align 8
  %143 = load i8*, i8** %13, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 %142
  store i8* %144, i8** %13, align 8
  %145 = load i64, i64* %17, align 8
  %146 = load i64, i64* %14, align 8
  %147 = sub i64 %146, %145
  store i64 %147, i64* %14, align 8
  %148 = load i8*, i8** %16, align 8
  %149 = call i32 @curl_free(i8* %148)
  br label %150

150:                                              ; preds = %139
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %95

153:                                              ; preds = %95
  %154 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %155 = load i8*, i8** %8, align 8
  %156 = call i64 @strcmp(i8* %154, i8* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load i32, i32* @stderr, align 4
  %160 = load i8*, i8** %7, align 8
  %161 = load i8*, i8** %8, align 8
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %163 = call i32 @fprintf(i32 %159, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* %160, i8* %161, i8* %162)
  store i32 1, i32* %5, align 4
  br label %165

164:                                              ; preds = %153
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %164, %158
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @curl_url_get(i32*, i32, i8**, i32) #2

declare dso_local i32 @msnprintf(i8*, i64, i8*, i8*, ...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @curl_free(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
