; ModuleID = '/home/carl/AnghaBench/curl/lib/vtls/extr_vtls.c_Curl_ssl_config_matches.c'
source_filename = "/home/carl/AnghaBench/curl/lib/vtls/extr_vtls.c_Curl_ssl_config_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_primary_config = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_ssl_config_matches(%struct.ssl_primary_config* %0, %struct.ssl_primary_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssl_primary_config*, align 8
  %5 = alloca %struct.ssl_primary_config*, align 8
  store %struct.ssl_primary_config* %0, %struct.ssl_primary_config** %4, align 8
  store %struct.ssl_primary_config* %1, %struct.ssl_primary_config** %5, align 8
  %6 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %4, align 8
  %7 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %5, align 8
  %10 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %119

13:                                               ; preds = %2
  %14 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %4, align 8
  %15 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %5, align 8
  %18 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %119

21:                                               ; preds = %13
  %22 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %4, align 8
  %23 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %5, align 8
  %26 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %119

29:                                               ; preds = %21
  %30 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %4, align 8
  %31 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %5, align 8
  %34 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %119

37:                                               ; preds = %29
  %38 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %4, align 8
  %39 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %5, align 8
  %42 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %119

45:                                               ; preds = %37
  %46 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %4, align 8
  %47 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %46, i32 0, i32 12
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %5, align 8
  %50 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %49, i32 0, i32 12
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @Curl_safe_strcasecompare(i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %119

54:                                               ; preds = %45
  %55 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %4, align 8
  %56 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %5, align 8
  %59 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @Curl_safe_strcasecompare(i32 %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %119

63:                                               ; preds = %54
  %64 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %4, align 8
  %65 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %5, align 8
  %68 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @Curl_safe_strcasecompare(i32 %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %119

72:                                               ; preds = %63
  %73 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %4, align 8
  %74 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %5, align 8
  %77 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @Curl_safe_strcasecompare(i32 %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %119

81:                                               ; preds = %72
  %82 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %4, align 8
  %83 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %5, align 8
  %86 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @Curl_safe_strcasecompare(i32 %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %119

90:                                               ; preds = %81
  %91 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %4, align 8
  %92 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %5, align 8
  %95 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @Curl_safe_strcasecompare(i32 %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %90
  %100 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %4, align 8
  %101 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %5, align 8
  %104 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @Curl_safe_strcasecompare(i32 %102, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %99
  %109 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %4, align 8
  %110 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %5, align 8
  %113 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @Curl_safe_strcasecompare(i32 %111, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* @TRUE, align 4
  store i32 %118, i32* %3, align 4
  br label %121

119:                                              ; preds = %108, %99, %90, %81, %72, %63, %54, %45, %37, %29, %21, %13, %2
  %120 = load i32, i32* @FALSE, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @Curl_safe_strcasecompare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
