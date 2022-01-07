; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_cookie.c_cookie_sort.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_cookie.c_cookie_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Cookie = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cookie_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cookie_sort(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.Cookie*, align 8
  %7 = alloca %struct.Cookie*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.Cookie**
  %12 = load %struct.Cookie*, %struct.Cookie** %11, align 8
  store %struct.Cookie* %12, %struct.Cookie** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.Cookie**
  %15 = load %struct.Cookie*, %struct.Cookie** %14, align 8
  store %struct.Cookie* %15, %struct.Cookie** %7, align 8
  %16 = load %struct.Cookie*, %struct.Cookie** %6, align 8
  %17 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.Cookie*, %struct.Cookie** %6, align 8
  %22 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @strlen(i64 %23)
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %20
  %27 = phi i64 [ %24, %20 ], [ 0, %25 ]
  store i64 %27, i64* %8, align 8
  %28 = load %struct.Cookie*, %struct.Cookie** %7, align 8
  %29 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.Cookie*, %struct.Cookie** %7, align 8
  %34 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @strlen(i64 %35)
  br label %38

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %32
  %39 = phi i64 [ %36, %32 ], [ 0, %37 ]
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ugt i64 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 -1
  store i32 %48, i32* %3, align 4
  br label %127

49:                                               ; preds = %38
  %50 = load %struct.Cookie*, %struct.Cookie** %6, align 8
  %51 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.Cookie*, %struct.Cookie** %6, align 8
  %56 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @strlen(i64 %57)
  br label %60

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %54
  %61 = phi i64 [ %58, %54 ], [ 0, %59 ]
  store i64 %61, i64* %8, align 8
  %62 = load %struct.Cookie*, %struct.Cookie** %7, align 8
  %63 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.Cookie*, %struct.Cookie** %7, align 8
  %68 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @strlen(i64 %69)
  br label %72

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %66
  %73 = phi i64 [ %70, %66 ], [ 0, %71 ]
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp ugt i64 %78, %79
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1, i32 -1
  store i32 %82, i32* %3, align 4
  br label %127

83:                                               ; preds = %72
  %84 = load %struct.Cookie*, %struct.Cookie** %6, align 8
  %85 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.Cookie*, %struct.Cookie** %6, align 8
  %90 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @strlen(i64 %91)
  br label %94

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %88
  %95 = phi i64 [ %92, %88 ], [ 0, %93 ]
  store i64 %95, i64* %8, align 8
  %96 = load %struct.Cookie*, %struct.Cookie** %7, align 8
  %97 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load %struct.Cookie*, %struct.Cookie** %7, align 8
  %102 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @strlen(i64 %103)
  br label %106

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105, %100
  %107 = phi i64 [ %104, %100 ], [ 0, %105 ]
  store i64 %107, i64* %9, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %9, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* %8, align 8
  %114 = icmp ugt i64 %112, %113
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 1, i32 -1
  store i32 %116, i32* %3, align 4
  br label %127

117:                                              ; preds = %106
  %118 = load %struct.Cookie*, %struct.Cookie** %7, align 8
  %119 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.Cookie*, %struct.Cookie** %6, align 8
  %122 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %120, %123
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 1, i32 -1
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %117, %111, %77, %43
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i64 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
