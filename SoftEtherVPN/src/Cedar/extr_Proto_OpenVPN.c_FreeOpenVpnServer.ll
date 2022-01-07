; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_FreeOpenVpnServer.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_FreeOpenVpnServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"LO_STOP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeOpenVpnServer(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = icmp eq %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %91

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = call i32 @OvsLog(%struct.TYPE_5__* %11, i32* null, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %29, %10
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @LIST_NUM(i32 %17)
  %19 = icmp slt i64 %14, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %3, align 8
  %25 = call i8* @LIST_DATA(i32 %23, i64 %24)
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %4, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @OvsFreeSession(i32* %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i64, i64* %3, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %13

32:                                               ; preds = %13
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ReleaseList(i32 %35)
  store i64 0, i64* %3, align 8
  br label %37

37:                                               ; preds = %53, %32
  %38 = load i64, i64* %3, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @LIST_NUM(i32 %41)
  %43 = icmp slt i64 %38, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %3, align 8
  %49 = call i8* @LIST_DATA(i32 %47, i64 %48)
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** %5, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @FreeUdpPacket(i32* %51)
  br label %53

53:                                               ; preds = %44
  %54 = load i64, i64* %3, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %3, align 8
  br label %37

56:                                               ; preds = %37
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ReleaseList(i32 %59)
  store i64 0, i64* %3, align 8
  br label %61

61:                                               ; preds = %77, %56
  %62 = load i64, i64* %3, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @LIST_NUM(i32 %65)
  %67 = icmp slt i64 %62, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %61
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %3, align 8
  %73 = call i8* @LIST_DATA(i32 %71, i64 %72)
  %74 = bitcast i8* %73 to i32*
  store i32* %74, i32** %6, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @FreeUdpPacket(i32* %75)
  br label %77

77:                                               ; preds = %68
  %78 = load i64, i64* %3, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %3, align 8
  br label %61

80:                                               ; preds = %61
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ReleaseList(i32 %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @DhFree(i32 %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = call i32 @Free(%struct.TYPE_5__* %89)
  br label %91

91:                                               ; preds = %80, %9
  ret void
}

declare dso_local i32 @OvsLog(%struct.TYPE_5__*, i32*, i32*, i8*) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i8* @LIST_DATA(i32, i64) #1

declare dso_local i32 @OvsFreeSession(i32*) #1

declare dso_local i32 @ReleaseList(i32) #1

declare dso_local i32 @FreeUdpPacket(i32*) #1

declare dso_local i32 @DhFree(i32) #1

declare dso_local i32 @Free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
