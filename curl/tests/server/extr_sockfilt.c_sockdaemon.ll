; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_sockfilt.c_sockdaemon.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_sockfilt.c_sockdaemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i8*, i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@SOCKERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"setsockopt(SO_REUSEADDR) failed with error: (%d) %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"wait_ms() failed with error: (%d) %s\00", align 1
@CURL_SOCKET_BAD = common dso_local global i16 0, align 2
@got_exit_signal = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"signalled to die, exiting...\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"setsockopt(SO_REUSEADDR) failed %d times in %d ms. Error: (%d) %s\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Continuing anyway...\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Error binding socket on port %hu: (%d) %s\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"getsockname() failed with error: (%d) %s\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"Apparently getsockname() succeeded, with listener port zero.\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"A valid reason for this failure is a binary built without\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"proper network library linkage. This might not be the only\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"reason, but double check it before anything else.\00", align 1
@bind_only = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [42 x i8] c"instructed to bind port without listening\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"listen(%d, 5) failed with error: (%d) %s\00", align 1
@in6addr_any = common dso_local global i32 0, align 4
@use_ipv6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i16, i16*)* @sockdaemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @sockdaemon(i16 zeroext %0, i16* %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16*, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__, align 8
  store i16 %0, i16* %4, align 2
  store i16* %1, i16** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 10, i32* %10, align 4
  store i32 20, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %71, %2
  %17 = load i32, i32* %12, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %12, align 4
  store i32 1, i32* %7, align 4
  %19 = load i16, i16* %4, align 2
  %20 = load i32, i32* @SOL_SOCKET, align 4
  %21 = load i32, i32* @SO_REUSEADDR, align 4
  %22 = bitcast i32* %7 to i8*
  %23 = call i32 @setsockopt(i16 zeroext %19, i32 %20, i32 %21, i8* %22, i32 4)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %16
  %27 = load i32, i32* @SOCKERRNO, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %26
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @wait_ms(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i32, i32* @errno, align 4
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %43)
  %45 = load i16, i16* %4, align 2
  %46 = call i32 @sclose(i16 zeroext %45)
  %47 = load i16, i16* @CURL_SOCKET_BAD, align 2
  store i16 %47, i16* %3, align 2
  br label %185

48:                                               ; preds = %34
  %49 = load i64, i64* @got_exit_signal, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i16, i16* %4, align 2
  %54 = call i32 @sclose(i16 zeroext %53)
  %55 = load i16, i16* @CURL_SOCKET_BAD, align 2
  store i16 %55, i16* %3, align 2
  br label %185

56:                                               ; preds = %48
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 %60, 2
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %56, %26
  br label %63

63:                                               ; preds = %62, %16
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %10, align 4
  %70 = icmp ne i32 %68, 0
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi i1 [ false, %64 ], [ %70, %67 ]
  br i1 %72, label %16, label %73

73:                                               ; preds = %71
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @strerror(i32 %80)
  %82 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %78, i32 %79, i32 %81)
  %83 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %84

84:                                               ; preds = %76, %73
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %86 = call i32 @memset(%struct.TYPE_8__* %85, i32 0, i64 40)
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 129, i32* %88, align 8
  %89 = load i32, i32* @INADDR_ANY, align 4
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  %93 = load i16*, i16** %5, align 8
  %94 = load i16, i16* %93, align 2
  %95 = call i8* @htons(i16 zeroext %94)
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  %98 = load i16, i16* %4, align 2
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %100 = call i32 @bind(i16 zeroext %98, %struct.TYPE_8__* %99, i32 40)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %84
  %104 = load i32, i32* @SOCKERRNO, align 4
  store i32 %104, i32* %13, align 4
  %105 = load i16*, i16** %5, align 8
  %106 = load i16, i16* %105, align 2
  %107 = zext i16 %106 to i32
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @strerror(i32 %109)
  %111 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %107, i32 %108, i32 %110)
  %112 = load i16, i16* %4, align 2
  %113 = call i32 @sclose(i16 zeroext %112)
  %114 = load i16, i16* @CURL_SOCKET_BAD, align 2
  store i16 %114, i16* %3, align 2
  br label %185

115:                                              ; preds = %84
  %116 = load i16*, i16** %5, align 8
  %117 = load i16, i16* %116, align 2
  %118 = icmp ne i16 %117, 0
  br i1 %118, label %161, label %119

119:                                              ; preds = %115
  store i32 40, i32* %14, align 4
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = call i32 @memset(%struct.TYPE_8__* %120, i32 0, i64 %122)
  %124 = load i16, i16* %4, align 2
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %126 = call i64 @getsockname(i16 zeroext %124, %struct.TYPE_8__* %125, i32* %14)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %119
  %129 = load i32, i32* @SOCKERRNO, align 4
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @strerror(i32 %131)
  %133 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %130, i32 %132)
  %134 = load i16, i16* %4, align 2
  %135 = call i32 @sclose(i16 zeroext %134)
  %136 = load i16, i16* @CURL_SOCKET_BAD, align 2
  store i16 %136, i16* %3, align 2
  br label %185

137:                                              ; preds = %119
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  switch i32 %140, label %147 [
    i32 129, label %141
  ]

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 4
  %144 = load i8*, i8** %143, align 8
  %145 = call zeroext i16 @ntohs(i8* %144)
  %146 = load i16*, i16** %5, align 8
  store i16 %145, i16* %146, align 2
  br label %148

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %147, %141
  %149 = load i16*, i16** %5, align 8
  %150 = load i16, i16* %149, align 2
  %151 = icmp ne i16 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %148
  %153 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0))
  %154 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0))
  %155 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0))
  %156 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  %157 = load i16, i16* %4, align 2
  %158 = call i32 @sclose(i16 zeroext %157)
  %159 = load i16, i16* @CURL_SOCKET_BAD, align 2
  store i16 %159, i16* %3, align 2
  br label %185

160:                                              ; preds = %148
  br label %161

161:                                              ; preds = %160, %115
  %162 = load i64, i64* @bind_only, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %166 = load i16, i16* %4, align 2
  store i16 %166, i16* %3, align 2
  br label %185

167:                                              ; preds = %161
  %168 = load i16, i16* %4, align 2
  %169 = call i32 @listen(i16 zeroext %168, i32 5)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 0, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %167
  %173 = load i32, i32* @SOCKERRNO, align 4
  store i32 %173, i32* %13, align 4
  %174 = load i16, i16* %4, align 2
  %175 = zext i16 %174 to i32
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @strerror(i32 %177)
  %179 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 %175, i32 %176, i32 %178)
  %180 = load i16, i16* %4, align 2
  %181 = call i32 @sclose(i16 zeroext %180)
  %182 = load i16, i16* @CURL_SOCKET_BAD, align 2
  store i16 %182, i16* %3, align 2
  br label %185

183:                                              ; preds = %167
  %184 = load i16, i16* %4, align 2
  store i16 %184, i16* %3, align 2
  br label %185

185:                                              ; preds = %183, %172, %164, %152, %128, %103, %51, %39
  %186 = load i16, i16* %3, align 2
  ret i16 %186
}

declare dso_local i32 @setsockopt(i16 zeroext, i32, i32, i8*, i32) #1

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @sclose(i16 zeroext) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i64) #1

declare dso_local i8* @htons(i16 zeroext) #1

declare dso_local i32 @bind(i16 zeroext, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @getsockname(i16 zeroext, %struct.TYPE_8__*, i32*) #1

declare dso_local zeroext i16 @ntohs(i8*) #1

declare dso_local i32 @listen(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
