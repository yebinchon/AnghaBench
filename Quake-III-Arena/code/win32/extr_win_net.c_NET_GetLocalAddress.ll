; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NET_GetLocalAddress.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NET_GetLocalAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8**, i64, i8**, i32 }

@SOCKET_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Hostname: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Alias: %s\0A\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@numIP = common dso_local global i64 0, align 8
@MAX_IPS = common dso_local global i64 0, align 8
@localIP = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"IP: %i.%i.%i.%i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NET_GetLocalAddress() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca %struct.hostent*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %8 = call i64 @gethostname(i8* %7, i32 256)
  %9 = load i64, i64* @SOCKET_ERROR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 (...) @WSAGetLastError()
  store i32 %12, i32* %3, align 4
  br label %111

13:                                               ; preds = %0
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %15 = call %struct.hostent* @gethostbyname(i8* %14)
  store %struct.hostent* %15, %struct.hostent** %2, align 8
  %16 = load %struct.hostent*, %struct.hostent** %2, align 8
  %17 = icmp ne %struct.hostent* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 (...) @WSAGetLastError()
  store i32 %19, i32* %3, align 4
  br label %111

20:                                               ; preds = %13
  %21 = load %struct.hostent*, %struct.hostent** %2, align 8
  %22 = getelementptr inbounds %struct.hostent, %struct.hostent* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %35, %20
  %26 = load %struct.hostent*, %struct.hostent** %2, align 8
  %27 = getelementptr inbounds %struct.hostent, %struct.hostent* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8*, i8** %28, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %25

38:                                               ; preds = %25
  %39 = load %struct.hostent*, %struct.hostent** %2, align 8
  %40 = getelementptr inbounds %struct.hostent, %struct.hostent* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AF_INET, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %111

45:                                               ; preds = %38
  store i64 0, i64* @numIP, align 8
  br label %46

46:                                               ; preds = %60, %45
  %47 = load %struct.hostent*, %struct.hostent** %2, align 8
  %48 = getelementptr inbounds %struct.hostent, %struct.hostent* %47, i32 0, i32 2
  %49 = load i8**, i8*** %48, align 8
  %50 = load i64, i64* @numIP, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %4, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i64, i64* @numIP, align 8
  %56 = load i64, i64* @MAX_IPS, align 8
  %57 = icmp ult i64 %55, %56
  br label %58

58:                                               ; preds = %54, %46
  %59 = phi i1 [ false, %46 ], [ %57, %54 ]
  br i1 %59, label %60, label %111

60:                                               ; preds = %58
  %61 = load i8*, i8** %4, align 8
  %62 = bitcast i8* %61 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ntohl(i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = load i8**, i8*** @localIP, align 8
  %69 = load i64, i64* @numIP, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  store i8 %67, i8* %72, align 1
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = load i8**, i8*** @localIP, align 8
  %77 = load i64, i64* @numIP, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8 %75, i8* %80, align 1
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  %83 = load i8, i8* %82, align 1
  %84 = load i8**, i8*** @localIP, align 8
  %85 = load i64, i64* @numIP, align 8
  %86 = getelementptr inbounds i8*, i8** %84, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  store i8 %83, i8* %88, align 1
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 3
  %91 = load i8, i8* %90, align 1
  %92 = load i8**, i8*** @localIP, align 8
  %93 = load i64, i64* @numIP, align 8
  %94 = getelementptr inbounds i8*, i8** %92, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 3
  store i8 %91, i8* %96, align 1
  %97 = load i32, i32* %5, align 4
  %98 = ashr i32 %97, 24
  %99 = and i32 %98, 255
  %100 = load i32, i32* %5, align 4
  %101 = ashr i32 %100, 16
  %102 = and i32 %101, 255
  %103 = load i32, i32* %5, align 4
  %104 = ashr i32 %103, 8
  %105 = and i32 %104, 255
  %106 = load i32, i32* %5, align 4
  %107 = and i32 %106, 255
  %108 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %102, i32 %105, i32 %107)
  %109 = load i64, i64* @numIP, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* @numIP, align 8
  br label %46

111:                                              ; preds = %11, %18, %44, %58
  ret void
}

declare dso_local i64 @gethostname(i8*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
