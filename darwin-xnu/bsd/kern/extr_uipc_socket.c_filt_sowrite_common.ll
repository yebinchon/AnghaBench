; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_filt_sowrite_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_filt_sowrite_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64, i32, i64, i64, i32 }
%struct.socket = type { i32, i32, i32, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@SS_CANTSENDMORE = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@SOF1_PRECONNECT_DATA = common dso_local global i32 0, align 4
@NOTE_LOWAT = common dso_local global i32 0, align 4
@SOF_NOTSENT_LOWAT = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@PF_MULTIPATH = common dso_local global i64 0, align 8
@so_notsent_lowat_check = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.socket*)* @filt_sowrite_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_sowrite_common(%struct.knote* %0, %struct.socket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.knote* %0, %struct.knote** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.socket*, %struct.socket** %5, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 4
  %10 = call i64 @sbspace(%struct.TYPE_2__* %9)
  %11 = load %struct.knote*, %struct.knote** %4, align 8
  %12 = getelementptr inbounds %struct.knote, %struct.knote* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SS_CANTSENDMORE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load i32, i32* @EV_EOF, align 4
  %21 = load %struct.knote*, %struct.knote** %4, align 8
  %22 = getelementptr inbounds %struct.knote, %struct.knote* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.socket*, %struct.socket** %5, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.knote*, %struct.knote** %4, align 8
  %29 = getelementptr inbounds %struct.knote, %struct.knote* %28, i32 0, i32 3
  store i64 %27, i64* %29, align 8
  store i32 1, i32* %3, align 4
  br label %129

30:                                               ; preds = %2
  %31 = load %struct.socket*, %struct.socket** %5, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %129

36:                                               ; preds = %30
  %37 = load %struct.socket*, %struct.socket** %5, align 8
  %38 = call i32 @socanwrite(%struct.socket* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %129

41:                                               ; preds = %36
  %42 = load %struct.socket*, %struct.socket** %5, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SOF1_PRECONNECT_DATA, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %129

49:                                               ; preds = %41
  %50 = load %struct.socket*, %struct.socket** %5, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %7, align 8
  %54 = load %struct.knote*, %struct.knote** %4, align 8
  %55 = getelementptr inbounds %struct.knote, %struct.knote* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @NOTE_LOWAT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %49
  %61 = load %struct.knote*, %struct.knote** %4, align 8
  %62 = getelementptr inbounds %struct.knote, %struct.knote* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.socket*, %struct.socket** %5, align 8
  %65 = getelementptr inbounds %struct.socket, %struct.socket* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %63, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct.socket*, %struct.socket** %5, align 8
  %71 = getelementptr inbounds %struct.socket, %struct.socket* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %7, align 8
  br label %85

74:                                               ; preds = %60
  %75 = load %struct.knote*, %struct.knote** %4, align 8
  %76 = getelementptr inbounds %struct.knote, %struct.knote* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.knote*, %struct.knote** %4, align 8
  %82 = getelementptr inbounds %struct.knote, %struct.knote* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %7, align 8
  br label %84

84:                                               ; preds = %80, %74
  br label %85

85:                                               ; preds = %84, %69
  br label %86

86:                                               ; preds = %85, %49
  %87 = load %struct.knote*, %struct.knote** %4, align 8
  %88 = getelementptr inbounds %struct.knote, %struct.knote* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %122

92:                                               ; preds = %86
  %93 = load %struct.socket*, %struct.socket** %5, align 8
  %94 = getelementptr inbounds %struct.socket, %struct.socket* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SOF_NOTSENT_LOWAT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %92
  %100 = load %struct.socket*, %struct.socket** %5, align 8
  %101 = call i64 @SOCK_DOM(%struct.socket* %100)
  %102 = load i64, i64* @PF_INET, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load %struct.socket*, %struct.socket** %5, align 8
  %106 = call i64 @SOCK_DOM(%struct.socket* %105)
  %107 = load i64, i64* @PF_INET6, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %104, %99
  %110 = load %struct.socket*, %struct.socket** %5, align 8
  %111 = getelementptr inbounds %struct.socket, %struct.socket* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @SOCK_STREAM, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load %struct.socket*, %struct.socket** %5, align 8
  %117 = call i32 @tcp_notsent_lowat_check(%struct.socket* %116)
  store i32 %117, i32* %6, align 4
  br label %119

118:                                              ; preds = %109, %104
  store i32 1, i32* %3, align 4
  br label %129

119:                                              ; preds = %115
  br label %121

120:                                              ; preds = %92
  store i32 1, i32* %6, align 4
  br label %121

121:                                              ; preds = %120, %119
  br label %122

122:                                              ; preds = %121, %86
  %123 = load %struct.socket*, %struct.socket** %5, align 8
  %124 = call i64 @so_wait_for_if_feedback(%struct.socket* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %126, %122
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %118, %48, %40, %35, %19
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i64 @sbspace(%struct.TYPE_2__*) #1

declare dso_local i32 @socanwrite(%struct.socket*) #1

declare dso_local i64 @SOCK_DOM(%struct.socket*) #1

declare dso_local i32 @tcp_notsent_lowat_check(%struct.socket*) #1

declare dso_local i64 @so_wait_for_if_feedback(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
