; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socketfilter.c_sock_inject_data_in.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socketfilter.c_sock_inject_data_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@sock_data_filt_flag_oob = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@SOF_MP_SUBFLOW = common dso_local global i32 0, align 4
@sock_data_filt_flag_record = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_inject_data_in(%struct.TYPE_6__* %0, %struct.sockaddr* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = icmp eq %struct.TYPE_6__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = load i32*, i32** %9, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %5
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %6, align 4
  br label %107

20:                                               ; preds = %15
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @sock_data_filt_flag_oob, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOTSUP, align 4
  store i32 %26, i32* %6, align 4
  br label %107

27:                                               ; preds = %20
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = call i32 @socket_lock(%struct.TYPE_6__* %28, i32 1)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SOF_MP_SUBFLOW, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @ENOTSUP, align 4
  store i32 %37, i32* %12, align 4
  br label %103

38:                                               ; preds = %27
  %39 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %40 = icmp ne %struct.sockaddr* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %45 = ptrtoint %struct.sockaddr* %44 to i64
  %46 = inttoptr i64 %45 to %struct.sockaddr*
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i64 @sbappendaddr(i32* %43, %struct.sockaddr* %46, i32* %47, i32* %48, i32* null)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = call i32 @sorwakeup(%struct.TYPE_6__* %52)
  br label %54

54:                                               ; preds = %51, %41
  br label %103

55:                                               ; preds = %38
  %56 = load i32*, i32** %10, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i64 @sbappendcontrol(i32* %60, i32* %61, i32* %62, i32* null)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = call i32 @sorwakeup(%struct.TYPE_6__* %66)
  br label %68

68:                                               ; preds = %65, %58
  br label %103

69:                                               ; preds = %55
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @sock_data_filt_flag_record, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %69
  %75 = load i32*, i32** %10, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %79 = icmp ne %struct.sockaddr* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77, %74
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %12, align 4
  br label %103

82:                                               ; preds = %77
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32*, i32** %9, align 8
  %86 = bitcast i32* %85 to %struct.mbuf*
  %87 = call i64 @sbappendrecord(i32* %84, %struct.mbuf* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %91 = call i32 @sorwakeup(%struct.TYPE_6__* %90)
  br label %92

92:                                               ; preds = %89, %82
  br label %103

93:                                               ; preds = %69
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32*, i32** %9, align 8
  %97 = call i64 @sbappend(i32* %95, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %101 = call i32 @sorwakeup(%struct.TYPE_6__* %100)
  br label %102

102:                                              ; preds = %99, %93
  br label %103

103:                                              ; preds = %102, %92, %80, %68, %54, %36
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %105 = call i32 @socket_unlock(%struct.TYPE_6__* %104, i32 1)
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %103, %25, %18
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @socket_lock(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @sbappendaddr(i32*, %struct.sockaddr*, i32*, i32*, i32*) #1

declare dso_local i32 @sorwakeup(%struct.TYPE_6__*) #1

declare dso_local i64 @sbappendcontrol(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @sbappendrecord(i32*, %struct.mbuf*) #1

declare dso_local i64 @sbappend(i32*, i32*) #1

declare dso_local i32 @socket_unlock(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
