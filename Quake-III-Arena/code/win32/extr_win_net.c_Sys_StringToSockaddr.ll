; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_Sys_StringToSockaddr.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_Sys_StringToSockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.hostent = type { i64* }
%struct.sockaddr_ipx = type { i64, i32 }
%struct.sockaddr_in = type { i32, i64, i32 }

@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@AF_IPX = common dso_local global i32 0, align 4
@sa_netnum = common dso_local global i32* null, align 8
@sa_nodenum = common dso_local global i32* null, align 8
@AF_INET = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sys_StringToSockaddr(i8* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %11 = load i32, i32* @MAX_STRING_CHARS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %16 = call i32 @memset(%struct.sockaddr* %15, i32 0, i32 4)
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = icmp eq i32 %18, 21
  br i1 %19, label %20, label %75

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 46
  br i1 %25, label %26, label %75

26:                                               ; preds = %20
  %27 = load i32, i32* @AF_IPX, align 4
  %28 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %29 = bitcast %struct.sockaddr* %28 to %struct.sockaddr_ipx*
  %30 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %32 = bitcast %struct.sockaddr* %31 to %struct.sockaddr_ipx*
  %33 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds i8, i8* %14, i64 2
  store i8 0, i8* %34, align 2
  %35 = load i32*, i32** @sa_netnum, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @DO(i32 0, i32 %37)
  %39 = load i32*, i32** @sa_netnum, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @DO(i32 2, i32 %41)
  %43 = load i32*, i32** @sa_netnum, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DO(i32 4, i32 %45)
  %47 = load i32*, i32** @sa_netnum, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DO(i32 6, i32 %49)
  %51 = load i32*, i32** @sa_nodenum, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @DO(i32 9, i32 %53)
  %55 = load i32*, i32** @sa_nodenum, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @DO(i32 11, i32 %57)
  %59 = load i32*, i32** @sa_nodenum, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @DO(i32 13, i32 %61)
  %63 = load i32*, i32** @sa_nodenum, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @DO(i32 15, i32 %65)
  %67 = load i32*, i32** @sa_nodenum, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @DO(i32 17, i32 %69)
  %71 = load i32*, i32** @sa_nodenum, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @DO(i32 19, i32 %73)
  br label %117

75:                                               ; preds = %20, %2
  %76 = load i32, i32* @AF_INET, align 4
  %77 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %78 = bitcast %struct.sockaddr* %77 to %struct.sockaddr_in*
  %79 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 8
  %80 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %81 = bitcast %struct.sockaddr* %80 to %struct.sockaddr_in*
  %82 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp sge i32 %86, 48
  br i1 %87, label %88, label %100

88:                                               ; preds = %75
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp sle i32 %92, 57
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @inet_addr(i8* %95)
  %97 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %98 = bitcast %struct.sockaddr* %97 to %struct.sockaddr_in*
  %99 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  br label %116

100:                                              ; preds = %88, %75
  %101 = load i8*, i8** %4, align 8
  %102 = call %struct.hostent* @gethostbyname(i8* %101)
  store %struct.hostent* %102, %struct.hostent** %6, align 8
  %103 = icmp eq %struct.hostent* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %119

105:                                              ; preds = %100
  %106 = load %struct.hostent*, %struct.hostent** %6, align 8
  %107 = getelementptr inbounds %struct.hostent, %struct.hostent* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 0
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %114 = bitcast %struct.sockaddr* %113 to %struct.sockaddr_in*
  %115 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  br label %116

116:                                              ; preds = %105, %94
  br label %117

117:                                              ; preds = %116, %26
  %118 = load i32, i32* @qtrue, align 4
  store i32 %118, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %119

119:                                              ; preds = %117, %104
  %120 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.sockaddr*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @DO(i32, i32) #2

declare dso_local i32 @inet_addr(i8*) #2

declare dso_local %struct.hostent* @gethostbyname(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
