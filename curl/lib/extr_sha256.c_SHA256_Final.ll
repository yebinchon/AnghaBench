; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_sha256.c_SHA256_Final.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_sha256.c_SHA256_Final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha256_state = type { i32, i32, i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sha256_state*)* @SHA256_Final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SHA256_Final(i8* %0, %struct.sha256_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sha256_state*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sha256_state* %1, %struct.sha256_state** %5, align 8
  %7 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %8 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = icmp uge i64 %10, 8
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %110

13:                                               ; preds = %2
  %14 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %15 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 8
  %18 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %19 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %23 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %26 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %24, i64 %29
  store i8 -128, i8* %30, align 1
  %31 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %32 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 56
  br i1 %34, label %35, label %59

35:                                               ; preds = %13
  br label %36

36:                                               ; preds = %41, %35
  %37 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %38 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %39, 64
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %43 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %46 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %44, i64 %49
  store i8 0, i8* %50, align 1
  br label %36

51:                                               ; preds = %36
  %52 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %53 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %54 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @sha256_compress(%struct.sha256_state* %52, i8* %55)
  %57 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %58 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %51, %13
  br label %60

60:                                               ; preds = %65, %59
  %61 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %62 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %63, 56
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %67 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %70 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %68, i64 %73
  store i8 0, i8* %74, align 1
  br label %60

75:                                               ; preds = %60
  %76 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %77 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 56
  %80 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %81 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @WPA_PUT_BE64(i8* %79, i32 %82)
  %84 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %85 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %86 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @sha256_compress(%struct.sha256_state* %84, i8* %87)
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %106, %75
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 8
  br i1 %91, label %92, label %109

92:                                               ; preds = %89
  %93 = load i8*, i8** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = mul nsw i32 4, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  %98 = load %struct.sha256_state*, %struct.sha256_state** %5, align 8
  %99 = getelementptr inbounds %struct.sha256_state, %struct.sha256_state* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @WPA_PUT_BE32(i8* %97, i32 %104)
  br label %106

106:                                              ; preds = %92
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %89

109:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %12
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @sha256_compress(%struct.sha256_state*, i8*) #1

declare dso_local i32 @WPA_PUT_BE64(i8*, i32) #1

declare dso_local i32 @WPA_PUT_BE32(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
