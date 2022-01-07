; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_qflush_sc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_qflush_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.ifclassq }
%struct.ifclassq = type { i32 }

@MBUF_SC_UNSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @if_qflush_sc(%struct.ifnet* %0, i32 %1, i64 %2, i64* %3, i64* %4, i32 %5) #0 {
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ifclassq*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  store %struct.ifclassq* %19, %struct.ifclassq** %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MBUF_SC_UNSPEC, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @MBUF_VALID_SC(i32 %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %23, %6
  %28 = phi i1 [ true, %6 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @VERIFY(i32 %29)
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @VERIFY(i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load %struct.ifclassq*, %struct.ifclassq** %13, align 8
  %39 = call i32 @IFCQ_LOCK(%struct.ifclassq* %38)
  br label %40

40:                                               ; preds = %37, %27
  %41 = load %struct.ifclassq*, %struct.ifclassq** %13, align 8
  %42 = call i64 @IFCQ_IS_ENABLED(%struct.ifclassq* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load %struct.ifclassq*, %struct.ifclassq** %13, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* %15, align 8
  %50 = call i32 @IFCQ_PURGE_SC(%struct.ifclassq* %45, i32 %46, i64 %47, i64 %48, i64 %49)
  br label %51

51:                                               ; preds = %44, %40
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load %struct.ifclassq*, %struct.ifclassq** %13, align 8
  %56 = call i32 @IFCQ_UNLOCK(%struct.ifclassq* %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i64*, i64** %10, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* %16, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i64*, i64** %10, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i64*, i64** %11, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i64, i64* %15, align 8
  %70 = load i64, i64* %17, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i64*, i64** %11, align 8
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %68, %65
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @MBUF_VALID_SC(i32) #1

declare dso_local i32 @IFCQ_LOCK(%struct.ifclassq*) #1

declare dso_local i64 @IFCQ_IS_ENABLED(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_PURGE_SC(%struct.ifclassq*, i32, i64, i64, i64) #1

declare dso_local i32 @IFCQ_UNLOCK(%struct.ifclassq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
