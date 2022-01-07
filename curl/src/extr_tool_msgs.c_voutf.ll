; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_msgs.c_voutf.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_msgs.c_voutf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalConfig = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.GlobalConfig*, i8*, i8*, i32)* @voutf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @voutf(%struct.GlobalConfig* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.GlobalConfig*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.GlobalConfig* %0, %struct.GlobalConfig** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = sub nsw i32 79, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %9, align 8
  %18 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %19 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %100, label %22

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @curlx_mvaprintf(i8* %23, i32 %24)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %100

29:                                               ; preds = %22
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %10, align 8
  %33 = load i8*, i8** %12, align 8
  store i8* %33, i8** %11, align 8
  br label %34

34:                                               ; preds = %96, %29
  %35 = load i64, i64* %10, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %97

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %40 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @fputs(i8* %38, i32 %41)
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %90

46:                                               ; preds = %37
  %47 = load i64, i64* %9, align 8
  %48 = sub i64 %47, 1
  store i64 %48, i64* %13, align 8
  br label %49

49:                                               ; preds = %61, %46
  %50 = load i8*, i8** %11, align 8
  %51 = load i64, i64* %13, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @ISSPACE(i8 signext %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i64, i64* %13, align 8
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %56, %49
  %60 = phi i1 [ false, %49 ], [ %58, %56 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load i64, i64* %13, align 8
  %63 = add i64 %62, -1
  store i64 %63, i64* %13, align 8
  br label %49

64:                                               ; preds = %59
  %65 = load i64, i64* %13, align 8
  %66 = icmp eq i64 0, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i64, i64* %9, align 8
  %69 = sub i64 %68, 1
  store i64 %69, i64* %13, align 8
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i8*, i8** %11, align 8
  %72 = load i64, i64* %13, align 8
  %73 = add i64 %72, 1
  %74 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %75 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @fwrite(i8* %71, i64 %73, i32 1, i32 %76)
  %78 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %79 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i64, i64* %13, align 8
  %83 = add i64 %82, 1
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 %83
  store i8* %85, i8** %11, align 8
  %86 = load i64, i64* %13, align 8
  %87 = add i64 %86, 1
  %88 = load i64, i64* %10, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %10, align 8
  br label %96

90:                                               ; preds = %37
  %91 = load i8*, i8** %11, align 8
  %92 = load %struct.GlobalConfig*, %struct.GlobalConfig** %5, align 8
  %93 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @fputs(i8* %91, i32 %94)
  store i64 0, i64* %10, align 8
  br label %96

96:                                               ; preds = %90, %70
  br label %34

97:                                               ; preds = %34
  %98 = load i8*, i8** %12, align 8
  %99 = call i32 @curl_free(i8* %98)
  br label %100

100:                                              ; preds = %28, %97, %4
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @curlx_mvaprintf(i8*, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @ISSPACE(i8 signext) #1

declare dso_local i32 @fwrite(i8*, i64, i32, i32) #1

declare dso_local i32 @curl_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
