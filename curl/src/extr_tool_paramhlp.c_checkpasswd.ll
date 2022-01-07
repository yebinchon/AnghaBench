; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_paramhlp.c_checkpasswd.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_paramhlp.c_checkpasswd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Enter %s password for user '%s':\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Enter %s password for user '%s' on URL #%zu:\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i8**)* @checkpasswd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkpasswd(i8* %0, i64 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [256 x i8], align 16
  %13 = alloca [256 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %17 = load i8**, i8*** %9, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @CURLE_OK, align 4
  store i32 %21, i32* %5, align 4
  br label %105

22:                                               ; preds = %4
  %23 = load i8**, i8*** %9, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 58)
  store i8* %25, i8** %10, align 8
  %26 = load i8**, i8*** %9, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 59)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %103, label %31

31:                                               ; preds = %22
  %32 = load i8**, i8*** %9, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 59
  br i1 %36, label %37, label %103

37:                                               ; preds = %31
  %38 = bitcast [256 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %38, i8 0, i64 256, i1 false)
  %39 = load i8**, i8*** %9, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strlen(i8* %40)
  store i64 %41, i64* %15, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i8*, i8** %11, align 8
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %44, %37
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %54 = load i8*, i8** %6, align 8
  %55 = load i8**, i8*** %9, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @curlx_msnprintf(i8* %53, i32 256, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %54, i8* %56)
  br label %66

58:                                               ; preds = %49, %46
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %60 = load i8*, i8** %6, align 8
  %61 = load i8**, i8*** %9, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, 1
  %65 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @curlx_msnprintf(i8* %59, i32 256, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %60, i8* %62, i64 %64)
  br label %66

66:                                               ; preds = %58, %52
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %69 = call i32 @getpass_r(i8* %67, i8* %68, i32 256)
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %71 = call i64 @strlen(i8* %70)
  store i64 %71, i64* %14, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i8*, i8** %11, align 8
  store i8 59, i8* %75, align 1
  br label %76

76:                                               ; preds = %74, %66
  %77 = load i8**, i8*** %9, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i64, i64* %14, align 8
  %80 = add i64 %79, 1
  %81 = load i64, i64* %15, align 8
  %82 = add i64 %80, %81
  %83 = add i64 %82, 1
  %84 = call i8* @realloc(i8* %78, i64 %83)
  store i8* %84, i8** %16, align 8
  %85 = load i8*, i8** %16, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %76
  %88 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %88, i32* %5, align 4
  br label %105

89:                                               ; preds = %76
  %90 = load i8*, i8** %16, align 8
  %91 = load i64, i64* %15, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 58, i8* %92, align 1
  %93 = load i8*, i8** %16, align 8
  %94 = load i64, i64* %15, align 8
  %95 = add i64 %94, 1
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %98 = load i64, i64* %14, align 8
  %99 = add i64 %98, 1
  %100 = call i32 @memcpy(i8* %96, i8* %97, i64 %99)
  %101 = load i8*, i8** %16, align 8
  %102 = load i8**, i8*** %9, align 8
  store i8* %101, i8** %102, align 8
  br label %103

103:                                              ; preds = %89, %31, %22
  %104 = load i32, i32* @CURLE_OK, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %103, %87, %20
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @curlx_msnprintf(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @getpass_r(i8*, i8*, i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
