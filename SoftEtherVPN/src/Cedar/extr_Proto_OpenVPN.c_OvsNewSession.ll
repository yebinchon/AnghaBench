; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsNewSession.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsNewSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__*, i32, i8*, i32, i32, i8*, i32, i8*, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64 }

@MAX_SIZE = common dso_local global i32 0, align 4
@OPENVPN_QUOTA_MAX_NUM_SESSIONS_PER_IP = common dso_local global i64 0, align 8
@OPENVPN_QUOTA_MAX_NUM_SESSIONS = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i32 0, align 4
@OPENVPN_SCRAMBLE_MODE_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"OpenVPN New Session: %s:%u -> %s:%u Proto=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"LO_NEW_SESSION\00", align 1
@OPENVPN_PROTOCOL_UDP = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @OvsNewSession(%struct.TYPE_13__* %0, i32* %1, i8* %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load i32, i32* @MAX_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load i32, i32* @MAX_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = icmp eq %struct.TYPE_13__* %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %6
  %29 = load i32*, i32** %9, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** %10, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32*, i32** %11, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %12, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34, %31, %28, %6
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  store i32 1, i32* %18, align 4
  br label %136

41:                                               ; preds = %37
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i64 @OvsGetNumSessionByClientIp(%struct.TYPE_13__* %42, i32* %43)
  %45 = load i64, i64* @OPENVPN_QUOTA_MAX_NUM_SESSIONS_PER_IP, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  store i32 1, i32* %18, align 4
  br label %136

48:                                               ; preds = %41
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @LIST_NUM(i32 %51)
  %53 = load i64, i64* @OPENVPN_QUOTA_MAX_NUM_SESSIONS, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  store i32 1, i32* %18, align 4
  br label %136

56:                                               ; preds = %48
  %57 = call %struct.TYPE_12__* @ZeroMalloc(i32 72)
  store %struct.TYPE_12__* %57, %struct.TYPE_12__** %14, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 10
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @Copy(i32* %62, i32* %63, i32 4)
  %65 = load i8*, i8** %12, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 9
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @Copy(i32* %69, i32* %70, i32 4)
  %72 = load i8*, i8** %10, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 7
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %56
  %82 = load i32, i32* @INFINITE, align 4
  br label %85

83:                                               ; preds = %56
  %84 = load i32, i32* @OPENVPN_SCRAMBLE_MODE_DISABLED, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = call i32 @OvsNewServerSessionId(%struct.TYPE_13__* %99)
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  %117 = trunc i64 %20 to i32
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 @IPToStr(i8* %22, i32 %117, i32* %118)
  %120 = trunc i64 %24 to i32
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @IPToStr(i8* %25, i32 %120, i32* %121)
  %123 = load i8*, i8** %10, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = load i8*, i8** %13, align 8
  %126 = call i32 @Debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %123, i8* %25, i8* %124, i8* %125)
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %129 = load i8*, i8** %13, align 8
  %130 = load i8*, i8** @OPENVPN_PROTOCOL_UDP, align 8
  %131 = icmp eq i8* %129, %130
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %134 = call i32 @OvsLog(%struct.TYPE_13__* %127, %struct.TYPE_12__* %128, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %133)
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %135, %struct.TYPE_12__** %7, align 8
  store i32 1, i32* %18, align 4
  br label %136

136:                                              ; preds = %85, %55, %47, %40
  %137 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  ret %struct.TYPE_12__* %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @OvsGetNumSessionByClientIp(%struct.TYPE_13__*, i32*) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_12__* @ZeroMalloc(i32) #2

declare dso_local i32 @Copy(i32*, i32*, i32) #2

declare dso_local i32 @OvsNewServerSessionId(%struct.TYPE_13__*) #2

declare dso_local i32 @IPToStr(i8*, i32, i32*) #2

declare dso_local i32 @Debug(i8*, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @OvsLog(%struct.TYPE_13__*, %struct.TYPE_12__*, i32*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
