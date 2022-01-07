; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sopoll.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sopoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.proc = type { i32 }

@PROC_NULL = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@POLLRDBAND = common dso_local global i32 0, align 4
@SS_RCVATMARK = common dso_local global i32 0, align 4
@SB_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sopoll(%struct.socket* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.proc*, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = call %struct.proc* (...) @current_proc()
  store %struct.proc* %11, %struct.proc** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = call i32 @socket_lock(%struct.socket* %12, i32 1)
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = load i32, i32* @PROC_NULL, align 4
  %16 = call i32 @so_update_last_owner_locked(%struct.socket* %14, i32 %15)
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = call i32 @so_update_policy(%struct.socket* %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @POLLIN, align 4
  %21 = load i32, i32* @POLLRDNORM, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %4
  %26 = load %struct.socket*, %struct.socket** %5, align 8
  %27 = call i64 @soreadable(%struct.socket* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @POLLIN, align 4
  %32 = load i32, i32* @POLLRDNORM, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %29, %25
  br label %38

38:                                               ; preds = %37, %4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @POLLOUT, align 4
  %41 = load i32, i32* @POLLWRNORM, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load %struct.socket*, %struct.socket** %5, align 8
  %47 = call i64 @sowriteable(%struct.socket* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @POLLOUT, align 4
  %52 = load i32, i32* @POLLWRNORM, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %49, %45
  br label %58

58:                                               ; preds = %57, %38
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @POLLPRI, align 4
  %61 = load i32, i32* @POLLRDBAND, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %58
  %66 = load %struct.socket*, %struct.socket** %5, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %65
  %71 = load %struct.socket*, %struct.socket** %5, align 8
  %72 = getelementptr inbounds %struct.socket, %struct.socket* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SS_RCVATMARK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70, %65
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @POLLPRI, align 4
  %80 = load i32, i32* @POLLRDBAND, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %77, %70
  br label %86

86:                                               ; preds = %85, %58
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %134

89:                                               ; preds = %86
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @POLLIN, align 4
  %92 = load i32, i32* @POLLPRI, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @POLLRDNORM, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @POLLRDBAND, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %90, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %89
  %101 = load i32, i32* @SB_SEL, align 4
  %102 = load %struct.socket*, %struct.socket** %5, align 8
  %103 = getelementptr inbounds %struct.socket, %struct.socket* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %101
  store i32 %106, i32* %104, align 4
  %107 = load %struct.proc*, %struct.proc** %9, align 8
  %108 = load %struct.socket*, %struct.socket** %5, align 8
  %109 = getelementptr inbounds %struct.socket, %struct.socket* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @selrecord(%struct.proc* %107, i32* %110, i8* %111)
  br label %113

113:                                              ; preds = %100, %89
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @POLLOUT, align 4
  %116 = load i32, i32* @POLLWRNORM, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %113
  %121 = load i32, i32* @SB_SEL, align 4
  %122 = load %struct.socket*, %struct.socket** %5, align 8
  %123 = getelementptr inbounds %struct.socket, %struct.socket* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %121
  store i32 %126, i32* %124, align 4
  %127 = load %struct.proc*, %struct.proc** %9, align 8
  %128 = load %struct.socket*, %struct.socket** %5, align 8
  %129 = getelementptr inbounds %struct.socket, %struct.socket* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i8*, i8** %8, align 8
  %132 = call i32 @selrecord(%struct.proc* %127, i32* %130, i8* %131)
  br label %133

133:                                              ; preds = %120, %113
  br label %134

134:                                              ; preds = %133, %86
  %135 = load %struct.socket*, %struct.socket** %5, align 8
  %136 = call i32 @socket_unlock(%struct.socket* %135, i32 1)
  %137 = load i32, i32* %10, align 4
  ret i32 %137
}

declare dso_local %struct.proc* @current_proc(...) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @so_update_last_owner_locked(%struct.socket*, i32) #1

declare dso_local i32 @so_update_policy(%struct.socket*) #1

declare dso_local i64 @soreadable(%struct.socket*) #1

declare dso_local i64 @sowriteable(%struct.socket*) #1

declare dso_local i32 @selrecord(%struct.proc*, i32*, i8*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
