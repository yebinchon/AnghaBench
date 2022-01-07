; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_mime.c_Curl_mime_duppart.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_mime.c_Curl_mime_duppart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_19__*, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.curl_slist = type { i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@CURLE_READ_ERROR = common dso_local global i64 0, align 8
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@CURLE_BAD_FUNCTION_ARGUMENT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_mime_duppart(%struct.TYPE_19__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.curl_slist*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %10 = load i64, i64* @CURLE_OK, align 8
  store i64 %10, i64* %8, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %12 = call i32 @DEBUGASSERT(%struct.TYPE_19__* %11)
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %104 [
    i32 128, label %16
    i32 131, label %17
    i32 130, label %27
    i32 132, label %39
    i32 129, label %57
  ]

16:                                               ; preds = %2
  br label %106

17:                                               ; preds = %2
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 13
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 12
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = call i64 @curl_mime_data(%struct.TYPE_19__* %18, i32 %21, i64 %25)
  store i64 %26, i64* %8, align 8
  br label %106

27:                                               ; preds = %2
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @curl_mime_filedata(%struct.TYPE_19__* %28, i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @CURLE_READ_ERROR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i64, i64* @CURLE_OK, align 8
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %36, %27
  br label %106

39:                                               ; preds = %2
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 11
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @curl_mime_data_cb(%struct.TYPE_19__* %40, i32 %43, i32 %46, i32 %49, i32 %52, i64 %55)
  store i64 %56, i64* %8, align 8
  br label %106

57:                                               ; preds = %2
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.TYPE_20__* @curl_mime_init(i32 %60)
  store %struct.TYPE_20__* %61, %struct.TYPE_20__** %5, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = icmp ne %struct.TYPE_20__* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = call i64 @curl_mime_subparts(%struct.TYPE_19__* %65, %struct.TYPE_20__* %66)
  br label %70

68:                                               ; preds = %57
  %69 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi i64 [ %67, %64 ], [ %69, %68 ]
  store i64 %71, i64* %8, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.TYPE_20__*
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %76, align 8
  store %struct.TYPE_19__* %77, %struct.TYPE_19__** %7, align 8
  br label %78

78:                                               ; preds = %99, %70
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %83 = icmp ne %struct.TYPE_19__* %82, null
  br label %84

84:                                               ; preds = %81, %78
  %85 = phi i1 [ false, %78 ], [ %83, %81 ]
  br i1 %85, label %86, label %103

86:                                               ; preds = %84
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %88 = call %struct.TYPE_19__* @curl_mime_addpart(%struct.TYPE_20__* %87)
  store %struct.TYPE_19__* %88, %struct.TYPE_19__** %6, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %90 = icmp ne %struct.TYPE_19__* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %94 = call i64 @Curl_mime_duppart(%struct.TYPE_19__* %92, %struct.TYPE_19__* %93)
  br label %97

95:                                               ; preds = %86
  %96 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  br label %97

97:                                               ; preds = %95, %91
  %98 = phi i64 [ %94, %91 ], [ %96, %95 ]
  store i64 %98, i64* %8, align 8
  br label %99

99:                                               ; preds = %97
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 6
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %101, align 8
  store %struct.TYPE_19__* %102, %struct.TYPE_19__** %7, align 8
  br label %78

103:                                              ; preds = %84
  br label %106

104:                                              ; preds = %2
  %105 = load i64, i64* @CURLE_BAD_FUNCTION_ARGUMENT, align 8
  store i64 %105, i64* %8, align 8
  br label %106

106:                                              ; preds = %104, %103, %39, %38, %17, %16
  %107 = load i64, i64* %8, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %135, label %109

109:                                              ; preds = %106
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %109
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = call %struct.curl_slist* @Curl_slist_duplicate(i64 %117)
  store %struct.curl_slist* %118, %struct.curl_slist** %9, align 8
  %119 = load %struct.curl_slist*, %struct.curl_slist** %9, align 8
  %120 = icmp ne %struct.curl_slist* %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %114
  %122 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %122, i64* %8, align 8
  br label %134

123:                                              ; preds = %114
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %125 = load %struct.curl_slist*, %struct.curl_slist** %9, align 8
  %126 = load i32, i32* @TRUE, align 4
  %127 = call i64 @curl_mime_headers(%struct.TYPE_19__* %124, %struct.curl_slist* %125, i32 %126)
  store i64 %127, i64* %8, align 8
  %128 = load i64, i64* %8, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load %struct.curl_slist*, %struct.curl_slist** %9, align 8
  %132 = call i32 @curl_slist_free_all(%struct.curl_slist* %131)
  br label %133

133:                                              ; preds = %130, %123
  br label %134

134:                                              ; preds = %133, %121
  br label %135

135:                                              ; preds = %134, %109, %106
  %136 = load i64, i64* %8, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %135
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @curl_mime_type(%struct.TYPE_19__* %144, i32 %147)
  store i64 %148, i64* %8, align 8
  br label %149

149:                                              ; preds = %138, %135
  %150 = load i64, i64* %8, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %149
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @curl_mime_name(%struct.TYPE_19__* %153, i32 %156)
  store i64 %157, i64* %8, align 8
  br label %158

158:                                              ; preds = %152, %149
  %159 = load i64, i64* %8, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %158
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i64 @curl_mime_filename(%struct.TYPE_19__* %162, i32 %165)
  store i64 %166, i64* %8, align 8
  br label %167

167:                                              ; preds = %161, %158
  %168 = load i64, i64* %8, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %172 = call i32 @Curl_mime_cleanpart(%struct.TYPE_19__* %171)
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i64, i64* %8, align 8
  ret i64 %174
}

declare dso_local i32 @DEBUGASSERT(%struct.TYPE_19__*) #1

declare dso_local i64 @curl_mime_data(%struct.TYPE_19__*, i32, i64) #1

declare dso_local i64 @curl_mime_filedata(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @curl_mime_data_cb(%struct.TYPE_19__*, i32, i32, i32, i32, i64) #1

declare dso_local %struct.TYPE_20__* @curl_mime_init(i32) #1

declare dso_local i64 @curl_mime_subparts(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @curl_mime_addpart(%struct.TYPE_20__*) #1

declare dso_local %struct.curl_slist* @Curl_slist_duplicate(i64) #1

declare dso_local i64 @curl_mime_headers(%struct.TYPE_19__*, %struct.curl_slist*, i32) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

declare dso_local i64 @curl_mime_type(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @curl_mime_name(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @curl_mime_filename(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @Curl_mime_cleanpart(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
