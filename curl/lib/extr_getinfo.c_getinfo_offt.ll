; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_getinfo.c_getinfo_offt.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_getinfo.c_getinfo_offt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PGRS_DL_SIZE_KNOWN = common dso_local global i32 0, align 4
@PGRS_UL_SIZE_KNOWN = common dso_local global i32 0, align 4
@CURLE_UNKNOWN_OPTION = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, i32, i32*)* @getinfo_offt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getinfo_offt(%struct.Curl_easy* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %121 [
    i32 138, label %9
    i32 132, label %15
    i32 133, label %21
    i32 131, label %27
    i32 130, label %33
    i32 140, label %39
    i32 139, label %56
    i32 128, label %73
    i32 137, label %79
    i32 141, label %85
    i32 142, label %91
    i32 136, label %97
    i32 129, label %103
    i32 135, label %109
    i32 134, label %115
  ]

9:                                                ; preds = %3
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %11 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 %13, i32* %14, align 4
  br label %123

15:                                               ; preds = %3
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %17 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  br label %123

21:                                               ; preds = %3
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %23 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  br label %123

27:                                               ; preds = %3
  %28 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %29 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  br label %123

33:                                               ; preds = %3
  %34 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %35 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  br label %123

39:                                               ; preds = %3
  %40 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %41 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PGRS_DL_SIZE_KNOWN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %49 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  br label %53

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %47
  %54 = phi i32 [ %51, %47 ], [ -1, %52 ]
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  br label %123

56:                                               ; preds = %3
  %57 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %58 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PGRS_UL_SIZE_KNOWN, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %66 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  br label %70

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %64
  %71 = phi i32 [ %68, %64 ], [ -1, %69 ]
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %123

73:                                               ; preds = %3
  %74 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %75 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %7, align 8
  store i32 %77, i32* %78, align 4
  br label %123

79:                                               ; preds = %3
  %80 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %81 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  br label %123

85:                                               ; preds = %3
  %86 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %87 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %7, align 8
  store i32 %89, i32* %90, align 4
  br label %123

91:                                               ; preds = %3
  %92 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %93 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 10
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %7, align 8
  store i32 %95, i32* %96, align 4
  br label %123

97:                                               ; preds = %3
  %98 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %99 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 11
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  br label %123

103:                                              ; preds = %3
  %104 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %105 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 12
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %7, align 8
  store i32 %107, i32* %108, align 4
  br label %123

109:                                              ; preds = %3
  %110 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %111 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 13
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %7, align 8
  store i32 %113, i32* %114, align 4
  br label %123

115:                                              ; preds = %3
  %116 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %117 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %7, align 8
  store i32 %119, i32* %120, align 4
  br label %123

121:                                              ; preds = %3
  %122 = load i32, i32* @CURLE_UNKNOWN_OPTION, align 4
  store i32 %122, i32* %4, align 4
  br label %125

123:                                              ; preds = %115, %109, %103, %97, %91, %85, %79, %73, %70, %53, %33, %27, %21, %15, %9
  %124 = load i32, i32* @CURLE_OK, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
