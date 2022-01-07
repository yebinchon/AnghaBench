; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/security/extr_security0.c_sec0_session_setup.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/security/extr_security0.c_sec0_session_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_10__*, i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error allocating response\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@STATUS__Success = common dso_local global i32 0, align 4
@SEC0_MSG_TYPE__S0_Session_Response = common dso_local global i32 0, align 4
@SEC0_PAYLOAD__PAYLOAD_SR = common dso_local global i32 0, align 4
@SESSION_DATA__PROTO_SEC0 = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32*)* @sec0_session_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec0_session_setup(i32 %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = call i64 @malloc(i32 24)
  %13 = inttoptr i64 %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %10, align 8
  %14 = call i64 @malloc(i32 24)
  %15 = inttoptr i64 %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %11, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %18, %4
  %22 = load i32, i32* @TAG, align 4
  %23 = call i32 @ESP_LOGE(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %25 = call i32 @free(%struct.TYPE_10__* %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %27 = call i32 @free(%struct.TYPE_10__* %26)
  %28 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %28, i32* %5, align 4
  br label %53

29:                                               ; preds = %18
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = call i32 @sec0_payload__init(%struct.TYPE_10__* %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %33 = call i32 @s0_session_resp__init(%struct.TYPE_10__* %32)
  %34 = load i32, i32* @STATUS__Success, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @SEC0_MSG_TYPE__S0_Session_Response, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @SEC0_PAYLOAD__PAYLOAD_SR, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %45, align 8
  %46 = load i32, i32* @SESSION_DATA__PROTO_SEC0, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %51, align 8
  %52 = load i32, i32* @ESP_OK, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %29, %21
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local i32 @sec0_payload__init(%struct.TYPE_10__*) #1

declare dso_local i32 @s0_session_resp__init(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
