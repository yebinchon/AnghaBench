; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NET_Config.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NET_Config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@net_noudp = common dso_local global %struct.TYPE_3__* null, align 8
@net_noipx = common dso_local global %struct.TYPE_4__* null, align 8
@qfalse = common dso_local global i64 0, align 8
@networkingEnabled = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@ip_socket = common dso_local global i64 0, align 8
@INVALID_SOCKET = common dso_local global i64 0, align 8
@socks_socket = common dso_local global i64 0, align 8
@ipx_socket = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NET_Config(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = call i64 (...) @NET_GetCvars()
  store i64 %6, i64* %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @net_noudp, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @net_noipx, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i64, i64* @qfalse, align 8
  store i64 %17, i64* %2, align 8
  br label %18

18:                                               ; preds = %16, %11, %1
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @networkingEnabled, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %103

26:                                               ; preds = %22, %18
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* @networkingEnabled, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i64, i64* %2, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i64, i64* @qtrue, align 8
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* @qtrue, align 8
  store i64 %35, i64* %5, align 8
  br label %39

36:                                               ; preds = %30
  %37 = load i64, i64* @qfalse, align 8
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* @qfalse, align 8
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %36, %33
  br label %51

40:                                               ; preds = %26
  %41 = load i64, i64* %2, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* @qfalse, align 8
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* @qtrue, align 8
  store i64 %45, i64* %5, align 8
  br label %49

46:                                               ; preds = %40
  %47 = load i64, i64* @qtrue, align 8
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* @qfalse, align 8
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i64, i64* %2, align 8
  store i64 %50, i64* @networkingEnabled, align 8
  br label %51

51:                                               ; preds = %49, %39
  %52 = load i64, i64* %4, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %85

54:                                               ; preds = %51
  %55 = load i64, i64* @ip_socket, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i64, i64* @ip_socket, align 8
  %59 = load i64, i64* @INVALID_SOCKET, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i64, i64* @ip_socket, align 8
  %63 = call i32 @closesocket(i64 %62)
  store i64 0, i64* @ip_socket, align 8
  br label %64

64:                                               ; preds = %61, %57, %54
  %65 = load i64, i64* @socks_socket, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i64, i64* @socks_socket, align 8
  %69 = load i64, i64* @INVALID_SOCKET, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i64, i64* @socks_socket, align 8
  %73 = call i32 @closesocket(i64 %72)
  store i64 0, i64* @socks_socket, align 8
  br label %74

74:                                               ; preds = %71, %67, %64
  %75 = load i64, i64* @ipx_socket, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i64, i64* @ipx_socket, align 8
  %79 = load i64, i64* @INVALID_SOCKET, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, i64* @ipx_socket, align 8
  %83 = call i32 @closesocket(i64 %82)
  store i64 0, i64* @ipx_socket, align 8
  br label %84

84:                                               ; preds = %81, %77, %74
  br label %85

85:                                               ; preds = %84, %51
  %86 = load i64, i64* %5, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @net_noudp, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = call i32 (...) @NET_OpenIP()
  br label %95

95:                                               ; preds = %93, %88
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @net_noipx, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = call i32 (...) @NET_OpenIPX()
  br label %102

102:                                              ; preds = %100, %95
  br label %103

103:                                              ; preds = %25, %102, %85
  ret void
}

declare dso_local i64 @NET_GetCvars(...) #1

declare dso_local i32 @closesocket(i64) #1

declare dso_local i32 @NET_OpenIP(...) #1

declare dso_local i32 @NET_OpenIPX(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
