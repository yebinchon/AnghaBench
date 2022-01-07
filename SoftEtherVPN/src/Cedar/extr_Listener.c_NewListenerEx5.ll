; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Listener.c_NewListenerEx5.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Listener.c_NewListenerEx5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64*, i32, i32, %struct.TYPE_12__*, i32, i32, i64, i64, i32, i32, i8*, i32* }
%struct.TYPE_12__ = type { i32, i32 }

@LISTENER_TCP = common dso_local global i64 0, align 8
@LISTENER_INPROC = common dso_local global i64 0, align 8
@LISTENER_RUDP = common dso_local global i64 0, align 8
@LISTENER_ICMP = common dso_local global i64 0, align 8
@LISTENER_DNS = common dso_local global i64 0, align 8
@LISTENER_REVERSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"LS_LISTENER_START_1\00", align 1
@ListenerThread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @NewListenerEx5(%struct.TYPE_12__* %0, i64 %1, i64 %2, i32* %3, i8* %4, i32 %5, i32 %6, i64* %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_11__*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %12, align 8
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store i32* %3, i32** %15, align 8
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i64* %7, i64** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @LISTENER_TCP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %10
  %28 = load i64, i64* %14, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27, %10
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %32 = icmp eq %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %11, align 8
  br label %164

34:                                               ; preds = %30
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* @LISTENER_TCP, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* @LISTENER_INPROC, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* @LISTENER_RUDP, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* @LISTENER_ICMP, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* @LISTENER_DNS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* @LISTENER_REVERSE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %11, align 8
  br label %164

59:                                               ; preds = %54, %50, %46, %42, %38, %34
  %60 = call %struct.TYPE_11__* @ZeroMalloc(i32 80)
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %22, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 13
  store i32* %61, i32** %63, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 12
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 5
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %69, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @AddRef(i32 %74)
  %76 = call i32 (...) @NewLock()
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 11
  store i32 %76, i32* %78, align 4
  %79 = call i32 (...) @NewRef()
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 10
  store i32 %79, i32* %81, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 9
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 8
  store i64 %85, i64* %87, align 8
  %88 = call i32 (...) @NewEvent()
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %18, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i64*, i64** %19, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  store i64* %97, i64** %99, align 8
  %100 = load i32, i32* %20, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %21, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %59
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* @LISTENER_TCP, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %116 = load i64, i64* %14, align 8
  %117 = call i32 @SLog(%struct.TYPE_12__* %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %116)
  br label %118

118:                                              ; preds = %114, %110
  br label %119

119:                                              ; preds = %118, %59
  %120 = load i32, i32* @ListenerThread, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %122 = call i32* @NewThread(i32 %120, %struct.TYPE_11__* %121)
  store i32* %122, i32** %23, align 8
  %123 = load i32*, i32** %23, align 8
  %124 = call i32 @WaitThreadInit(i32* %123)
  %125 = load i32*, i32** %23, align 8
  %126 = call i32 @ReleaseThread(i32* %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %153

131:                                              ; preds = %119
  %132 = load i64, i64* %13, align 8
  %133 = load i64, i64* @LISTENER_TCP, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %153

135:                                              ; preds = %131
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 5
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %135
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %144 = load i64, i64* %13, align 8
  %145 = load i64, i64* %14, align 8
  %146 = load i32*, i32** %15, align 8
  %147 = load i8*, i8** %16, align 8
  %148 = load i32, i32* %17, align 4
  %149 = call i32 @NewListenerEx3(%struct.TYPE_12__* %143, i64 %144, i64 %145, i32* %146, i8* %147, i32 %148, i32 1)
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %142, %135
  br label %153

153:                                              ; preds = %152, %131, %119
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %161 = call i32 @AddListener(%struct.TYPE_12__* %159, %struct.TYPE_11__* %160)
  br label %162

162:                                              ; preds = %158, %153
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  store %struct.TYPE_11__* %163, %struct.TYPE_11__** %11, align 8
  br label %164

164:                                              ; preds = %162, %58, %33
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  ret %struct.TYPE_11__* %165
}

declare dso_local %struct.TYPE_11__* @ZeroMalloc(i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @NewLock(...) #1

declare dso_local i32 @NewRef(...) #1

declare dso_local i32 @NewEvent(...) #1

declare dso_local i32 @SLog(%struct.TYPE_12__*, i8*, i64) #1

declare dso_local i32* @NewThread(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @WaitThreadInit(i32*) #1

declare dso_local i32 @ReleaseThread(i32*) #1

declare dso_local i32 @NewListenerEx3(%struct.TYPE_12__*, i64, i64, i32*, i8*, i32, i32) #1

declare dso_local i32 @AddListener(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
