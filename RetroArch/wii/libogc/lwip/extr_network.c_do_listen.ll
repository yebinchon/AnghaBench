; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_do_listen.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_do_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apimsg_msg = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, i8*, i32 }
%struct.TYPE_3__ = type { i32* }

@API_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"api_msg: listen RAW: cannot listen for RAW.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"api_msg: listen UDP: cannot listen for UDP.\0A\00", align 1
@ERR_MEM = common dso_local global i8* null, align 8
@SYS_MBOX_NULL = common dso_local global i32 0, align 4
@MQBOX_SIZE = common dso_local global i32 0, align 4
@MQ_ERROR_SUCCESSFUL = common dso_local global i32 0, align 4
@accept_func = common dso_local global i32 0, align 4
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apimsg_msg*)* @do_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_listen(%struct.apimsg_msg* %0) #0 {
  %2 = alloca %struct.apimsg_msg*, align 8
  %3 = alloca i32, align 4
  store %struct.apimsg_msg* %0, %struct.apimsg_msg** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %5 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %95

11:                                               ; preds = %1
  %12 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %13 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %93 [
    i32 132, label %17
    i32 129, label %20
    i32 128, label %20
    i32 130, label %20
    i32 131, label %23
  ]

17:                                               ; preds = %11
  %18 = load i32, i32* @API_MSG_DEBUG, align 4
  %19 = call i32 @LWIP_DEBUGF(i32 %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %94

20:                                               ; preds = %11, %11, %11
  %21 = load i32, i32* @API_MSG_DEBUG, align 4
  %22 = call i32 @LWIP_DEBUGF(i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %94

23:                                               ; preds = %11
  %24 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %25 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32* @tcp_listen(i32* %29)
  %31 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %32 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32* %30, i32** %35, align 8
  %36 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %37 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %23
  %44 = load i8*, i8** @ERR_MEM, align 8
  %45 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %46 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  store i8* %44, i8** %48, align 8
  br label %92

49:                                               ; preds = %23
  %50 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %51 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SYS_MBOX_NULL, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %49
  %58 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %59 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load i32, i32* @MQBOX_SIZE, align 4
  %63 = call i32 @MQ_Init(i32* %61, i32 %62)
  %64 = load i32, i32* @MQ_ERROR_SUCCESSFUL, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %57
  %67 = load i8*, i8** @ERR_MEM, align 8
  %68 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %69 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  store i8* %67, i8** %71, align 8
  br label %94

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72, %49
  %74 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %75 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %81 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = call i32 @tcp_arg(i32* %79, %struct.TYPE_4__* %82)
  %84 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %85 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* @accept_func, align 4
  %91 = call i32 @tcp_accept(i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %73, %43
  br label %94

93:                                               ; preds = %11
  br label %94

94:                                               ; preds = %93, %92, %66, %20, %17
  br label %95

95:                                               ; preds = %94, %1
  %96 = load %struct.apimsg_msg*, %struct.apimsg_msg** %2, align 8
  %97 = getelementptr inbounds %struct.apimsg_msg, %struct.apimsg_msg* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %102 = call i32 @MQ_Send(i32 %100, i32* %3, i32 %101)
  ret void
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32* @tcp_listen(i32*) #1

declare dso_local i32 @MQ_Init(i32*, i32) #1

declare dso_local i32 @tcp_arg(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @tcp_accept(i32*, i32) #1

declare dso_local i32 @MQ_Send(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
