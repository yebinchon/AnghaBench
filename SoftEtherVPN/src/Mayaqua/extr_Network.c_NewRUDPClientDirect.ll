; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_NewRUDPClientDirect.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_NewRUDPClientDirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32, i32, i64, i32 }

@RUDP_TIMEOUT = common dso_local global i64 0, align 8
@RUDP_ERROR_UNKNOWN = common dso_local global i64 0, align 8
@RUDP_ERROR_TIMEOUT = common dso_local global i64 0, align 8
@RUDP_ERROR_USER_CANCELED = common dso_local global i64 0, align 8
@RUDP_ERROR_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @NewRUDPClientDirect(i8* %0, i32* %1, i64 %2, i64* %3, i64 %4, i32* %5, i32* %6, i32* %7, i64 %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_4__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  store i8* %0, i8** %12, align 8
  store i32* %1, i32** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64* %3, i64** %15, align 8
  store i64 %4, i64* %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i64 %8, i64* %20, align 8
  store i32 %9, i32* %21, align 4
  store i64 0, i64* %23, align 8
  store i32* null, i32** %24, align 8
  %25 = load i64*, i64** %15, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %10
  store i64* %23, i64** %15, align 8
  br label %28

28:                                               ; preds = %27, %10
  %29 = load i64, i64* %16, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i64, i64* @RUDP_TIMEOUT, align 8
  store i64 %32, i64* %16, align 8
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i64, i64* @RUDP_ERROR_UNKNOWN, align 8
  %35 = load i64*, i64** %15, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load i32*, i32** %13, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %14, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %38, %33
  store i32* null, i32** %11, align 8
  br label %135

45:                                               ; preds = %41
  %46 = load i8*, i8** %12, align 8
  %47 = load i64, i64* %20, align 8
  %48 = load i32*, i32** %18, align 8
  %49 = load i32*, i32** %19, align 8
  %50 = load i32, i32* %21, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = call %struct.TYPE_4__* @NewRUDP(i32 0, i8* %46, i32* null, i32* null, i32* null, i64 %47, i32* %48, i32* %49, i32 0, i32 %50, i32* %51, i32* null, i32 0, i32* null)
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %22, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %54 = icmp eq %struct.TYPE_4__* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i64, i64* @RUDP_ERROR_UNKNOWN, align 8
  %57 = load i64*, i64** %15, align 8
  store i64 %56, i64* %57, align 8
  store i32* null, i32** %11, align 8
  br label %135

58:                                               ; preds = %45
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @Lock(i32 %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 7
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @Copy(i32* %64, i32* %65, i32 4)
  %67 = load i64, i64* %14, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 6
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @Unlock(i32 %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @SetSockEvent(i32 %78)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %16, align 8
  %84 = load i32*, i32** %17, align 8
  %85 = call i32 @WaitEx(i32 %82, i64 %83, i32* %84)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @Lock(i32 %88)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %58
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  store i32* %97, i32** %24, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  store i32* null, i32** %99, align 8
  br label %103

100:                                              ; preds = %58
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %94
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @Unlock(i32 %106)
  %108 = load i32*, i32** %24, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load i64, i64* @RUDP_ERROR_TIMEOUT, align 8
  %112 = load i64*, i64** %15, align 8
  store i64 %111, i64* %112, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %114 = call i32 @FreeRUDP(%struct.TYPE_4__* %113)
  br label %133

115:                                              ; preds = %103
  %116 = load i32*, i32** %17, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load i32*, i32** %17, align 8
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = load i64, i64* @RUDP_ERROR_USER_CANCELED, align 8
  %124 = load i64*, i64** %15, align 8
  store i64 %123, i64* %124, align 8
  %125 = load i32*, i32** %24, align 8
  %126 = call i32 @Disconnect(i32* %125)
  %127 = load i32*, i32** %24, align 8
  %128 = call i32 @ReleaseSock(i32* %127)
  store i32* null, i32** %24, align 8
  br label %132

129:                                              ; preds = %118, %115
  %130 = load i64, i64* @RUDP_ERROR_OK, align 8
  %131 = load i64*, i64** %15, align 8
  store i64 %130, i64* %131, align 8
  br label %132

132:                                              ; preds = %129, %122
  br label %133

133:                                              ; preds = %132, %110
  %134 = load i32*, i32** %24, align 8
  store i32* %134, i32** %11, align 8
  br label %135

135:                                              ; preds = %133, %55, %44
  %136 = load i32*, i32** %11, align 8
  ret i32* %136
}

declare dso_local %struct.TYPE_4__* @NewRUDP(i32, i8*, i32*, i32*, i32*, i64, i32*, i32*, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @SetSockEvent(i32) #1

declare dso_local i32 @WaitEx(i32, i64, i32*) #1

declare dso_local i32 @FreeRUDP(%struct.TYPE_4__*) #1

declare dso_local i32 @Disconnect(i32*) #1

declare dso_local i32 @ReleaseSock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
