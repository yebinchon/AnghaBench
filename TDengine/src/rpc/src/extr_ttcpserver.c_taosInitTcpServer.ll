; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_ttcpserver.c_taosInitTcpServer.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_ttcpserver.c_taosInitTcpServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i16, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [24 x i8] c"TCP:%s no enough memory\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"%s failed to init TCP process data mutex, reason:%s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"%s init TCP condition variable failed, reason:%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s failed to create TCP epoll\00", align 1
@PTHREAD_CREATE_JOINABLE = common dso_local global i32 0, align 4
@taosProcessTcpData = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [55 x i8] c"%s failed to create TCP process data thread, reason:%s\00", align 1
@taosAcceptTcpConnection = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [49 x i8] c"%s failed to create TCP accept thread, reason:%s\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"%s TCP server is initialized, ip:%s port:%u numOfThreads:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @taosInitTcpServer(i8* %0, i16 signext %1, i8* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %8, align 8
  store i16 %1, i16* %9, align 2
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %18 = call i64 @malloc(i32 32)
  %19 = inttoptr i64 %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %15, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strcpy(i32 %22, i8* %23)
  %25 = load i16, i16* %9, align 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i16 %25, i16* %27, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @strcpy(i32 %30, i8* %31)
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 48, %37
  %39 = trunc i64 %38 to i32
  %40 = call i64 @malloc(i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_4__*
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = icmp eq %struct.TYPE_4__* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %6
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 (i8*, i8*, ...) @tError(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %49)
  store i8* null, i8** %7, align 8
  br label %161

51:                                               ; preds = %6
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 48, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memset(%struct.TYPE_4__* %54, i32 0, i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %17, align 8
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %132, %51
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %135

67:                                               ; preds = %63
  %68 = load i8*, i8** %12, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 7
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @strcpy(i32 %73, i8* %74)
  %76 = load i8*, i8** %13, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = call i64 @pthread_mutex_init(i32* %80, i32* null)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %67
  %84 = load i8*, i8** %10, align 8
  %85 = load i32, i32* @errno, align 4
  %86 = call i32 @strerror(i32 %85)
  %87 = call i32 (i8*, i8*, ...) @tError(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %84, i32 %86)
  store i8* null, i8** %7, align 8
  br label %161

88:                                               ; preds = %67
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = call i64 @pthread_cond_init(i32* %90, i32* null)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i8*, i8** %10, align 8
  %95 = load i32, i32* @errno, align 4
  %96 = call i32 @strerror(i32 %95)
  %97 = call i32 (i8*, i8*, ...) @tError(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %94, i32 %96)
  store i8* null, i8** %7, align 8
  br label %161

98:                                               ; preds = %88
  %99 = call i64 @epoll_create(i32 10)
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 (i8*, i8*, ...) @tError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %107)
  store i8* null, i8** %7, align 8
  br label %161

109:                                              ; preds = %98
  %110 = call i32 @pthread_attr_init(i32* %16)
  %111 = load i32, i32* @PTHREAD_CREATE_JOINABLE, align 4
  %112 = call i32 @pthread_attr_setdetachstate(i32* %16, i32 %111)
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i64, i64* @taosProcessTcpData, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %118 = bitcast %struct.TYPE_4__* %117 to i8*
  %119 = call i64 @pthread_create(i32* %114, i32* %16, i8* %116, i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %109
  %122 = load i8*, i8** %10, align 8
  %123 = load i32, i32* @errno, align 4
  %124 = call i32 @strerror(i32 %123)
  %125 = call i32 (i8*, i8*, ...) @tError(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i8* %122, i32 %124)
  store i8* null, i8** %7, align 8
  br label %161

126:                                              ; preds = %109
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 1
  store %struct.TYPE_4__* %131, %struct.TYPE_4__** %17, align 8
  br label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %14, align 4
  br label %63

135:                                              ; preds = %63
  %136 = call i32 @pthread_attr_init(i32* %16)
  %137 = load i32, i32* @PTHREAD_CREATE_JOINABLE, align 4
  %138 = call i32 @pthread_attr_setdetachstate(i32* %16, i32 %137)
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  %141 = load i64, i64* @taosAcceptTcpConnection, align 8
  %142 = inttoptr i64 %141 to i8*
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %144 = bitcast %struct.TYPE_5__* %143 to i8*
  %145 = call i64 @pthread_create(i32* %140, i32* %16, i8* %142, i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %135
  %148 = load i8*, i8** %10, align 8
  %149 = load i32, i32* @errno, align 4
  %150 = call i32 @strerror(i32 %149)
  %151 = call i32 (i8*, i8*, ...) @tError(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* %148, i32 %150)
  store i8* null, i8** %7, align 8
  br label %161

152:                                              ; preds = %135
  %153 = call i32 @pthread_attr_destroy(i32* %16)
  %154 = load i8*, i8** %10, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = load i16, i16* %9, align 2
  %157 = load i32, i32* %11, align 4
  %158 = call i32 @tTrace(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i8* %154, i8* %155, i16 signext %156, i32 %157)
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %160 = bitcast %struct.TYPE_5__* %159 to i8*
  store i8* %160, i8** %7, align 8
  br label %161

161:                                              ; preds = %152, %147, %121, %106, %93, %83, %48
  %162 = load i8*, i8** %7, align 8
  ret i8* %162
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @tError(i8*, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @pthread_cond_init(i32*, i32*) #1

declare dso_local i64 @epoll_create(i32) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

declare dso_local i32 @tTrace(i8*, i8*, i8*, i16 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
