; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_UdpRecvForInternet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_UdpRecvForInternet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to GetDefaultDns()\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Redirect to DNS Server %s\0A\00", align 1
@NAT_UDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UdpRecvForInternet(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.TYPE_11__, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %21, align 4
  %26 = load i8*, i8** %14, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = icmp eq %struct.TYPE_10__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %8
  br label %110

32:                                               ; preds = %28
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load i32, i32* @MAX_SIZE, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %23, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %24, align 8
  %40 = call i32 @GetDefaultDns(i32* %22)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %25, align 4
  br label %49

44:                                               ; preds = %35
  %45 = call i32 @IPToUINT(i32* %22)
  store i32 %45, i32* %21, align 4
  %46 = trunc i64 %37 to i32
  %47 = call i32 @IPToStr(i8* %39, i32 %46, i32* %22)
  %48 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  store i32 0, i32* %25, align 4
  br label %49

49:                                               ; preds = %44, %42
  %50 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %25, align 4
  switch i32 %51, label %111 [
    i32 0, label %52
    i32 1, label %110
  ]

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52, %32
  %54 = load i32, i32* @NAT_UDP, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @SetNat(%struct.TYPE_11__* %18, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 0, i32 0)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %61 = call %struct.TYPE_11__* @SearchNat(%struct.TYPE_10__* %60, %struct.TYPE_11__* %18)
  store %struct.TYPE_11__* %61, %struct.TYPE_11__** %17, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %63 = icmp eq %struct.TYPE_11__* %62, null
  br i1 %63, label %64, label %91

64:                                               ; preds = %53
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %21, align 4
  br label %75

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ]
  %77 = call %struct.TYPE_11__* @CreateNatUdp(%struct.TYPE_10__* %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %76)
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %17, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %79 = icmp eq %struct.TYPE_11__* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %110

81:                                               ; preds = %75
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  %87 = load i32, i32* %21, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %84, %81
  br label %91

91:                                               ; preds = %90, %53
  %92 = load i32, i32* %15, align 4
  %93 = call i8* @Malloc(i32 %92)
  store i8* %93, i8** %20, align 8
  %94 = load i8*, i8** %20, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @Copy(i8* %94, i8* %95, i32 %96)
  %98 = load i8*, i8** %20, align 8
  %99 = load i32, i32* %15, align 4
  %100 = call i32* @NewBlock(i8* %98, i32 %99, i32 0)
  store i32* %100, i32** %19, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %19, align 8
  %105 = call i32 @InsertQueue(i32 %103, i32* %104)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @SetSockEvent(i32 %108)
  br label %110

110:                                              ; preds = %91, %80, %49, %31
  ret void

111:                                              ; preds = %49
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetDefaultDns(i32*) #2

declare dso_local i32 @Debug(i8*, ...) #2

declare dso_local i32 @IPToUINT(i32*) #2

declare dso_local i32 @IPToStr(i8*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @SetNat(%struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local %struct.TYPE_11__* @SearchNat(%struct.TYPE_10__*, %struct.TYPE_11__*) #2

declare dso_local %struct.TYPE_11__* @CreateNatUdp(%struct.TYPE_10__*, i32, i32, i32, i32, i32) #2

declare dso_local i8* @Malloc(i32) #2

declare dso_local i32 @Copy(i8*, i8*, i32) #2

declare dso_local i32* @NewBlock(i8*, i32, i32) #2

declare dso_local i32 @InsertQueue(i32, i32*) #2

declare dso_local i32 @SetSockEvent(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
