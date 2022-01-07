; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_resolve.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_resolve.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"resolve IPv4%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"--ipv6\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"IPv6\00", align 1
@ipv_inuse = common dso_local global i8* null, align 8
@TRUE = common dso_local global i64 0, align 8
@use_ipv6 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"--ipv4\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"IPv4\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [50 x i8] c"Usage: resolve [option] <host>\0A --version\0A --ipv4\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"IPv6 support has been disabled in this program\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Resolving %s '%s' didn't work\0A\00", align 1
@AI_CANONNAME = common dso_local global i32 0, align 4
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@PF_INET = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@win32_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hostent*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %57, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %10
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %88

24:                                               ; preds = %14
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** @ipv_inuse, align 8
  %33 = load i64, i64* @TRUE, align 8
  store i64 %33, i64* @use_ipv6, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %56

36:                                               ; preds = %24
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** @ipv_inuse, align 8
  %45 = load i64, i64* @FALSE, align 8
  store i64 %45, i64* @use_ipv6, align 8
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %55

48:                                               ; preds = %36
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8*, i8** %49, i64 %52
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %7, align 8
  br label %55

55:                                               ; preds = %48, %44
  br label %56

56:                                               ; preds = %55, %32
  br label %57

57:                                               ; preds = %56
  br label %10

58:                                               ; preds = %10
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = call i32 @puts(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %88

63:                                               ; preds = %58
  %64 = load i64, i64* @use_ipv6, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %88

68:                                               ; preds = %63
  %69 = load i8*, i8** %7, align 8
  %70 = call %struct.hostent* @gethostbyname(i8* %69)
  store %struct.hostent* %70, %struct.hostent** %9, align 8
  %71 = load %struct.hostent*, %struct.hostent** %9, align 8
  %72 = icmp ne %struct.hostent* %71, null
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i8*, i8** @ipv_inuse, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %79, i8* %80)
  br label %82

82:                                               ; preds = %78, %75
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %82, %66, %61, %22
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
