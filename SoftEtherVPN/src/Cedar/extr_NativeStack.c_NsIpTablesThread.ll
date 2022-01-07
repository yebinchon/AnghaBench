; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NativeStack.c_NsIpTablesThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NativeStack.c_NsIpTablesThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@NS_CHECK_IPTABLES_INTERVAL_INIT = common dso_local global i32 0, align 4
@NS_CHECK_IPTABLES_INTERVAL_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NsIpTablesThread(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %2
  store i32 1, i32* %11, align 4
  br label %84

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %6, align 8
  %26 = call %struct.TYPE_8__* (...) @NewBuf()
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %8, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @WriteBuf(%struct.TYPE_8__* %27, i32 %30, i32 6)
  %32 = trunc i64 %14 to i32
  %33 = call i32 @GetExeName(i8* %16, i32 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = call i32 @WriteBufStr(%struct.TYPE_8__* %34, i8* %16)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @StartAddIpTablesEntryForNativeStack(i32 %38, i32 %41)
  store i32* %42, i32** %5, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = call i32 @FreeBuf(%struct.TYPE_8__* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %23
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @NoticeThreadInit(i32* %48)
  store i32 1, i32* %11, align 4
  br label %84

50:                                               ; preds = %23
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @NoticeThreadInit(i32* %53)
  br label %55

55:                                               ; preds = %67, %50
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %81

62:                                               ; preds = %56
  %63 = load i32*, i32** %5, align 8
  %64 = call i64 @MaintainAddIpTablesEntryForNativeStack(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %66, %62
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* @NS_CHECK_IPTABLES_INTERVAL_INIT, align 4
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %70, %71
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @NS_CHECK_IPTABLES_INTERVAL_MAX, align 4
  %75 = call i32 @MIN(i32 %73, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @Wait(i32 %78, i32 %79)
  br label %55

81:                                               ; preds = %61
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @EndAddIpTablesEntryForNativeStack(i32* %82)
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %81, %47, %22
  %85 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %11, align 4
  switch i32 %86, label %88 [
    i32 0, label %87
    i32 1, label %87
  ]

87:                                               ; preds = %84, %84
  ret void

88:                                               ; preds = %84
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_8__* @NewBuf(...) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @GetExeName(i8*, i32) #2

declare dso_local i32 @WriteBufStr(%struct.TYPE_8__*, i8*) #2

declare dso_local i32* @StartAddIpTablesEntryForNativeStack(i32, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_8__*) #2

declare dso_local i32 @NoticeThreadInit(i32*) #2

declare dso_local i64 @MaintainAddIpTablesEntryForNativeStack(i32*) #2

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @Wait(i32, i32) #2

declare dso_local i32 @EndAddIpTablesEntryForNativeStack(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
