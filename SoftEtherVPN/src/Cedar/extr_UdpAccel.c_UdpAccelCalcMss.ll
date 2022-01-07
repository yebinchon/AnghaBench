; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_UdpAccel.c_UdpAccelCalcMss.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_UdpAccel.c_UdpAccelCalcMss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@MTU_FOR_PPPOE = common dso_local global i32 0, align 4
@UDP_ACCELERATION_PACKET_IV_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UdpAccelCalcMss(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = icmp eq %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

8:                                                ; preds = %1
  %9 = load i32, i32* @MTU_FOR_PPPOE, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %15, 40
  store i32 %16, i32* %4, align 4
  br label %20

17:                                               ; preds = %8
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 %18, 20
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 8
  store i32 %22, i32* %4, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i64, i64* @UDP_ACCELERATION_PACKET_IV_SIZE, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %27, %20
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 %47, 4
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = sub i64 %51, 4
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %33
  %59 = load i64, i64* @UDP_ACCELERATION_PACKET_IV_SIZE, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %58, %33
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %65, 14
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = sub nsw i32 %67, 20
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = sub nsw i32 %69, 20
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %64, %7
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
