; ModuleID = '/home/carl/AnghaBench/RetroArch/network/extr_net_http_special.c_net_http_get.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/extr_net_http_special.c_net_http_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_t = type { i32 }
%struct.http_connection_t = type { i32 }

@NET_HTTP_GET_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@NET_HTTP_GET_MALFORMED_URL = common dso_local global i32 0, align 4
@NET_HTTP_GET_CONNECT_ERROR = common dso_local global i32 0, align 4
@NET_HTTP_GET_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_http_get(i8** %0, i64* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.http_t*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.http_connection_t*, align 8
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32* null, i32** %10, align 8
  store i8* null, i8** %11, align 8
  %16 = load i32, i32* @NET_HTTP_GET_OK, align 4
  store i32 %16, i32* %12, align 4
  store %struct.http_t* null, %struct.http_t** %13, align 8
  %17 = call i64 (...) @cpu_features_get_time_usec()
  store i64 %17, i64* %14, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call %struct.http_connection_t* @net_http_connection_new(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.http_connection_t* %19, %struct.http_connection_t** %15, align 8
  %20 = load i8**, i8*** %5, align 8
  store i8* null, i8** %20, align 8
  %21 = load %struct.http_connection_t*, %struct.http_connection_t** %15, align 8
  %22 = icmp ne %struct.http_connection_t* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %98

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %30, %24
  %26 = load %struct.http_connection_t*, %struct.http_connection_t** %15, align 8
  %27 = call i32 @net_http_connection_iterate(%struct.http_connection_t* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %25

31:                                               ; preds = %25
  %32 = load %struct.http_connection_t*, %struct.http_connection_t** %15, align 8
  %33 = call i32 @net_http_connection_done(%struct.http_connection_t* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @NET_HTTP_GET_MALFORMED_URL, align 4
  store i32 %36, i32* %12, align 4
  br label %98

37:                                               ; preds = %31
  %38 = load %struct.http_connection_t*, %struct.http_connection_t** %15, align 8
  %39 = call %struct.http_t* @net_http_new(%struct.http_connection_t* %38)
  store %struct.http_t* %39, %struct.http_t** %13, align 8
  %40 = load %struct.http_t*, %struct.http_t** %13, align 8
  %41 = icmp ne %struct.http_t* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @NET_HTTP_GET_CONNECT_ERROR, align 4
  store i32 %43, i32* %12, align 4
  br label %98

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %62, %44
  %46 = load %struct.http_t*, %struct.http_t** %13, align 8
  %47 = call i32 @net_http_update(%struct.http_t* %46, i32* null, i32* null)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load i64*, i64** %8, align 8
  %52 = icmp ne i64* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = call i64 (...) @cpu_features_get_time_usec()
  %55 = load i64, i64* %14, align 8
  %56 = sub nsw i64 %54, %55
  %57 = load i64*, i64** %8, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %56, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @NET_HTTP_GET_TIMEOUT, align 4
  store i32 %61, i32* %12, align 4
  br label %98

62:                                               ; preds = %53, %50
  br label %45

63:                                               ; preds = %45
  %64 = load %struct.http_t*, %struct.http_t** %13, align 8
  %65 = call i32* @net_http_data(%struct.http_t* %64, i64* %9, i32 0)
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %89

68:                                               ; preds = %63
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, 1
  %71 = call i64 @malloc(i64 %70)
  %72 = inttoptr i64 %71 to i8*
  store i8* %72, i8** %11, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  br label %98

76:                                               ; preds = %68
  %77 = load i8*, i8** %11, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = bitcast i32* %78 to i8*
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @memcpy(i8* %77, i8* %79, i64 %80)
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @free(i32* %82)
  %84 = load i8*, i8** %11, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8 0, i8* %86, align 1
  %87 = load i8*, i8** %11, align 8
  %88 = load i8**, i8*** %5, align 8
  store i8* %87, i8** %88, align 8
  br label %91

89:                                               ; preds = %63
  store i64 0, i64* %9, align 8
  %90 = load i8**, i8*** %5, align 8
  store i8* null, i8** %90, align 8
  br label %91

91:                                               ; preds = %89, %76
  %92 = load i64*, i64** %6, align 8
  %93 = icmp ne i64* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i64, i64* %9, align 8
  %96 = load i64*, i64** %6, align 8
  store i64 %95, i64* %96, align 8
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %75, %60, %42, %35, %23
  %99 = load %struct.http_t*, %struct.http_t** %13, align 8
  %100 = icmp ne %struct.http_t* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.http_t*, %struct.http_t** %13, align 8
  %103 = call i32 @net_http_delete(%struct.http_t* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.http_connection_t*, %struct.http_connection_t** %15, align 8
  %106 = icmp ne %struct.http_connection_t* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.http_connection_t*, %struct.http_connection_t** %15, align 8
  %109 = call i32 @net_http_connection_free(%struct.http_connection_t* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i64*, i64** %8, align 8
  %112 = icmp ne i64* %111, null
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  %114 = call i64 (...) @cpu_features_get_time_usec()
  %115 = load i64, i64* %14, align 8
  %116 = sub nsw i64 %114, %115
  store i64 %116, i64* %14, align 8
  %117 = load i64, i64* %14, align 8
  %118 = load i64*, i64** %8, align 8
  %119 = load i64, i64* %118, align 8
  %120 = icmp slt i64 %117, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %113
  %122 = load i64, i64* %14, align 8
  %123 = load i64*, i64** %8, align 8
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %124, %122
  store i64 %125, i64* %123, align 8
  br label %128

126:                                              ; preds = %113
  %127 = load i64*, i64** %8, align 8
  store i64 0, i64* %127, align 8
  br label %128

128:                                              ; preds = %126, %121
  br label %129

129:                                              ; preds = %128, %110
  %130 = load i32, i32* %12, align 4
  ret i32 %130
}

declare dso_local i64 @cpu_features_get_time_usec(...) #1

declare dso_local %struct.http_connection_t* @net_http_connection_new(i8*, i8*, i32*) #1

declare dso_local i32 @net_http_connection_iterate(%struct.http_connection_t*) #1

declare dso_local i32 @net_http_connection_done(%struct.http_connection_t*) #1

declare dso_local %struct.http_t* @net_http_new(%struct.http_connection_t*) #1

declare dso_local i32 @net_http_update(%struct.http_t*, i32*, i32*) #1

declare dso_local i32* @net_http_data(%struct.http_t*, i64*, i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @net_http_delete(%struct.http_t*) #1

declare dso_local i32 @net_http_connection_free(%struct.http_connection_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
