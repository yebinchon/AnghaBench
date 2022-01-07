; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_pickoneauth.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_pickoneauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth = type { i64, i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@CURLAUTH_NEGOTIATE = common dso_local global i64 0, align 8
@CURLAUTH_BEARER = common dso_local global i64 0, align 8
@CURLAUTH_DIGEST = common dso_local global i64 0, align 8
@CURLAUTH_NTLM = common dso_local global i64 0, align 8
@CURLAUTH_NTLM_WB = common dso_local global i64 0, align 8
@CURLAUTH_BASIC = common dso_local global i64 0, align 8
@CURLAUTH_PICKNONE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@CURLAUTH_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth*, i64)* @pickoneauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pickoneauth(%struct.auth* %0, i64 %1) #0 {
  %3 = alloca %struct.auth*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.auth* %0, %struct.auth** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.auth*, %struct.auth** %3, align 8
  %8 = getelementptr inbounds %struct.auth, %struct.auth* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.auth*, %struct.auth** %3, align 8
  %11 = getelementptr inbounds %struct.auth, %struct.auth* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = and i64 %9, %12
  %14 = load i64, i64* %4, align 8
  %15 = and i64 %13, %14
  store i64 %15, i64* %6, align 8
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @CURLAUTH_NEGOTIATE, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i64, i64* @CURLAUTH_NEGOTIATE, align 8
  %23 = load %struct.auth*, %struct.auth** %3, align 8
  %24 = getelementptr inbounds %struct.auth, %struct.auth* %23, i32 0, i32 2
  store i64 %22, i64* %24, align 8
  br label %80

25:                                               ; preds = %2
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @CURLAUTH_BEARER, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i64, i64* @CURLAUTH_BEARER, align 8
  %32 = load %struct.auth*, %struct.auth** %3, align 8
  %33 = getelementptr inbounds %struct.auth, %struct.auth* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  br label %79

34:                                               ; preds = %25
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @CURLAUTH_DIGEST, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i64, i64* @CURLAUTH_DIGEST, align 8
  %41 = load %struct.auth*, %struct.auth** %3, align 8
  %42 = getelementptr inbounds %struct.auth, %struct.auth* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  br label %78

43:                                               ; preds = %34
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @CURLAUTH_NTLM, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i64, i64* @CURLAUTH_NTLM, align 8
  %50 = load %struct.auth*, %struct.auth** %3, align 8
  %51 = getelementptr inbounds %struct.auth, %struct.auth* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  br label %77

52:                                               ; preds = %43
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @CURLAUTH_NTLM_WB, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i64, i64* @CURLAUTH_NTLM_WB, align 8
  %59 = load %struct.auth*, %struct.auth** %3, align 8
  %60 = getelementptr inbounds %struct.auth, %struct.auth* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  br label %76

61:                                               ; preds = %52
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @CURLAUTH_BASIC, align 8
  %64 = and i64 %62, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i64, i64* @CURLAUTH_BASIC, align 8
  %68 = load %struct.auth*, %struct.auth** %3, align 8
  %69 = getelementptr inbounds %struct.auth, %struct.auth* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  br label %75

70:                                               ; preds = %61
  %71 = load i64, i64* @CURLAUTH_PICKNONE, align 8
  %72 = load %struct.auth*, %struct.auth** %3, align 8
  %73 = getelementptr inbounds %struct.auth, %struct.auth* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %70, %66
  br label %76

76:                                               ; preds = %75, %57
  br label %77

77:                                               ; preds = %76, %48
  br label %78

78:                                               ; preds = %77, %39
  br label %79

79:                                               ; preds = %78, %30
  br label %80

80:                                               ; preds = %79, %21
  %81 = load i64, i64* @CURLAUTH_NONE, align 8
  %82 = load %struct.auth*, %struct.auth** %3, align 8
  %83 = getelementptr inbounds %struct.auth, %struct.auth* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
