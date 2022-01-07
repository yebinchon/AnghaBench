; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_EtherLog.c_ElListenerProc.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_EtherLog.c_ElListenerProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, i32 }

@SHA1_SIZE = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@ElRpcServer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ElListenerProc(%struct.TYPE_19__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %5, align 8
  %18 = load i32, i32* @SHA1_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load i32, i32* @SHA1_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %25 = load i32, i32* @SHA1_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %29 = icmp eq %struct.TYPE_20__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %32 = icmp eq %struct.TYPE_19__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %2
  store i32 1, i32* %12, align 4
  br label %153

34:                                               ; preds = %30
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %6, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %7, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @AddRef(i32 %46)
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %49 = call i32 @SetTimeout(%struct.TYPE_19__* %48, i32 5000)
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @LockList(i32 %52)
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @AddRef(i32 %56)
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @AddRef(i32 %60)
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %66 = call i32 @Insert(i32 %64, %struct.TYPE_19__* %65)
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %71 = call i32 @Insert(i32 %69, %struct.TYPE_19__* %70)
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @UnlockList(i32 %74)
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %77 = call i32 @NoticeThreadInit(%struct.TYPE_19__* %76)
  %78 = mul nuw i64 4, %19
  %79 = trunc i64 %78 to i32
  %80 = call i32 @Rand(i32* %21, i32 %79)
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %82 = mul nuw i64 4, %19
  %83 = trunc i64 %82 to i32
  %84 = call i32 @SendAll(%struct.TYPE_19__* %81, i32* %21, i32 %83, i32 0)
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @SecurePassword(i32* %24, i32 %87, i32* %21)
  %89 = mul nuw i64 4, %26
  %90 = trunc i64 %89 to i32
  %91 = call i32 @Zero(i32* %27, i32 %90)
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %93 = mul nuw i64 4, %26
  %94 = trunc i64 %93 to i32
  %95 = call i32 @RecvAll(%struct.TYPE_19__* %92, i32* %27, i32 %94, i32 0)
  %96 = load i32, i32* @SHA1_SIZE, align 4
  %97 = call i64 @Cmp(i32* %24, i32* %27, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %34
  store i32 0, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @Endian32(i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %103 = call i32 @SendAll(%struct.TYPE_19__* %102, i32* %13, i32 4, i32 0)
  br label %120

104:                                              ; preds = %34
  store i32 1, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @Endian32(i32 %105)
  store i32 %106, i32* %14, align 4
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %108 = call i32 @SendAll(%struct.TYPE_19__* %107, i32* %14, i32 4, i32 0)
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %110 = load i32, i32* @INFINITE, align 4
  %111 = call i32 @SetTimeout(%struct.TYPE_19__* %109, i32 %110)
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %113 = load i32, i32* @ElRpcServer, align 4
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %115 = call i32* @StartRpcServer(%struct.TYPE_19__* %112, i32 %113, %struct.TYPE_21__* %114)
  store i32* %115, i32** %15, align 8
  %116 = load i32*, i32** %15, align 8
  %117 = call i32 @RpcServer(i32* %116)
  %118 = load i32*, i32** %15, align 8
  %119 = call i32 @RpcFree(i32* %118)
  br label %120

120:                                              ; preds = %104, %99
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %122 = call i32 @Disconnect(%struct.TYPE_19__* %121)
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %124 = call i32 @ReleaseSock(%struct.TYPE_19__* %123)
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @LockList(i32 %127)
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %133 = call i64 @Delete(i32 %131, %struct.TYPE_19__* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %120
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %137 = call i32 @ReleaseThread(%struct.TYPE_19__* %136)
  br label %138

138:                                              ; preds = %135, %120
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %143 = call i64 @Delete(i32 %141, %struct.TYPE_19__* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %147 = call i32 @ReleaseSock(%struct.TYPE_19__* %146)
  br label %148

148:                                              ; preds = %145, %138
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @UnlockList(i32 %151)
  store i32 0, i32* %12, align 4
  br label %153

153:                                              ; preds = %148, %33
  %154 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %12, align 4
  switch i32 %155, label %157 [
    i32 0, label %156
    i32 1, label %156
  ]

156:                                              ; preds = %153, %153
  ret void

157:                                              ; preds = %153
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AddRef(i32) #2

declare dso_local i32 @SetTimeout(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i32 @Insert(i32, %struct.TYPE_19__*) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @NoticeThreadInit(%struct.TYPE_19__*) #2

declare dso_local i32 @Rand(i32*, i32) #2

declare dso_local i32 @SendAll(%struct.TYPE_19__*, i32*, i32, i32) #2

declare dso_local i32 @SecurePassword(i32*, i32, i32*) #2

declare dso_local i32 @Zero(i32*, i32) #2

declare dso_local i32 @RecvAll(%struct.TYPE_19__*, i32*, i32, i32) #2

declare dso_local i64 @Cmp(i32*, i32*, i32) #2

declare dso_local i32 @Endian32(i32) #2

declare dso_local i32* @StartRpcServer(%struct.TYPE_19__*, i32, %struct.TYPE_21__*) #2

declare dso_local i32 @RpcServer(i32*) #2

declare dso_local i32 @RpcFree(i32*) #2

declare dso_local i32 @Disconnect(%struct.TYPE_19__*) #2

declare dso_local i32 @ReleaseSock(%struct.TYPE_19__*) #2

declare dso_local i64 @Delete(i32, %struct.TYPE_19__*) #2

declare dso_local i32 @ReleaseThread(%struct.TYPE_19__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
