; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_sendf.c_convert_lineends.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_sendf.c_convert_lineends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.Curl_easy*, i8*, i64)* @convert_lineends to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @convert_lineends(%struct.Curl_easy* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %3
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %4, align 8
  br label %133

17:                                               ; preds = %12
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %19 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %17
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i64, i64* %7, align 8
  %33 = sub i64 %32, 1
  %34 = call i32 @memmove(i8* %29, i8* %31, i64 %33)
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %7, align 8
  %37 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %38 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %28, %23
  %43 = load i64, i64* @FALSE, align 8
  %44 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %45 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  br label %47

47:                                               ; preds = %42, %17
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i8* @memchr(i8* %48, i8 signext 13, i64 %49)
  store i8* %50, i8** %9, align 8
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %131

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %88, %53
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = getelementptr inbounds i8, i8* %58, i64 -1
  %60 = icmp ult i8* %55, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %54
  %62 = load i8*, i8** %8, align 8
  %63 = call i64 @memcmp(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %8, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load i8, i8* %68, align 1
  %70 = load i8*, i8** %9, align 8
  store i8 %69, i8* %70, align 1
  %71 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %72 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %88

76:                                               ; preds = %61
  %77 = load i8*, i8** %8, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 13
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i8*, i8** %9, align 8
  store i8 10, i8* %82, align 1
  br label %87

83:                                               ; preds = %76
  %84 = load i8*, i8** %8, align 8
  %85 = load i8, i8* %84, align 1
  %86 = load i8*, i8** %9, align 8
  store i8 %85, i8* %86, align 1
  br label %87

87:                                               ; preds = %83, %81
  br label %88

88:                                               ; preds = %87, %65
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %9, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %8, align 8
  br label %54

93:                                               ; preds = %54
  %94 = load i8*, i8** %8, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = icmp ult i8* %94, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %93
  %100 = load i8*, i8** %8, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 13
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i8*, i8** %9, align 8
  store i8 10, i8* %105, align 1
  %106 = load i64, i64* @TRUE, align 8
  %107 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %108 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i64 %106, i64* %109, align 8
  br label %114

110:                                              ; preds = %99
  %111 = load i8*, i8** %8, align 8
  %112 = load i8, i8* %111, align 1
  %113 = load i8*, i8** %9, align 8
  store i8 %112, i8* %113, align 1
  br label %114

114:                                              ; preds = %110, %104
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %9, align 8
  br label %117

117:                                              ; preds = %114, %93
  %118 = load i8*, i8** %9, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = load i64, i64* %7, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  %122 = icmp ult i8* %118, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i8*, i8** %9, align 8
  store i8 0, i8* %124, align 1
  br label %125

125:                                              ; preds = %123, %117
  %126 = load i8*, i8** %9, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  store i64 %130, i64* %4, align 8
  br label %133

131:                                              ; preds = %47
  %132 = load i64, i64* %7, align 8
  store i64 %132, i64* %4, align 8
  br label %133

133:                                              ; preds = %131, %125, %15
  %134 = load i64, i64* %4, align 8
  ret i64 %134
}

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
