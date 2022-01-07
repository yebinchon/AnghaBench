; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Session.c_NewRpcSessionEx2.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Session.c_NewRpcSessionEx2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__*, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.TYPE_18__*, i32, i8*, i32 }
%struct.TYPE_16__ = type { i32, i8* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"CLIENT_RPC_SESSION\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @NewRpcSessionEx2(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %16 = icmp eq %struct.TYPE_18__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %19 = icmp eq %struct.TYPE_17__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %5
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %6, align 8
  br label %142

21:                                               ; preds = %17
  %22 = call %struct.TYPE_15__* @ZeroMalloc(i32 104)
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %12, align 8
  %23 = call i32 (...) @NewCounter()
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 16
  store i32 %23, i32* %25, align 8
  %26 = call i8* (...) @NewLock()
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 15
  store i8* %26, i8** %28, align 8
  %29 = call i32 (...) @NewRef()
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 14
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 13
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %34, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = call i32 @CopyStr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 12
  store i32 %37, i32* %39, align 8
  %40 = call i32 (...) @Tick64()
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 11
  store i32 %40, i32* %44, align 4
  %45 = call i32 (...) @NewTraffic()
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 4
  %48 = call i32 (...) @NewEvent()
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = call i8* (...) @NewLock()
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 7
  store i8* %51, i8** %53, align 8
  %54 = call i32 (...) @NewCancel()
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = call i32 @Malloc(i32 12)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = call i32 @Copy(i32 %62, %struct.TYPE_17__* %63, i32 12)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.TYPE_16__* @NewClientConnectionEx(%struct.TYPE_15__* %80, i8* %81, i32 %84, i32 %87)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  store %struct.TYPE_16__* %88, %struct.TYPE_16__** %90, align 8
  store %struct.TYPE_16__* %88, %struct.TYPE_16__** %13, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %95 = call i32* @ClientConnectToServer(%struct.TYPE_16__* %94)
  store i32* %95, i32** %14, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %21
  %99 = load i32*, i32** %9, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %98
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %108 = call i32 @ReleaseSession(%struct.TYPE_15__* %107)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %6, align 8
  br label %142

109:                                              ; preds = %21
  %110 = load i32*, i32** %14, align 8
  %111 = call i32 @ClientUploadSignature(i32* %110)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load i32*, i32** %9, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32*, i32** %9, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %116, %113
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %123 = call i32 @ReleaseSession(%struct.TYPE_15__* %122)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %6, align 8
  br label %142

124:                                              ; preds = %109
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = call i32 @ClientDownloadHello(%struct.TYPE_16__* %125, i32* %126)
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %124
  %130 = load i32*, i32** %9, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32*, i32** %9, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %132, %129
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %139 = call i32 @ReleaseSession(%struct.TYPE_15__* %138)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %6, align 8
  br label %142

140:                                              ; preds = %124
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %141, %struct.TYPE_15__** %6, align 8
  br label %142

142:                                              ; preds = %140, %137, %121, %106, %20
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  ret %struct.TYPE_15__* %143
}

declare dso_local %struct.TYPE_15__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewCounter(...) #1

declare dso_local i8* @NewLock(...) #1

declare dso_local i32 @NewRef(...) #1

declare dso_local i32 @CopyStr(i8*) #1

declare dso_local i32 @Tick64(...) #1

declare dso_local i32 @NewTraffic(...) #1

declare dso_local i32 @NewEvent(...) #1

declare dso_local i32 @NewCancel(...) #1

declare dso_local i32 @Malloc(i32) #1

declare dso_local i32 @Copy(i32, %struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_16__* @NewClientConnectionEx(%struct.TYPE_15__*, i8*, i32, i32) #1

declare dso_local i32* @ClientConnectToServer(%struct.TYPE_16__*) #1

declare dso_local i32 @ReleaseSession(%struct.TYPE_15__*) #1

declare dso_local i32 @ClientUploadSignature(i32*) #1

declare dso_local i32 @ClientDownloadHello(%struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
