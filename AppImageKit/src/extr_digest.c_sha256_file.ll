; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_digest.c_sha256_file.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_digest.c_sha256_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SHA256_DIGEST_LENGTH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sha256_file(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32* @fopen(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %147

27:                                               ; preds = %4
  %28 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %11, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %12, align 8
  %32 = call i32 @SHA256_Init(i32* %13)
  store i32 1048576, i32* %14, align 4
  %33 = call i32* @malloc(i32 1048576)
  store i32* %33, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %34 = load i32*, i32** %15, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @fclose(i32* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %145

40:                                               ; preds = %27
  store i32 0, i32* %18, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp sle i32 %41, 1048576
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load i32*, i32** %15, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @fread(i32* %44, i32 1, i32 %45, i32* %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %18, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %18, align 4
  %51 = load i32*, i32** %15, align 8
  %52 = load i32, i32* %16, align 4
  %53 = call i32 (i32*, ...) @SHA256_Update(i32* %13, i32* %51, i32 %52)
  br label %87

54:                                               ; preds = %40
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %16, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = icmp sgt i32 %58, 1048576
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 1048576, i32* %20, align 4
  br label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %19, align 4
  store i32 %62, i32* %20, align 4
  br label %63

63:                                               ; preds = %61, %60
  br label %64

64:                                               ; preds = %85, %63
  %65 = load i32*, i32** %15, align 8
  %66 = load i32, i32* %20, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @fread(i32* %65, i32 1, i32 %66, i32* %67)
  store i32 %68, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %18, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %18, align 4
  %74 = load i32*, i32** %15, align 8
  %75 = load i32, i32* %16, align 4
  %76 = call i32 (i32*, ...) @SHA256_Update(i32* %13, i32* %74, i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %18, align 4
  %79 = sub nsw i32 %77, %78
  store i32 %79, i32* %19, align 4
  %80 = load i32, i32* %19, align 4
  %81 = icmp sgt i32 %80, 1048576
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  store i32 1048576, i32* %20, align 4
  br label %85

83:                                               ; preds = %70
  %84 = load i32, i32* %19, align 4
  store i32 %84, i32* %20, align 4
  br label %85

85:                                               ; preds = %83, %82
  br label %64

86:                                               ; preds = %64
  br label %87

87:                                               ; preds = %86, %43
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* @SEEK_SET, align 4
  %93 = call i32 @fseek(i32* %88, i32 %91, i32 %92)
  store i32 0, i32* %21, align 4
  store i32 0, i32* %21, align 4
  br label %94

94:                                               ; preds = %102, %87
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = call i32 (i32*, ...) @SHA256_Update(i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %100 = load i32, i32* %18, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %18, align 4
  br label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %21, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %21, align 4
  br label %94

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %111, %105
  %107 = load i32*, i32** %15, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @fread(i32* %107, i32 1, i32 1048576, i32* %108)
  store i32 %109, i32* %16, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %18, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %18, align 4
  %115 = load i32*, i32** %15, align 8
  %116 = load i32, i32* %16, align 4
  %117 = call i32 (i32*, ...) @SHA256_Update(i32* %13, i32* %115, i32 %116)
  br label %106

118:                                              ; preds = %106
  %119 = call i32 @SHA256_Final(i32* %31, i32* %13)
  store i32 0, i32* %21, align 4
  br label %120

120:                                              ; preds = %135, %118
  %121 = load i32, i32* %21, align 4
  %122 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %120
  %125 = load i8*, i8** %7, align 8
  %126 = load i32, i32* %21, align 4
  %127 = mul nsw i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = load i32, i32* %21, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %31, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @sprintf(i8* %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %124
  %136 = load i32, i32* %21, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %21, align 4
  br label %120

138:                                              ; preds = %120
  %139 = load i8*, i8** %7, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 64
  store i8 0, i8* %140, align 1
  %141 = load i32*, i32** %10, align 8
  %142 = call i32 @fclose(i32* %141)
  %143 = load i32*, i32** %15, align 8
  %144 = call i32 @free(i32* %143)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %145

145:                                              ; preds = %138, %36
  %146 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %146)
  br label %147

147:                                              ; preds = %145, %26
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SHA256_Init(i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fread(i32*, i32, i32, i32*) #1

declare dso_local i32 @SHA256_Update(i32*, ...) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @SHA256_Final(i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @free(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
