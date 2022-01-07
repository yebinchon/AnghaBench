; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_readmoredata.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_readmoredata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.HTTP* }
%struct.HTTP = type { i64, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32, i32 }

@HTTPSEND_REQUEST = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @readmoredata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @readmoredata(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.connectdata*, align 8
  %11 = alloca %struct.HTTP*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.connectdata*
  store %struct.connectdata* %14, %struct.connectdata** %10, align 8
  %15 = load %struct.connectdata*, %struct.connectdata** %10, align 8
  %16 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.HTTP*, %struct.HTTP** %19, align 8
  store %struct.HTTP* %20, %struct.HTTP** %11, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = mul i64 %21, %22
  store i64 %23, i64* %12, align 8
  %24 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %25 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %129

29:                                               ; preds = %4
  %30 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %31 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HTTPSEND_REQUEST, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @TRUE, align 4
  br label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @FALSE, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load %struct.connectdata*, %struct.connectdata** %10, align 8
  %42 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 8
  %46 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %47 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %111

51:                                               ; preds = %39
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %54 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %57 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @memcpy(i8* %52, i64 %55, i64 %58)
  %60 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %61 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %12, align 8
  %63 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %64 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %106

68:                                               ; preds = %51
  %69 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %70 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %74 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %76 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %80 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %82 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.connectdata*, %struct.connectdata** %10, align 8
  %86 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store i32 %84, i32* %89, align 4
  %90 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %91 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.connectdata*, %struct.connectdata** %10, align 8
  %95 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 %93, i32* %98, align 8
  %99 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %100 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %100, align 8
  %103 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %104 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  br label %109

106:                                              ; preds = %51
  %107 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %108 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %106, %68
  %110 = load i64, i64* %12, align 8
  store i64 %110, i64* %5, align 8
  br label %129

111:                                              ; preds = %39
  %112 = load i8*, i8** %6, align 8
  %113 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %114 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %12, align 8
  %117 = call i32 @memcpy(i8* %112, i64 %115, i64 %116)
  %118 = load i64, i64* %12, align 8
  %119 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %120 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, %118
  store i64 %122, i64* %120, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load %struct.HTTP*, %struct.HTTP** %11, align 8
  %125 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = sub i64 %126, %123
  store i64 %127, i64* %125, align 8
  %128 = load i64, i64* %12, align 8
  store i64 %128, i64* %5, align 8
  br label %129

129:                                              ; preds = %111, %109, %28
  %130 = load i64, i64* %5, align 8
  ret i64 %130
}

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
