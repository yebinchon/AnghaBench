; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo6/extr_NDIS6.c_NeoNdisOnOpen.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo6/extr_NDIS6.c_NeoNdisOnOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32*, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@ctx = common dso_local global %struct.TYPE_2__* null, align 8
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@NDIS_NEO_EVENT_NAME = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @NeoNdisOnOpen(i32* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @MAX_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %14 = icmp eq %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i8*, i8** @FALSE, align 8
  store i8* %16, i8** %3, align 8
  store i32 1, i32* %8, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i8*, i8** @FALSE, align 8
  store i8* %23, i8** %3, align 8
  store i32 1, i32* %8, align 4
  br label %49

24:                                               ; preds = %17
  %25 = load i8*, i8** @TRUE, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @NDIS_NEO_EVENT_NAME, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @sprintf(i8* %12, i8* %28, i32 %31)
  %33 = call i32* @NeoNewEvent(i8* %12)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %24
  %41 = load i8*, i8** @FALSE, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @FALSE, align 8
  store i8* %44, i8** %3, align 8
  store i32 1, i32* %8, align 4
  br label %49

45:                                               ; preds = %24
  %46 = load i8*, i8** @TRUE, align 8
  %47 = call i32 @NeoSetConnectState(i8* %46)
  %48 = load i8*, i8** @TRUE, align 8
  store i8* %48, i8** %3, align 8
  store i32 1, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %40, %22, %15
  %50 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i8*, i8** %3, align 8
  ret i8* %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32* @NeoNewEvent(i8*) #2

declare dso_local i32 @NeoSetConnectState(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
