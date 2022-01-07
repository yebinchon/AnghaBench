; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IPsec.c_FreeIPsecServer.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IPsec.c_FreeIPsecServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeIPsecServer(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = icmp eq %struct.TYPE_7__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %87

9:                                                ; preds = %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @StopL2TPServer(i32 %14, i32 0)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @StopIKEServer(i32 %18)
  %20 = call i32 @Zero(i32* %4, i32 4)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = call i32 @IPsecServerSetServices(%struct.TYPE_7__* %21, i32* %4)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @FreeUdpListener(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ReleaseCedar(i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @FreeL2TPServer(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @FreeIKEServer(i32 %37)
  store i64 0, i64* %3, align 8
  br label %39

39:                                               ; preds = %54, %9
  %40 = load i64, i64* %3, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @LIST_NUM(i32 %43)
  %45 = icmp slt i64 %40, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %3, align 8
  %51 = call %struct.TYPE_7__* @LIST_DATA(i32 %49, i64 %50)
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %5, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = call i32 @Free(%struct.TYPE_7__* %52)
  br label %54

54:                                               ; preds = %46
  %55 = load i64, i64* %3, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %3, align 8
  br label %39

57:                                               ; preds = %39
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ReleaseList(i32 %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @Set(i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @INFINITE, align 4
  %72 = call i32 @WaitThread(i32 %70, i32 %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ReleaseThread(i32 %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ReleaseEvent(i32 %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @DeleteLock(i32 %83)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %86 = call i32 @Free(%struct.TYPE_7__* %85)
  br label %87

87:                                               ; preds = %57, %8
  ret void
}

declare dso_local i32 @StopL2TPServer(i32, i32) #1

declare dso_local i32 @StopIKEServer(i32) #1

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local i32 @IPsecServerSetServices(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @FreeUdpListener(i32) #1

declare dso_local i32 @ReleaseCedar(i32) #1

declare dso_local i32 @FreeL2TPServer(i32) #1

declare dso_local i32 @FreeIKEServer(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_7__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @Free(%struct.TYPE_7__*) #1

declare dso_local i32 @ReleaseList(i32) #1

declare dso_local i32 @Set(i32) #1

declare dso_local i32 @WaitThread(i32, i32) #1

declare dso_local i32 @ReleaseThread(i32) #1

declare dso_local i32 @ReleaseEvent(i32) #1

declare dso_local i32 @DeleteLock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
