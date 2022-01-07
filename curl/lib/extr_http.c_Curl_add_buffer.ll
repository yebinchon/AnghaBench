; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_add_buffer.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_add_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i32 }

@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_add_buffer(%struct.TYPE_4__** %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = xor i64 %13, -1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @Curl_safefree(i8* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %25 = call i32 @free(%struct.TYPE_4__* %24)
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %26, align 8
  %27 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %27, i32* %4, align 4
  br label %117

28:                                               ; preds = %3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %36, %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = icmp ugt i64 %38, %43
  br i1 %44, label %45, label %100

45:                                               ; preds = %33, %28
  %46 = load i64, i64* %7, align 8
  %47 = icmp ugt i64 %46, 9223372036854775807
  br i1 %47, label %62, label %48

48:                                               ; preds = %45
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ugt i64 %51, 9223372036854775807
  br i1 %52, label %62, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* %7, align 8
  %55 = mul i64 %54, 2
  %56 = xor i64 %55, -1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = mul i64 %59, 2
  %61 = icmp ult i64 %56, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53, %48, %45
  store i64 -1, i64* %10, align 8
  br label %70

63:                                               ; preds = %53
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %66, %67
  %69 = mul i64 %68, 2
  store i64 %69, i64* %10, align 8
  br label %70

70:                                               ; preds = %63, %62
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i8* @Curl_saferealloc(i8* %78, i64 %79)
  store i8* %80, i8** %8, align 8
  br label %84

81:                                               ; preds = %70
  %82 = load i64, i64* %10, align 8
  %83 = call i8* @malloc(i64 %82)
  store i8* %83, i8** %8, align 8
  br label %84

84:                                               ; preds = %81, %75
  %85 = load i8*, i8** %8, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %89 = call i32 @free(%struct.TYPE_4__* %88)
  %90 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %90, align 8
  %91 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %91, i32* %4, align 4
  br label %117

92:                                               ; preds = %84
  %93 = load i8*, i8** %8, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load i64, i64* %10, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %92, %33
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  %108 = load i8*, i8** %6, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @memcpy(i8* %107, i8* %108, i64 %109)
  %111 = load i64, i64* %7, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %114, %111
  store i64 %115, i64* %113, align 8
  %116 = load i32, i32* @CURLE_OK, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %100, %87, %19
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i8* @Curl_saferealloc(i8*, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
