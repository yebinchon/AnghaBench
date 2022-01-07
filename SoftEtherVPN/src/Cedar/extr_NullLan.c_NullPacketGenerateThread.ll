; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NullLan.c_NullPacketGenerateThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NullLan.c_NullPacketGenerateThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"00-AC-7A-EF-83-FD\00", align 1
@null_lan_broadcast_address = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NullPacketGenerateThread(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [6 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %5, align 8
  %14 = call i64 (...) @Tick64()
  %15 = add nsw i64 %14, 60000
  store i64 %15, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %2
  br label %80

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22, %35
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (...) @Rand32()
  %28 = srem i32 %27, 1500
  %29 = call i32 @Wait(i32 %26, i32 %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %80

35:                                               ; preds = %23
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @LockQueue(i32 %38)
  %40 = call i32 (...) @Rand32()
  %41 = srem i32 %40, 1500
  %42 = add nsw i32 %41, 14
  store i32 %42, i32* %10, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @NullGenerateMacAddress(i32 %45, i32 %48, i32 %49)
  %51 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %52 = call i32 @StrToMac(i32* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %10, align 4
  %54 = call i32* @Malloc(i32 %53)
  store i32* %54, i32** %8, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* @null_lan_broadcast_address, align 4
  %57 = call i32 @Copy(i32* %55, i32 %56, i32 6)
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 6
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @Copy(i32* %59, i32 %62, i32 6)
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32* @NewBlock(i32* %64, i32 %65, i32 0)
  store i32* %66, i32** %9, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @InsertQueue(i32 %69, i32* %70)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @UnlockQueue(i32 %74)
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @Cancel(i32 %78)
  br label %23

80:                                               ; preds = %21, %34
  ret void
}

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @Wait(i32, i32) #1

declare dso_local i32 @Rand32(...) #1

declare dso_local i32 @LockQueue(i32) #1

declare dso_local i32 @NullGenerateMacAddress(i32, i32, i32) #1

declare dso_local i32 @StrToMac(i32*, i8*) #1

declare dso_local i32* @Malloc(i32) #1

declare dso_local i32 @Copy(i32*, i32, i32) #1

declare dso_local i32* @NewBlock(i32*, i32, i32) #1

declare dso_local i32 @InsertQueue(i32, i32*) #1

declare dso_local i32 @UnlockQueue(i32) #1

declare dso_local i32 @Cancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
