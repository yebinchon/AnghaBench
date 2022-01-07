; ModuleID = '/home/carl/AnghaBench/disque/src/extr_anet.c_anetPeerToString.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_anet.c_anetPeerToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@AF_UNIX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"/unixsocket\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @anetPeerToString(i32 %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sockaddr_storage, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 8, i32* %11, align 4
  %14 = load i32, i32* %6, align 4
  %15 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr*
  %16 = call i32 @getpeername(i32 %14, %struct.sockaddr* %15, i32* %11)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %99

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %99

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %10, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AF_INET, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %23
  %29 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %29, %struct.sockaddr_in** %12, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i64, i64* @AF_INET, align 8
  %34 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %34, i32 0, i32 1
  %36 = bitcast i32* %35 to i8*
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @inet_ntop(i64 %33, i8* %36, i8* %37, i64 %38)
  br label %40

40:                                               ; preds = %32, %28
  %41 = load i32*, i32** %9, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ntohs(i32 %46)
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %40
  br label %98

50:                                               ; preds = %23
  %51 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %10, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AF_INET6, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %50
  %56 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %56, %struct.sockaddr_in6** %13, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i64, i64* @AF_INET6, align 8
  %61 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %62 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %61, i32 0, i32 1
  %63 = bitcast i32* %62 to i8*
  %64 = load i8*, i8** %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @inet_ntop(i64 %60, i8* %63, i8* %64, i64 %65)
  br label %67

67:                                               ; preds = %59, %55
  %68 = load i32*, i32** %9, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %72 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ntohs(i32 %73)
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %70, %67
  br label %97

77:                                               ; preds = %50
  %78 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %10, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AF_UNIX, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load i8*, i8** %7, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @strncpy(i8* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %87)
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i32*, i32** %9, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32*, i32** %9, align 8
  store i32 0, i32* %93, align 4
  br label %94

94:                                               ; preds = %92, %89
  br label %96

95:                                               ; preds = %77
  br label %99

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96, %76
  br label %98

98:                                               ; preds = %97, %49
  store i32 0, i32* %5, align 4
  br label %124

99:                                               ; preds = %95, %22, %18
  %100 = load i8*, i8** %7, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %118

102:                                              ; preds = %99
  %103 = load i64, i64* %8, align 8
  %104 = icmp uge i64 %103, 2
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  store i8 63, i8* %107, align 1
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  store i8 0, i8* %109, align 1
  br label %117

110:                                              ; preds = %102
  %111 = load i64, i64* %8, align 8
  %112 = icmp eq i64 %111, 1
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  store i8 0, i8* %115, align 1
  br label %116

116:                                              ; preds = %113, %110
  br label %117

117:                                              ; preds = %116, %105
  br label %118

118:                                              ; preds = %117, %99
  %119 = load i32*, i32** %9, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32*, i32** %9, align 8
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %121, %118
  store i32 -1, i32* %5, align 4
  br label %124

124:                                              ; preds = %123, %98
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @inet_ntop(i64, i8*, i8*, i64) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
