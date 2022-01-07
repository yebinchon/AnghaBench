; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_hostname_matches_domain.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_hostname_matches_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.substring = type { i8*, i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i8*, i64)* @necp_hostname_matches_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_hostname_matches_domain(i8* %0, i64 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.substring, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.substring, align 8
  %12 = bitcast %struct.substring* %7 to { i8*, i64 }*
  %13 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %12, i32 0, i32 0
  store i8* %0, i8** %13, align 8
  %14 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %12, i32 0, i32 1
  store i64 %1, i64* %14, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = getelementptr inbounds %struct.substring, %struct.substring* %7, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18, %5
  %22 = getelementptr inbounds %struct.substring, %struct.substring* %7, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp eq i8* %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %6, align 4
  br label %78

27:                                               ; preds = %18
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds %struct.substring, %struct.substring* %11, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = getelementptr inbounds %struct.substring, %struct.substring* %11, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.substring, %struct.substring* %7, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.substring, %struct.substring* %11, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %38, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.substring, %struct.substring* %7, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds %struct.substring, %struct.substring* %11, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds %struct.substring, %struct.substring* %7, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @strncasecmp(i8* %44, i8* %46, i64 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %6, align 4
  br label %78

53:                                               ; preds = %42, %36
  br label %76

54:                                               ; preds = %27
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load i32, i32* @TRUE, align 4
  %60 = bitcast %struct.substring* %7 to { i8*, i64 }*
  %61 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %60, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = bitcast %struct.substring* %11 to { i8*, i64 }*
  %66 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %65, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @necp_check_suffix(i8* %62, i64 %64, i8* %67, i64 %69, i32 %59)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %6, align 4
  br label %78

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %74, %54
  br label %76

76:                                               ; preds = %75, %53
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %76, %72, %51, %21
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #1

declare dso_local i64 @necp_check_suffix(i8*, i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
