; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_mime.c_Curl_mime_set_subparts.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_mime.c_Curl_mime_set_subparts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, %struct.TYPE_7__*, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }

@CURLE_BAD_FUNCTION_ARGUMENT = common dso_local global i32 0, align 4
@MIMEKIND_MULTIPART = common dso_local global i64 0, align 8
@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't add itself as a subpart!\00", align 1
@mime_subparts_read = common dso_local global i32 0, align 4
@mime_subparts_seek = common dso_local global i32 0, align 4
@mime_subparts_free = common dso_local global i32 0, align 4
@mime_subparts_unbind = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_mime_set_subparts(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @CURLE_BAD_FUNCTION_ARGUMENT, align 4
  store i32 %12, i32* %4, align 4
  br label %133

13:                                               ; preds = %3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MIMEKIND_MULTIPART, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = icmp eq %struct.TYPE_7__* %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @CURLE_OK, align 4
  store i32 %26, i32* %4, align 4
  br label %133

27:                                               ; preds = %19, %13
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = call i32 @cleanup_part_content(%struct.TYPE_6__* %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %131

32:                                               ; preds = %27
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @CURLE_BAD_FUNCTION_ARGUMENT, align 4
  store i32 %51, i32* %4, align 4
  br label %133

52:                                               ; preds = %42, %37, %32
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = icmp ne %struct.TYPE_6__* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @CURLE_BAD_FUNCTION_ARGUMENT, align 4
  store i32 %58, i32* %4, align 4
  br label %133

59:                                               ; preds = %52
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 7
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %8, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = icmp ne %struct.TYPE_7__* %63, null
  br i1 %64, label %65, label %103

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %80, %65
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = icmp ne %struct.TYPE_6__* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 7
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = icmp ne %struct.TYPE_7__* %76, null
  br label %78

78:                                               ; preds = %71, %66
  %79 = phi i1 [ false, %66 ], [ %77, %71 ]
  br i1 %79, label %80, label %86

80:                                               ; preds = %78
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 7
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  store %struct.TYPE_7__* %85, %struct.TYPE_7__** %8, align 8
  br label %66

86:                                               ; preds = %78
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = icmp eq %struct.TYPE_7__* %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @failf(i64 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %95, %90
  %101 = load i32, i32* @CURLE_BAD_FUNCTION_ARGUMENT, align 4
  store i32 %101, i32* %4, align 4
  br label %133

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102, %59
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store %struct.TYPE_6__* %104, %struct.TYPE_6__** %106, align 8
  %107 = load i32, i32* @mime_subparts_read, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @mime_subparts_seek, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %103
  %116 = load i32, i32* @mime_subparts_free, align 4
  br label %119

117:                                              ; preds = %103
  %118 = load i32, i32* @mime_subparts_unbind, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  store %struct.TYPE_7__* %123, %struct.TYPE_7__** %125, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  store i32 -1, i32* %127, align 8
  %128 = load i64, i64* @MIMEKIND_MULTIPART, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %119, %27
  %132 = load i32, i32* @CURLE_OK, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %100, %57, %50, %25, %11
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @cleanup_part_content(%struct.TYPE_6__*) #1

declare dso_local i32 @failf(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
