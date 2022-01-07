; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_expand_env.c_expand_environment.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_expand_env.c_expand_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s:%d: undefined environment variable \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%s:%d: Expansion is longer than %d bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @expand_environment(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @MAX_LEN, align 4
  %15 = call i8* @malloc(i32 %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %9, align 8
  br label %18

18:                                               ; preds = %101, %37, %3
  %19 = load i8*, i8** %9, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %110

23:                                               ; preds = %18
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @MAX_LEN, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = getelementptr inbounds i8, i8* %28, i64 -1
  %30 = icmp uge i8* %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %113

32:                                               ; preds = %23
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 36
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %9, align 8
  %40 = load i8, i8* %38, align 1
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  store i8 %40, i8* %41, align 1
  br label %18

43:                                               ; preds = %32
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  store i8* %46, i8** %10, align 8
  br label %47

47:                                               ; preds = %52, %43
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @allowed_env_var_name(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %9, align 8
  br label %47

55:                                               ; preds = %47
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, 1
  %63 = call i8* @calloc(i32 1, i64 %62)
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = icmp ne i8* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i8*, i8** %12, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @strncpy(i8* %68, i8* %69, i64 %70)
  %72 = load i8*, i8** %12, align 8
  %73 = call i8* @getenv(i8* %72)
  store i8* %73, i8** %13, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %55
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76, %55
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %81, i32 %82, i8* %83)
  %85 = call i32 @exit(i32 1) #3
  unreachable

86:                                               ; preds = %76
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i8*, i8** %8, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* @MAX_LEN, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = getelementptr inbounds i8, i8* %97, i64 -1
  %99 = icmp uge i8* %93, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %86
  br label %113

101:                                              ; preds = %86
  %102 = load i8*, i8** %8, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = call i32 @strcpy(i8* %102, i8* %103)
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 @strlen(i8* %105)
  %107 = load i8*, i8** %8, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %8, align 8
  br label %18

110:                                              ; preds = %18
  %111 = load i8*, i8** %8, align 8
  store i8 0, i8* %111, align 1
  %112 = load i8*, i8** %7, align 8
  ret i8* %112

113:                                              ; preds = %100, %31
  %114 = load i8*, i8** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @MAX_LEN, align 4
  %117 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %114, i32 %115, i32 %116)
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 @free(i8* %118)
  %120 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @allowed_env_var_name(i8 signext) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
