; ModuleID = '/home/carl/AnghaBench/curl/packages/OS400/extr_os400sys.c_Curl_getaddrinfo_a.c'
source_filename = "/home/carl/AnghaBench/curl/packages/OS400/extr_os400sys.c_Curl_getaddrinfo_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32 }

@EAI_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_getaddrinfo_a(i8* %0, i8* %1, %struct.addrinfo* %2, %struct.addrinfo** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.addrinfo* %2, %struct.addrinfo** %8, align 8
  store %struct.addrinfo** %3, %struct.addrinfo*** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i8* @malloc(i32 %20)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %25, i32* %5, align 4
  br label %72

26:                                               ; preds = %16
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @QadrtConvertA2E(i8* %27, i8* %28, i32 %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %26, %4
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @strlen(i8* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i8* @malloc(i32 %43)
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %50, i32* %5, align 4
  br label %72

51:                                               ; preds = %39
  %52 = load i8*, i8** %11, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @QadrtConvertA2E(i8* %52, i8* %53, i32 %54, i32 %55)
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8 0, i8* %60, align 1
  br label %61

61:                                               ; preds = %51, %36
  %62 = load i8*, i8** %10, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %65 = load %struct.addrinfo**, %struct.addrinfo*** %9, align 8
  %66 = call i32 @getaddrinfo(i8* %62, i8* %63, %struct.addrinfo* %64, %struct.addrinfo** %65)
  store i32 %66, i32* %12, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %61, %47, %24
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @QadrtConvertA2E(i8*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
