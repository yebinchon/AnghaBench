; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_curl_addrinfo.c_Curl_he2ai.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_curl_addrinfo.c_Curl_he2ai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8*, i64, i32, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.hostent = type { i8**, i64, i32* }
%struct.sockaddr_in = type { i8*, i8*, i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @Curl_he2ai(%struct.hostent* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.hostent* %0, %struct.hostent** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  %14 = load i64, i64* @CURLE_OK, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.hostent*, %struct.hostent** %4, align 8
  %16 = icmp ne %struct.hostent* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %140

18:                                               ; preds = %2
  %19 = load %struct.hostent*, %struct.hostent** %4, align 8
  %20 = getelementptr inbounds %struct.hostent, %struct.hostent* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.hostent*, %struct.hostent** %4, align 8
  %25 = getelementptr inbounds %struct.hostent, %struct.hostent* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = icmp ne i8** %26, null
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ false, %18 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @DEBUGASSERT(i32 %30)
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %129, %28
  %33 = load %struct.hostent*, %struct.hostent** %4, align 8
  %34 = getelementptr inbounds %struct.hostent, %struct.hostent* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %12, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %132

41:                                               ; preds = %32
  store i64 24, i64* %13, align 8
  %42 = call i8* @calloc(i32 1, i64 48)
  %43 = bitcast i8* %42 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %6, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = icmp ne %struct.TYPE_6__* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %47, i64* %10, align 8
  br label %132

48:                                               ; preds = %41
  %49 = load %struct.hostent*, %struct.hostent** %4, align 8
  %50 = getelementptr inbounds %struct.hostent, %struct.hostent* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = call %struct.TYPE_6__* @strdup(i32* %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 5
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = icmp ne %struct.TYPE_6__* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %48
  %60 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %60, i64* %10, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = call i32 @free(%struct.TYPE_6__* %61)
  br label %132

63:                                               ; preds = %48
  %64 = load i64, i64* %13, align 8
  %65 = call i8* @calloc(i32 1, i64 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %63
  %73 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %73, i64* %10, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = call i32 @free(%struct.TYPE_6__* %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = call i32 @free(%struct.TYPE_6__* %78)
  br label %132

80:                                               ; preds = %63
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = icmp ne %struct.TYPE_6__* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %8, align 8
  br label %85

85:                                               ; preds = %83, %80
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = icmp ne %struct.TYPE_6__* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  store %struct.TYPE_6__* %89, %struct.TYPE_6__** %91, align 8
  br label %92

92:                                               ; preds = %88, %85
  %93 = load %struct.hostent*, %struct.hostent** %4, align 8
  %94 = getelementptr inbounds %struct.hostent, %struct.hostent* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load i32, i32* @SOCK_STREAM, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 8
  %101 = load i64, i64* %13, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  switch i64 %106, label %127 [
    i64 129, label %107
  ]

107:                                              ; preds = %92
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = bitcast i8* %110 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %111, %struct.sockaddr_in** %9, align 8
  %112 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %113 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %112, i32 0, i32 2
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 @memcpy(i32* %113, i8* %114, i32 4)
  %116 = load %struct.hostent*, %struct.hostent** %4, align 8
  %117 = getelementptr inbounds %struct.hostent, %struct.hostent* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %121 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* %5, align 4
  %123 = trunc i32 %122 to i16
  %124 = call i8* @htons(i16 zeroext %123)
  %125 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %126 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %92, %107
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %128, %struct.TYPE_6__** %7, align 8
  br label %129

129:                                              ; preds = %127
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %32

132:                                              ; preds = %72, %59, %46, %32
  %133 = load i64, i64* %10, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %137 = call i32 @Curl_freeaddrinfo(%struct.TYPE_6__* %136)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  br label %138

138:                                              ; preds = %135, %132
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %139, %struct.TYPE_6__** %3, align 8
  br label %140

140:                                              ; preds = %138, %17
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %141
}

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local %struct.TYPE_6__* @strdup(i32*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i8* @htons(i16 zeroext) #1

declare dso_local i32 @Curl_freeaddrinfo(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
