; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_NewDnsCacheEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_NewDnsCacheEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@DnsCache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NewDnsCacheEx(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  store i32 1, i32* %10, align 4
  br label %56

22:                                               ; preds = %18
  %23 = call i32 (...) @IsNetworkNameCacheEnabled()
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %56

26:                                               ; preds = %22
  %27 = trunc i64 %13 to i32
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @GenDnsCacheKeyName(i8* %15, i32 %27, i8* %28, i32 %29)
  %31 = call i32 (...) @LockDnsCache()
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i8* %15, i8** %32, align 8
  %33 = load i32, i32* @DnsCache, align 4
  %34 = call %struct.TYPE_6__* @Search(i32 %33, %struct.TYPE_6__* %11)
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %7, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = icmp eq %struct.TYPE_6__* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %26
  %38 = call %struct.TYPE_6__* @ZeroMalloc(i32 16)
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %7, align 8
  %39 = call i8* @CopyStr(i8* %15)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @Copy(i32* %43, i32* %44, i32 4)
  %46 = load i32, i32* @DnsCache, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = call i32 @Add(i32 %46, %struct.TYPE_6__* %47)
  br label %54

49:                                               ; preds = %26
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @Copy(i32* %51, i32* %52, i32 4)
  br label %54

54:                                               ; preds = %49, %37
  %55 = call i32 (...) @UnlockDnsCache()
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %54, %25, %21
  %57 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %10, align 4
  switch i32 %58, label %60 [
    i32 0, label %59
    i32 1, label %59
  ]

59:                                               ; preds = %56, %56
  ret void

60:                                               ; preds = %56
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IsNetworkNameCacheEnabled(...) #2

declare dso_local i32 @GenDnsCacheKeyName(i8*, i32, i8*, i32) #2

declare dso_local i32 @LockDnsCache(...) #2

declare dso_local %struct.TYPE_6__* @Search(i32, %struct.TYPE_6__*) #2

declare dso_local %struct.TYPE_6__* @ZeroMalloc(i32) #2

declare dso_local i8* @CopyStr(i8*) #2

declare dso_local i32 @Copy(i32*, i32*, i32) #2

declare dso_local i32 @Add(i32, %struct.TYPE_6__*) #2

declare dso_local i32 @UnlockDnsCache(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
