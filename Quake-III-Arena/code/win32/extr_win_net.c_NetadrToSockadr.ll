; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NetadrToSockadr.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NetadrToSockadr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32*, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_ipx = type { i32, %struct.sockaddr*, %struct.sockaddr*, i8* }

@NA_BROADCAST = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i8* null, align 8
@INADDR_BROADCAST = common dso_local global i32 0, align 4
@NA_IP = common dso_local global i64 0, align 8
@NA_IPX = common dso_local global i64 0, align 8
@AF_IPX = common dso_local global i8* null, align 8
@NA_BROADCAST_IPX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NetadrToSockadr(%struct.TYPE_5__* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  %5 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %6 = call i32 @memset(%struct.sockaddr* %5, i32 0, i32 4)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NA_BROADCAST, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load i8*, i8** @AF_INET, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %15 = bitcast %struct.sockaddr* %14 to %struct.sockaddr_in*
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 2
  store i8* %13, i8** %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %21 = bitcast %struct.sockaddr* %20 to %struct.sockaddr_in*
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @INADDR_BROADCAST, align 4
  %24 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %25 = bitcast %struct.sockaddr* %24 to %struct.sockaddr_in*
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  br label %117

28:                                               ; preds = %2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NA_IP, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load i8*, i8** @AF_INET, align 8
  %36 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %37 = bitcast %struct.sockaddr* %36 to %struct.sockaddr_in*
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 2
  store i8* %35, i8** %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %43 = bitcast %struct.sockaddr* %42 to %struct.sockaddr_in*
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %50 = bitcast %struct.sockaddr* %49 to %struct.sockaddr_in*
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  br label %116

52:                                               ; preds = %28
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NA_IPX, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %87

58:                                               ; preds = %52
  %59 = load i8*, i8** @AF_IPX, align 8
  %60 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %61 = bitcast %struct.sockaddr* %60 to %struct.sockaddr_ipx*
  %62 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %61, i32 0, i32 3
  store i8* %59, i8** %62, align 8
  %63 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %64 = bitcast %struct.sockaddr* %63 to %struct.sockaddr_ipx*
  %65 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %64, i32 0, i32 2
  %66 = load %struct.sockaddr*, %struct.sockaddr** %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = call i32 @memcpy(%struct.sockaddr* %66, i32* %70, i32 4)
  %72 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %73 = bitcast %struct.sockaddr* %72 to %struct.sockaddr_ipx*
  %74 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %73, i32 0, i32 1
  %75 = load %struct.sockaddr*, %struct.sockaddr** %74, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  %80 = call i32 @memcpy(%struct.sockaddr* %75, i32* %79, i32 6)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %85 = bitcast %struct.sockaddr* %84 to %struct.sockaddr_ipx*
  %86 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  br label %115

87:                                               ; preds = %52
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @NA_BROADCAST_IPX, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %87
  %94 = load i8*, i8** @AF_IPX, align 8
  %95 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %96 = bitcast %struct.sockaddr* %95 to %struct.sockaddr_ipx*
  %97 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %96, i32 0, i32 3
  store i8* %94, i8** %97, align 8
  %98 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %99 = bitcast %struct.sockaddr* %98 to %struct.sockaddr_ipx*
  %100 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %99, i32 0, i32 2
  %101 = load %struct.sockaddr*, %struct.sockaddr** %100, align 8
  %102 = call i32 @memset(%struct.sockaddr* %101, i32 0, i32 4)
  %103 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %104 = bitcast %struct.sockaddr* %103 to %struct.sockaddr_ipx*
  %105 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %104, i32 0, i32 1
  %106 = load %struct.sockaddr*, %struct.sockaddr** %105, align 8
  %107 = call i32 @memset(%struct.sockaddr* %106, i32 255, i32 6)
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %112 = bitcast %struct.sockaddr* %111 to %struct.sockaddr_ipx*
  %113 = getelementptr inbounds %struct.sockaddr_ipx, %struct.sockaddr_ipx* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  br label %114

114:                                              ; preds = %93, %87
  br label %115

115:                                              ; preds = %114, %58
  br label %116

116:                                              ; preds = %115, %34
  br label %117

117:                                              ; preds = %116, %12
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
