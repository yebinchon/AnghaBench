; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_parse_result.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_parse_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.necp_sockaddr_union = type { i32 }
%struct.necp_client_endpoint = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %union.necp_sockaddr_union*, %union.necp_sockaddr_union*, i8**)* @necp_client_parse_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_client_parse_result(i32* %0, i64 %1, %union.necp_sockaddr_union* %2, %union.necp_sockaddr_union* %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.necp_sockaddr_union*, align 8
  %9 = alloca %union.necp_sockaddr_union*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.necp_client_endpoint*, align 8
  %17 = alloca %struct.necp_client_endpoint*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %union.necp_sockaddr_union* %2, %union.necp_sockaddr_union** %8, align 8
  store %union.necp_sockaddr_union* %3, %union.necp_sockaddr_union** %9, align 8
  store i8** %4, i8*** %10, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %18

18:                                               ; preds = %106, %5
  %19 = load i64, i64* %12, align 8
  %20 = add i64 %19, 4
  %21 = load i64, i64* %7, align 8
  %22 = icmp ule i64 %20, %21
  br i1 %22, label %23, label %111

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i32 @necp_buffer_get_tlv_type(i32* %24, i64 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %12, align 8
  %29 = call i64 @necp_buffer_get_tlv_length(i32* %27, i64 %28)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %106

32:                                               ; preds = %23
  %33 = load i64, i64* %12, align 8
  %34 = add i64 %33, 4
  %35 = load i64, i64* %14, align 8
  %36 = add i64 %34, %35
  %37 = load i64, i64* %7, align 8
  %38 = icmp ule i64 %36, %37
  br i1 %38, label %39, label %106

39:                                               ; preds = %32
  %40 = load i32*, i32** %6, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32* @necp_buffer_get_tlv_value(i32* %40, i64 %41, i32* null)
  store i32* %42, i32** %15, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %105

45:                                               ; preds = %39
  %46 = load i32, i32* %13, align 4
  switch i32 %46, label %103 [
    i32 129, label %47
    i32 128, label %75
  ]

47:                                               ; preds = %45
  %48 = load i64, i64* %14, align 8
  %49 = icmp uge i64 %48, 4
  br i1 %49, label %50, label %74

50:                                               ; preds = %47
  %51 = load i32*, i32** %15, align 8
  %52 = bitcast i32* %51 to i8*
  %53 = bitcast i8* %52 to %struct.necp_client_endpoint*
  store %struct.necp_client_endpoint* %53, %struct.necp_client_endpoint** %16, align 8
  %54 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %8, align 8
  %55 = icmp ne %union.necp_sockaddr_union* %54, null
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load %struct.necp_client_endpoint*, %struct.necp_client_endpoint** %16, align 8
  %58 = getelementptr inbounds %struct.necp_client_endpoint, %struct.necp_client_endpoint* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call i32 @necp_client_address_is_valid(%struct.TYPE_5__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %8, align 8
  %64 = load %struct.necp_client_endpoint*, %struct.necp_client_endpoint** %16, align 8
  %65 = getelementptr inbounds %struct.necp_client_endpoint, %struct.necp_client_endpoint* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.necp_client_endpoint*, %struct.necp_client_endpoint** %16, align 8
  %68 = getelementptr inbounds %struct.necp_client_endpoint, %struct.necp_client_endpoint* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @memcpy(%union.necp_sockaddr_union* %63, %struct.TYPE_5__* %66, i32 %71)
  br label %73

73:                                               ; preds = %62, %56, %50
  br label %74

74:                                               ; preds = %73, %47
  br label %104

75:                                               ; preds = %45
  %76 = load i64, i64* %14, align 8
  %77 = icmp uge i64 %76, 4
  br i1 %77, label %78, label %102

78:                                               ; preds = %75
  %79 = load i32*, i32** %15, align 8
  %80 = bitcast i32* %79 to i8*
  %81 = bitcast i8* %80 to %struct.necp_client_endpoint*
  store %struct.necp_client_endpoint* %81, %struct.necp_client_endpoint** %17, align 8
  %82 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %9, align 8
  %83 = icmp ne %union.necp_sockaddr_union* %82, null
  br i1 %83, label %84, label %101

84:                                               ; preds = %78
  %85 = load %struct.necp_client_endpoint*, %struct.necp_client_endpoint** %17, align 8
  %86 = getelementptr inbounds %struct.necp_client_endpoint, %struct.necp_client_endpoint* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 @necp_client_address_is_valid(%struct.TYPE_5__* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %84
  %91 = load %union.necp_sockaddr_union*, %union.necp_sockaddr_union** %9, align 8
  %92 = load %struct.necp_client_endpoint*, %struct.necp_client_endpoint** %17, align 8
  %93 = getelementptr inbounds %struct.necp_client_endpoint, %struct.necp_client_endpoint* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load %struct.necp_client_endpoint*, %struct.necp_client_endpoint** %17, align 8
  %96 = getelementptr inbounds %struct.necp_client_endpoint, %struct.necp_client_endpoint* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @memcpy(%union.necp_sockaddr_union* %91, %struct.TYPE_5__* %94, i32 %99)
  br label %101

101:                                              ; preds = %90, %84, %78
  br label %102

102:                                              ; preds = %101, %75
  br label %104

103:                                              ; preds = %45
  br label %104

104:                                              ; preds = %103, %102, %74
  br label %105

105:                                              ; preds = %104, %39
  br label %106

106:                                              ; preds = %105, %32, %23
  %107 = load i64, i64* %14, align 8
  %108 = add i64 4, %107
  %109 = load i64, i64* %12, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %12, align 8
  br label %18

111:                                              ; preds = %18
  %112 = load i32, i32* %11, align 4
  ret i32 %112
}

declare dso_local i32 @necp_buffer_get_tlv_type(i32*, i64) #1

declare dso_local i64 @necp_buffer_get_tlv_length(i32*, i64) #1

declare dso_local i32* @necp_buffer_get_tlv_value(i32*, i64, i32*) #1

declare dso_local i32 @necp_client_address_is_valid(%struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(%union.necp_sockaddr_union*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
