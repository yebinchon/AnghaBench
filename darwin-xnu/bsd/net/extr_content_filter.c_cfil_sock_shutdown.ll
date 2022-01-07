; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_shutdown.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_sock_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SOF_CONTENT_FILTER = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"so %llx how %d\00", align 1
@SHUT_WR = common dso_local global i32 0, align 4
@SS_CANTRCVMORE = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@SHUT_RD = common dso_local global i32 0, align 4
@SS_CANTSENDMORE = common dso_local global i32 0, align 4
@CFIF_DROP = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"so %llx drop set\00", align 1
@CFIF_SHUT_RD = common dso_local global i32 0, align 4
@CFIF_SHUT_WR = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfil_sock_shutdown(%struct.socket* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.socket*, %struct.socket** %4, align 8
  %8 = call i64 @IS_UDP(%struct.socket* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @cfil_sock_udp_shutdown(%struct.socket* %11, i32* %12)
  store i32 %13, i32* %3, align 4
  br label %158

14:                                               ; preds = %2
  %15 = load %struct.socket*, %struct.socket** %4, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SOF_CONTENT_FILTER, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = load %struct.socket*, %struct.socket** %4, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp eq %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %14
  br label %156

27:                                               ; preds = %21
  %28 = load %struct.socket*, %struct.socket** %4, align 8
  %29 = call i32 @socket_lock_assert_owned(%struct.socket* %28)
  %30 = load i32, i32* @LOG_INFO, align 4
  %31 = load %struct.socket*, %struct.socket** %4, align 8
  %32 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %31)
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, i32, ...) @CFIL_LOG(i32 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SHUT_WR, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %27
  %42 = load %struct.socket*, %struct.socket** %4, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SS_CANTRCVMORE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @ENOTCONN, align 4
  store i32 %49, i32* %6, align 4
  br label %156

50:                                               ; preds = %41, %27
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SHUT_RD, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.socket*, %struct.socket** %4, align 8
  %57 = getelementptr inbounds %struct.socket, %struct.socket* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SS_CANTSENDMORE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @ENOTCONN, align 4
  store i32 %63, i32* %6, align 4
  br label %156

64:                                               ; preds = %55, %50
  %65 = load %struct.socket*, %struct.socket** %4, align 8
  %66 = getelementptr inbounds %struct.socket, %struct.socket* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CFIF_DROP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load i32, i32* @LOG_ERR, align 4
  %75 = load %struct.socket*, %struct.socket** %4, align 8
  %76 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %75)
  %77 = trunc i64 %76 to i32
  %78 = call i32 (i32, i8*, i32, ...) @CFIL_LOG(i32 %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %156

79:                                               ; preds = %64
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SHUT_WR, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %79
  %85 = load %struct.socket*, %struct.socket** %4, align 8
  %86 = getelementptr inbounds %struct.socket, %struct.socket* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CFIF_SHUT_RD, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* @ENOTCONN, align 4
  store i32 %94, i32* %6, align 4
  br label %156

95:                                               ; preds = %84
  %96 = load i32, i32* @CFIF_SHUT_RD, align 4
  %97 = load %struct.socket*, %struct.socket** %4, align 8
  %98 = getelementptr inbounds %struct.socket, %struct.socket* %97, i32 0, i32 3
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %96
  store i32 %102, i32* %100, align 4
  %103 = load %struct.socket*, %struct.socket** %4, align 8
  %104 = load i32, i32* @SHUT_RD, align 4
  %105 = call i32 @cfil_sock_notify_shutdown(%struct.socket* %103, i32 %104)
  br label %106

106:                                              ; preds = %95, %79
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SHUT_RD, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %155

111:                                              ; preds = %106
  %112 = load %struct.socket*, %struct.socket** %4, align 8
  %113 = getelementptr inbounds %struct.socket, %struct.socket* %112, i32 0, i32 3
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @CFIF_SHUT_WR, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = load i32, i32* @ENOTCONN, align 4
  store i32 %121, i32* %6, align 4
  br label %156

122:                                              ; preds = %111
  %123 = load i32, i32* @CFIF_SHUT_WR, align 4
  %124 = load %struct.socket*, %struct.socket** %4, align 8
  %125 = getelementptr inbounds %struct.socket, %struct.socket* %124, i32 0, i32 3
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %123
  store i32 %129, i32* %127, align 4
  %130 = load %struct.socket*, %struct.socket** %4, align 8
  %131 = load i32, i32* @SHUT_WR, align 4
  %132 = call i32 @cfil_sock_notify_shutdown(%struct.socket* %130, i32 %131)
  %133 = load %struct.socket*, %struct.socket** %4, align 8
  %134 = getelementptr inbounds %struct.socket, %struct.socket* %133, i32 0, i32 2
  %135 = call i64 @cfil_sock_data_pending(i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %122
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @SHUT_WR, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %143, i32* %6, align 4
  br label %153

144:                                              ; preds = %137
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @SHUT_RDWR, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i32, i32* @SHUT_RD, align 4
  %151 = load i32*, i32** %5, align 8
  store i32 %150, i32* %151, align 4
  br label %152

152:                                              ; preds = %149, %144
  br label %153

153:                                              ; preds = %152, %142
  br label %154

154:                                              ; preds = %153, %122
  br label %155

155:                                              ; preds = %154, %106
  br label %156

156:                                              ; preds = %155, %120, %93, %73, %62, %48, %26
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %10
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i64 @IS_UDP(%struct.socket*) #1

declare dso_local i32 @cfil_sock_udp_shutdown(%struct.socket*, i32*) #1

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i32 @CFIL_LOG(i32, i8*, i32, ...) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i32 @cfil_sock_notify_shutdown(%struct.socket*, i32) #1

declare dso_local i64 @cfil_sock_data_pending(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
