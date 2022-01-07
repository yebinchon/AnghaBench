; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_connecthostport.c_connecthostport.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_connecthostport.c_connecthostport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, %struct.sockaddr*, i32, i32, i32, %struct.addrinfo*, i32 }
%struct.sockaddr = type { i64 }
%struct.sockaddr_in6 = type { i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%25\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"getaddrinfo() error : %s\0A\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@AI_NUMERICSERV = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@SO_RCVTIMEO = common dso_local global i32 0, align 4
@SO_SNDTIMEO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connecthostport(i8* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [8 x i8], align 1
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca %struct.addrinfo*, align 8
  %15 = alloca %struct.addrinfo, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.sockaddr_in6*, align 8
  store i8* %0, i8** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = call i32 @memset(%struct.addrinfo* %15, i32 0, i32 48)
  %26 = load i32, i32* @SOCK_STREAM, align 4
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @AF_UNSPEC, align 4
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %31 = load i16, i16* %6, align 2
  %32 = call i32 @snprintf(i8* %30, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i16 zeroext %31)
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 91
  br i1 %37, label %38, label %89

38:                                               ; preds = %3
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %39

39:                                               ; preds = %80, %38
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %39
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %17, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 93
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %58 = icmp slt i32 %56, %57
  br label %59

59:                                               ; preds = %55, %47, %39
  %60 = phi i1 [ false, %47 ], [ false, %39 ], [ %58, %55 ]
  br i1 %60, label %61, label %85

61:                                               ; preds = %59
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %24, i64 %68
  store i8 %66, i8* %69, align 1
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = call i64 @memcmp(i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %75 = icmp eq i64 0, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %61
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, 2
  store i32 %78, i32* %17, align 4
  br label %79

79:                                               ; preds = %76, %61
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %17, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %17, align 4
  br label %39

85:                                               ; preds = %59
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %24, i64 %87
  store i8 0, i8* %88, align 1
  br label %93

89:                                               ; preds = %3
  %90 = load i8*, i8** %5, align 8
  %91 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %92 = call i32 @strncpy(i8* %24, i8* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %85
  %94 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %24, i64 %95
  store i8 0, i8* %96, align 1
  %97 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %98 = call i32 @getaddrinfo_retro(i8* %24, i8* %97, %struct.addrinfo* %15, %struct.addrinfo** %13)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load i32, i32* @stderr, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i8* @gai_strerror(i32 %103)
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %104)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %175

106:                                              ; preds = %93
  store i32 -1, i32* %8, align 4
  %107 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  store %struct.addrinfo* %107, %struct.addrinfo** %14, align 8
  br label %108

108:                                              ; preds = %159, %106
  %109 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %110 = icmp ne %struct.addrinfo* %109, null
  br i1 %110, label %111, label %163

111:                                              ; preds = %108
  %112 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %113 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %116 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %119 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @socket(i32 %114, i32 %117, i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %111
  br label %159

125:                                              ; preds = %111
  %126 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %127 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %126, i32 0, i32 1
  %128 = load %struct.sockaddr*, %struct.sockaddr** %127, align 8
  %129 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @AF_INET6, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %125
  %134 = load i32, i32* %7, align 4
  %135 = icmp ugt i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %138 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %137, i32 0, i32 1
  %139 = load %struct.sockaddr*, %struct.sockaddr** %138, align 8
  %140 = bitcast %struct.sockaddr* %139 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %140, %struct.sockaddr_in6** %19, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %19, align 8
  %143 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %136, %133, %125
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %147 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %146, i32 0, i32 1
  %148 = load %struct.sockaddr*, %struct.sockaddr** %147, align 8
  %149 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %150 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @connect(i32 %145, %struct.sockaddr* %148, i32 %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %144
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @closesocket(i32 %156)
  br label %159

158:                                              ; preds = %144
  br label %163

159:                                              ; preds = %155, %124
  %160 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %161 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %160, i32 0, i32 5
  %162 = load %struct.addrinfo*, %struct.addrinfo** %161, align 8
  store %struct.addrinfo* %162, %struct.addrinfo** %14, align 8
  br label %108

163:                                              ; preds = %158, %108
  %164 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %165 = call i32 @freeaddrinfo(%struct.addrinfo* %164)
  %166 = load i32, i32* %8, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %175

169:                                              ; preds = %163
  %170 = load i32, i32* %9, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %175

173:                                              ; preds = %169
  %174 = load i32, i32* %8, align 4
  store i32 %174, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %175

175:                                              ; preds = %173, %172, %168, %101
  %176 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i16 zeroext) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @getaddrinfo_retro(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gai_strerror(i32) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @closesocket(i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
