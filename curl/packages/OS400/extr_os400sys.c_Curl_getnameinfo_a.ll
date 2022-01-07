; ModuleID = '/home/carl/AnghaBench/curl/packages/OS400/extr_os400sys.c_Curl_getnameinfo_a.c'
source_filename = "/home/carl/AnghaBench/curl/packages/OS400/extr_os400sys.c_Curl_getnameinfo_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@EAI_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_getnameinfo_a(%struct.sockaddr* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %7
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i64, i64* %12, align 8
  %27 = call i8* @malloc(i64 %26)
  store i8* %27, i8** %16, align 8
  %28 = load i8*, i8** %16, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %31, i32* %8, align 4
  br label %97

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %22, %7
  %34 = load i8*, i8** %13, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load i64, i64* %14, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i64, i64* %14, align 8
  %41 = call i8* @malloc(i64 %40)
  store i8* %41, i8** %17, align 8
  %42 = load i8*, i8** %17, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %16, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %47, i32* %8, align 4
  br label %97

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %36, %33
  %50 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i8*, i8** %16, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @getnameinfo(%struct.sockaddr* %50, i64 %51, i8* %52, i64 %53, i8* %54, i64 %55, i32 %56)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %91, label %60

60:                                               ; preds = %49
  %61 = load i8*, i8** %16, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load i8*, i8** %11, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = load i64, i64* %12, align 8
  %67 = sub nsw i64 %66, 1
  %68 = load i8*, i8** %16, align 8
  %69 = call i32 @strlen(i8* %68)
  %70 = call i32 @QadrtConvertE2A(i8* %64, i8* %65, i64 %67, i32 %69)
  store i32 %70, i32* %19, align 4
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %19, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  store i8 0, i8* %74, align 1
  br label %75

75:                                               ; preds = %63, %60
  %76 = load i8*, i8** %17, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load i8*, i8** %13, align 8
  %80 = load i8*, i8** %17, align 8
  %81 = load i64, i64* %14, align 8
  %82 = sub nsw i64 %81, 1
  %83 = load i8*, i8** %17, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = call i32 @QadrtConvertE2A(i8* %79, i8* %80, i64 %82, i32 %84)
  store i32 %85, i32* %19, align 4
  %86 = load i8*, i8** %13, align 8
  %87 = load i32, i32* %19, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 0, i8* %89, align 1
  br label %90

90:                                               ; preds = %78, %75
  br label %91

91:                                               ; preds = %90, %49
  %92 = load i8*, i8** %16, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load i8*, i8** %17, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i32, i32* %18, align 4
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %91, %44, %30
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i64, i8*, i64, i8*, i64, i32) #1

declare dso_local i32 @QadrtConvertE2A(i8*, i8*, i64, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
