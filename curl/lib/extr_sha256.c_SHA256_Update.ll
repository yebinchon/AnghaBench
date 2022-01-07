; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_sha256.c_SHA256_Update.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_sha256.c_SHA256_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha256_state = type { i32, i64, i8* }

@block_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sha256_state*, i8*, i64)* @SHA256_Update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SHA256_Update(%struct.sha256_state* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sha256_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sha256_state* %0, %struct.sha256_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %10 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = icmp ugt i64 %12, 8
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %96

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %94, %15
  %17 = load i64, i64* %7, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %95

19:                                               ; preds = %16
  %20 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %21 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load i64, i64* %7, align 8
  %26 = icmp uge i64 %25, 64
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @sha256_compress(%struct.sha256_state* %28, i8* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %96

33:                                               ; preds = %27
  %34 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %35 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 512
  store i64 %37, i64* %35, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 64
  store i8* %39, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %40, 64
  store i64 %41, i64* %7, align 8
  br label %94

42:                                               ; preds = %24, %19
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %45 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 64, %46
  %48 = sext i32 %47 to i64
  %49 = call i64 @CURLMIN(i64 %43, i64 %48)
  store i64 %49, i64* %8, align 8
  %50 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %51 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %54 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @memcpy(i8* %57, i8* %58, i64 %59)
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %63 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 %68
  store i8* %70, i8** %6, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %7, align 8
  %73 = sub i64 %72, %71
  store i64 %73, i64* %7, align 8
  %74 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %75 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 64
  br i1 %77, label %78, label %93

78:                                               ; preds = %42
  %79 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %80 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %81 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @sha256_compress(%struct.sha256_state* %79, i8* %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32 -1, i32* %4, align 4
  br label %96

86:                                               ; preds = %78
  %87 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %88 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, 512
  store i64 %90, i64* %88, align 8
  %91 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %92 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  br label %93

93:                                               ; preds = %86, %42
  br label %94

94:                                               ; preds = %93, %33
  br label %16

95:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %85, %32, %14
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @sha256_compress(%struct.sha256_state*, i8*) #1

declare dso_local i64 @CURLMIN(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
